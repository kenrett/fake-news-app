class User < ApplicationRecord
	has_many :fakes, foreign_key: :creator_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
