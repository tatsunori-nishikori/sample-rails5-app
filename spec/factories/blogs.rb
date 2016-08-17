FactoryGirl.define do
  factory :blog do
    name "Bob"
    title "Hello"
    content "My name is Bob"

    trait :public_post do
      published true
    end

    # 特性(クラス内のattributeを動的に変化)
    trait :private_post do
      published false
    end

    # 一時的な変数
    transient do
      age 35
    end

    # create前に処理
    # afterだとcreate後に処理される
    # 第1引数が定義したfactory
    # 第2引数がtransient等動的に定義した変数を呼んだりできる
    before(:create) do |blog, evaluator|
      blog.content += "\n" + "My age is #{evaluator.age}"
    end

  end
end
