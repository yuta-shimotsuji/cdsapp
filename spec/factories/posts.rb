FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "#{n}駅" }
    sequence(:body) { |n| "#{n}メモ" }
    sequence(:address) { |n| "東京都目黒区祐天寺２丁目１３" }
  end
end
