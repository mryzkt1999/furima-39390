FactoryBot.define do
  factory :item do
    image { Faker::Lorem.sentence }
    item_name { Faker::Name.name }
    item_info { Faker::Lorem.sentence }
    item_category_id { 2 }
    item_sales_status_id { 2 }
    item_shipping_fee_status_id { 2 }
    item_prefecture_id { 2 }
    item_scheduled_delivery_id { 2 }
    item_price { '300' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
