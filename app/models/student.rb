class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

     has_many :enrollments
  has_many :classrooms, :through => :enrollments

  def full_name
  	(first_name.nil? || last_name.nil?) ? "" : first_name + " " + last_name
  end    
end
