class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :items
  validates_presence_of :name
  before_save :assign_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  

  def assign_role
   self.role = Role.find_by name: "Regular" if self.role.nil?
  end
  def admin?
   self.role.try(:name) == "Admin"
  end
  def seller?
   self.role.try(:name) == "Seller"
  end
  def regular?
   self.role.try(:name) == "Regular"
  end
end
