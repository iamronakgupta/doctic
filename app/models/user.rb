class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  # validation
  validates :name, presence: true

  #Association
  has_many :patients, as: :receptionist
  has_many :patients, as: :doctor

  TYPE = ["Doctor", "Receptionist"]
end
