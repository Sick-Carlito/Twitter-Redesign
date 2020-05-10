class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :fullname, presence: true, length: { maximum: 20 }
  validates :username, presence: true, length: { maximum: 20 }

  validates_uniqueness_of :username

  has_many :posts
end
