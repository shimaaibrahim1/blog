class Post < ApplicationRecord

    validates :title, :contant, presence: true
    validates :title, length: { maximum: 50 }
    validates :title, uniqueness: true
    belongs_to :user , optional: true
    has_many :comments

end
