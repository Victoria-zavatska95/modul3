class Hotel < ApplicationRecord
	mount_uploaders :images, PhotoUploader
	serialize :images, JSON
	has_one :contact
	has_many :rooms

end
