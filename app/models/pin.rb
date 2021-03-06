class Pin < ActiveRecord::Base
  belongs_to :user

  acts_as_votable
  has_many :comments

  has_attached_file :image, :styles => { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :description,  presence: true, length: { minimum: 1 , maximum: 500 }

  validates_attachment :image, presence: true

end
