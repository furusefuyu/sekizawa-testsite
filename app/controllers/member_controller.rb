class MemberController < ApplicationController
    def memberPage
        @currentMasterMemberContentList = Member.where(classification: "master", status: "current").order(name_en: "ASC")
        @currentBachelorMemberContentList = Member.where(classification: "bachelor", status: "current").order(name_en: "ASC")
        
        previousGraduateYearList = Member.where(classification: "bachelor", status: "previous").order(graduateYear: "DESC", name_en: "ASC").pluck(:graduateYear).uniq
        
        
        @graduateStudentsContentList = []
        previousGraduateYearList.each do |previousGraduateYear|
            previousMasterMemberList = Member.where(classification: "master", status: "previous", graduateYear: previousGraduateYear).order(graduateYear: "DESC")
            previousBachelorMemberList = Member.where(classification: "bachelor", status: "previous", graduateYear: previousGraduateYear).order(graduateYear: "DESC")
            @graduateStudentsContentList.push(
                {title:previousGraduateYear, 
                masterStudents: previousMasterMemberList.pluck(:name_jp , :name_en),
                bachelorStudents: previousBachelorMemberList.pluck(:name_jp, :name_en)
            })
        end
    end

end
