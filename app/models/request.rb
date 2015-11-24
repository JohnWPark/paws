class Request < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # Validates form fields are present
  validates :pet_name, :description, :care_instructions, presence: true
  validates_attachment_presence :image

  belongs_to :user
end

# models looks great, like your validations. Also cool seeing all the carrier wave stuff.
