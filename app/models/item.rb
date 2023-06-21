class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item_category
  belongs_to :item_prefecture
  belongs_to :item_sales_status
  belongs_to :item_scheduled_delivery
  belongs_to :item_shipping_fee_status
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :item_name, presence: true
  validates :item_info, presence: true
  validates :item_price, presence: true,
                         format: { with: /\A((3\d{2})|[4-9]\d{2}|[1-9]\d{3,6}|10000000)\z/, message: 'is out of setting range' }
  validates :item_price, format: { with: /\A\d+\z/, message: 'is out of setting range' }
  validates :item_category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :item_sales_status_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :item_shipping_fee_status_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :item_prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :item_scheduled_delivery_id, numericality: { other_than: 1, message: "can't be blank" }
end
