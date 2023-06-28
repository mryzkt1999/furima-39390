FactoryBot.define do
  factory :order_address do
    token { 'tok_abcdefghijk00000000000000000' }
    postal_code { '123-4567' }
    item_prefecture_id { 2 }
    city { '横浜' }
    house_number { '1-1' }
    building { '横浜ハイツ' }
    phone_number { '09012345678' }
    item_id { '3' }
  end
end
