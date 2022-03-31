class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :gallery
  belongs_to :user
  validates :title, presence: { message: "タイトルを入力してください" }, length: { maximum: 30 }
  validates :image, presence: { message: "画像ファイルを入力してください" }
end
