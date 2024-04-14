FactoryBot.define do
  factory :comment do
    sequence(:content) { "aaaaa" }
    assosiation :user
    assosiation :post
  end
end
