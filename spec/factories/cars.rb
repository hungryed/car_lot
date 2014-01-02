FactoryGirl.define do
  factory :car do
    association :color

    year 1999
    mileage 30
    description 'Awesome car'
  end
end
