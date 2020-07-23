class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :organization
  has_many :kudos_given, foreign_key: "sent_by_user", class_name: "Kudo"
  has_many :kudos_received, foreign_key: "sent_to_user", class_name: "Kudo"


  def self.set_kudos_available(available)
    self.where.not(kudos_available: available).update_all(kudos_available: available)
  end

end
