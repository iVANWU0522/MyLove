class Post < ActiveRecord::Base
  scope :of_followed_users, -> (following_users) { where user_id: following_users }
  acts_as_votable

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :user_id, presence: true
  validates :image, presence: true
  validates :caption, length: { in: 3..300 }


  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

