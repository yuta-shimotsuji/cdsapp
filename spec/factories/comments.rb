FactoryBot.define do
  factory :comment do
    sequence(:content) { "aaaaa" }
    association :user
    association :post
  end
end
