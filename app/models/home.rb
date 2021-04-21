class Home < ApplicationRecord
    validates :title, {presence:true}
    validates :content, {presence:true}
    validates :kind, {presence:true}

    validates :kind, inclusion: {in: ["topTopic", "topic"]}
end
