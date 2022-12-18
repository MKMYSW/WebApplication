class Post < ApplicationRecord
    validates :title, {presence: true, length: {maximum: 14}}
    validates :content, {presence: true, length: {maximum: 140}}
    mount_uploader :img, ImgUploader
    validates :img, {presence: true}
end
