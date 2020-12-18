class Lesson < ApplicationRecord
  belongs_to :course
  validates :title, :instruction, :course, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged
end
