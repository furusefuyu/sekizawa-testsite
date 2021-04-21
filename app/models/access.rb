class Access < ApplicationRecord
    validates :className, {presence:true}
    validates :title, {presence:true}
    validates :address, {presence:true}
end
