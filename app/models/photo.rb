class Photo < ApplicationRecord
	belongs_to :poster
    mount_uploader :posterimage, PosterimageUploader
end
