class Member < ApplicationRecord
    validates :classification, {presence:true}
    validates :classification, inclusion: {in: ["master", "bachelor"]}
    validates :status, {presence:true}
    validates :status, inclusion: {in: ["current", "previous"]}

    validates :name_jp, {presence:true}
    validates :name_en, {presence:true}
end
