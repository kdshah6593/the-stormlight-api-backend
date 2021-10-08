class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:basic, :verified, :admin]

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :username, uniqueness: { case_sensitive: false }, presence: true, allow_blank: false, format: { with: /\A[a-zA-Z0-9]+\z/ }

  after_initialize do
    if self.new_record?
      self.role ||= :basic
    end
  end

  def generate_jwt
    JWT.encode({ id: id, exp: 60.days.from_now.to_i}, Rails.application.secrets.secret_key_base)
  end

end
