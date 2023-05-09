class User < ApplicationRecord
  has_many :apartements
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
