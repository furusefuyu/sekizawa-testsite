class Link < ApplicationRecord
    validates :title, {presence:true}
    validates :contents, {presence:true}
    serialize :contents
end
