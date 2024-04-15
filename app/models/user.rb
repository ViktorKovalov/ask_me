class User < ApplicationRecord
  before_save :downcase_nickname
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: 'is not valid' }
  validates :name, presence: true
  validates :nickname, presence: true, uniqueness: true
  has_secure_password

  def downcase_nickname
    nickname.downcase!
  end
end
