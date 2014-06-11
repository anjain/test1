class Record < ActiveRecord::Base
	validates(:name, presence: true, length: {maximum: 50})
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX},  uniqueness: { case_sensitive: false }
	validates(:mathno, presence: true, :numericality => {:only_integer => true, :less_than_or_equal_to => 100 })
	validates(:mathno, presence: true, :numericality => {:only_integer => true, :less_than_or_equal_to => 100})
	validates(:mathno, presence: true, :numericality => {:only_integer => true, :less_than_or_equal_to => 100})
end
