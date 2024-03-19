FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user_#{n}@example.com"} 
    #↑これが呼び出されるたびに、nの部分に数字が一つずつ増えて入るため、一意性が保たれる
    password {'password'}
    password_confirmation {'password'}
  end
end
