class Request < ActiveRecord::Base
  if Rails.env.development?
    has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" },
    default_url: "default.jpg"
  else
    has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" },
    default_url: "default.jpg",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => ":style/:id_:filename"
  end
  #  :dropbox_options => {...}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  # Validates form fields are present
  validates :pet_name, :description, :care_instructions, presence: true
  validates_attachment_presence :image

  belongs_to :user

end
