class Comment < ApplicationRecord

    validates :contant, presence: true
    belongs_to :post , optional: true
    
end
