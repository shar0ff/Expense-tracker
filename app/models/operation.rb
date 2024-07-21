class Operation < ApplicationRecord
  belongs_to :category

  paginates_per 10

  VALID_OTYPES = ["income", "expense"].freeze

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true, allow_blank: false
  validates :otype, inclusion: { in: VALID_OTYPES }
  validates :odate, presence: true
end
