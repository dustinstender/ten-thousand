class Post < ApplicationRecord
  SKILL = %w[HTML CSS Javascript React Ruby Rails]

  validates :skill, inclusion: { in: SKILL, message: 'Please choose proper skill to ensure data is correct.' }
  validates :hours, presence: true
end
