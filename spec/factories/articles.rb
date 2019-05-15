FactoryBot.define do
  factory :article do
    title { "MyString" }
    association :author
  end
end
