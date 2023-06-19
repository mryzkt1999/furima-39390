class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item_category, item_prefecture, item_sales_status, item_scheduled_delivery, item_shipping_fee_status
 
  validates :item_name, :item_info, item_price, presence: true
  validates :item_category_id, item_sales_status_id, item_shipping_fee_status_id, item_prefecture_id, item_scheduled_delivery_id, numericality: { other_than: 1, message: "can't be blank"} 

end
