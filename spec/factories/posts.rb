FactoryBot.define do
  factory :post do
    title     {Faker::Lorem.sentence}
    memo      {"イタリアに行きたい"}
    category  {"旅行"}
    deadline  {"28歳になるまでに"}

    association :user
    association :room

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/メロンパンの.jpeg'), filename: 'メロンパンのjpeg')
    end
  end
end
