class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :carry_apparel

  def carry_apparel
    errors.add(:womens_apparel, "A store has to carry at least one apparel") if !womens_apparel && !mens_apparel
  end

end
