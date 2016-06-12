FactoryGirl.define do
  factory :user do
  	email { FFaker::Internet.email }
  	password "secrete123"
  	password_confirmation "secrete123"
  end
end
