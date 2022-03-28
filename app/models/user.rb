class User < ApplicationRecord
    validates :username, presence: { message: "ユーザーIDを入力してください" }
    validates :password, presence: { message: "パスワードを入力してください" }
    has_secure_password
end
