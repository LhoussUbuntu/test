class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  has_many :factures
  after_create :assign_default_role

  def assign_default_role
    if self.email == 'admin@gmail.com'
      self.add_role(:admin)
    else
      self.add_role(:utilisateur)
    end
  end
end
