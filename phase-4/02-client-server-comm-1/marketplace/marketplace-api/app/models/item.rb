class Item < ApplicationRecord
    belongs_to :seller, class_name: "User", foreign_key: "seller_id"
    belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true
    has_many :category_items
    has_many :categories, through: :category_items

    # require price, name 
    # price needs to be a dollar amount, less than 10,000 
    # item need to be associated with a user(current_user)

    validates :name, presence: true
    validates :price, presence: true, format: {with: /\A\d+(?:\.\d{0,2})?\z/, message: "Must be dollar amount"}, numericality: { greater_than: 0, less_than: 10000}

    # to investigate validation failures:
    # item.errors.full_messages 

end
