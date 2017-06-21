class User < ApplicationRecord
  acts_as_marker
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posters
  has_many :comments
  has_many :categories
end
