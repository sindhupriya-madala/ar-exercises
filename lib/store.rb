class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 } 
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :men_or_women_apparel

    def men_or_women_apparel
        unless (mens_apparel == true || womens_apparel == true)
            errors.add(:mens_apparel, "atleast one in men_appreal or women_appreal should be present")
            errors.add(:womens_apparel, "atleast one in men_appreal or women_appreal should be present")
        end
    end
end
