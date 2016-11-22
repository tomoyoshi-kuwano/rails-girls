class Shogi < ApplicationRecord
  has_many :comments
  mount_uploader :Picture, PictureUploader
end
