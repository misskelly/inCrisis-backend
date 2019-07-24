FactoryBot.define do
  factory :location do
    name { Faker::Company.bs }
    phone { Faker::PhoneNumber.phone_number.gsub(".","") }
    street { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip { Faker::Address.zip_code }
    office_hours { Faker::Quote.yoda }
    sequence(:lat) { |n| (("#{n}".to_i * 5)) + 30 }
    sequence(:lng) { |n| (("#{n}".to_i * 5)) - 105 }
    website { 'https://www.fakewebsite.com' }
    logo { 'https://www.fakelogourl.com' }
  end
end
