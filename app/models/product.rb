class Product < ApplicationRecord
belongs_to :user

    validates :title, presence: true, uniqueness: true

    validates :price,
            numericality:
              { greater_than: 0 }

    validates :description, presence: true, length: { minimum: 10 }
    has_many :reviews, dependent: :destroy

    before_validation 
    :set_default_price

    before_save
    :capitalize_title

    private

    def set_default_price
        self.price ||= 1
    end

    def capitalize_title
        self.title.capitalize!
    end

end
