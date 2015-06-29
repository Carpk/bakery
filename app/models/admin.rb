class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # attr_accessor :login
  validates :username, presence: true, uniqueness: true, length:{ maximum: 24 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#   def self.find_for_database_authentication(warden_conditions)
#     conditions = warden_conditions.dup
#     if login = conditions.delete(:login)
#       where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
#     else
#       where(conditions.to_hash).first
#     end
#   end

# private

#   def set_admin
#     @admin = Admin.find(params[:id])
#   end

#   def admin_params
#     params.require(:admin).permit(:username, :email, :password, :password_confirmation, :remember_me)
#   end
end
