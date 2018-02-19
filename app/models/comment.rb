class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :content, length: { in: 2..300 }
end
