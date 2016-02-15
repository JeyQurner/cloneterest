class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :description

	validates :image, presence: true
	validates :description, presence: true
	validates_attachment_content_type :image, content_type: /\Aimage/
end