class Blog < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "user_id"

  STATUS_VALUES= %w(draft user_only public)
  validates :title, presence :ture, lenghth: {maximum: 200}
  validates :content, :posted_at, presence: true
  validates :status, inclusion: { in: STATUS_VALUES }

end
