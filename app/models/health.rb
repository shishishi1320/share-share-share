class Health < ApplicationRecord
  validates :title, :content, presence: true
end
