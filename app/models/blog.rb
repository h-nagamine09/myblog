class Blog < ApplicationRecord
  belongs_to :user
  validates :title, presence :ture, lenghth: {maximum: 20}

end
