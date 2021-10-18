class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:basic, :verified, :admin]

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  # validates :username, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
  # validates :password, length: { in: 6..20 }, on: :create
  # validates :username, uniqueness: { case_sensitive: false }, presence: true, allow_blank: false, format: { with: /\A[a-zA-Z0-9]+\z/ }
  # validates :email, uniqueness: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'requires a valid email format'}

  def generate_jwt
    JWT.encode({id: id, exp: 60.days.from_now.to_i}, Rails.application.secrets.secret_key_base)
  end

end
