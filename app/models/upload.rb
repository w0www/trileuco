class Upload < ApplicationRecord

  mount_uploader :file, FileUploader


  validates :title, presence: true
  validates :file, presence: true

end
