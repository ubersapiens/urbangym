class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :date_of_birth, :email, :my_diet,
    :my_workout, :gyms, :exercises, :user_exercises

  has_many :user_exercises
  has_many :exercises, :through => :user_exercises

  has_and_belongs_to_many :gyms

  attr_accessor :password
  before_save :encrypt_password



  validates_presence_of :email
  validates_uniqueness_of :email, :allow_blank => true
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4, :allow_blank => true

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
      if password.present?
          self.password_salt = BCrypt::Engine.generate_salt
          self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
  end

end
