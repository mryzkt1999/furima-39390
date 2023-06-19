FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) + '1' } 
    password_confirmation { password }
    last_name { '名字' }
    first_name { '名前' }
    kana_last_name { 'アアア' }
    kana_first_name { 'イイイ' }
    birthday { Faker::Date.birthday }
  end
end
