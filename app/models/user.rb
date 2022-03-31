class User < ApplicationRecord
    validates_presence_of :username, message: "ユーザーIDを入力してください"
    validates_presence_of :password, message: "パスワードを入力してください"
    has_secure_password

    has_many :photos
    has_one :gallery
end
