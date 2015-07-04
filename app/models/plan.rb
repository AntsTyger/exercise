class Plan < ActiveRecord::Base
    belongs_to :user

	has_many :move
    
 	accepts_nested_attributes_for :moves,
  															reject_if: proc { |attributes| attributes['step'].blank? },
  															allow_destroy: true

  validates :title, :move, :image, presence: true

	has_attached_file :image, styles: { :medium => "400x400#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
