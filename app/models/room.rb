class Room < ApplicationRecord
mount_uploaders :photos, PhotoUploader
	serialize :phtos, JSON
belongs_to :hotel
end
