class Tag < ApplicationRecord
  has_many :JobTags
  has_many :jobs, through: :JobTags
end
