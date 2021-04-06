class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :create_user_list

  has_many :lists
  has_many :items, through: :lists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def create_user_list
    List.create(owner: self.first_name, title: "#{self.first_name}'s list", user_id: self.id)
  end
end
