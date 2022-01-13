class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :desc, :price, :status

  belongs_to :seller
  has_many :categories 
  
  def price # to format the price in .00 format 
    "$#{'%.2f' % self.object.price}"
  end

  def status 
    # if sold if sold = true 
    # buy now if sold = false 

    if self.object.sold  
      return "sold"
    else 
      return "Buy Now"
    end
  end
end
