class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :publications
  has_many :boards, dependent: :destroy
  has_many :publications, through: :boards
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
