class User < ApplicationRecord
  has_secure_password
  has_many :blogs, dependent: :destroy
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i },
                    uniqueness: {case_sensitive: false } #uniquenessは重複を許さないバリデーション case_sensitive = 大文字小文字を区別しない
end
