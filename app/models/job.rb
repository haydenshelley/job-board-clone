class Job < ApplicationRecord
  belongs_to :company
  has_many :JobTags
  has_many :tags, through: :JobTags
end
