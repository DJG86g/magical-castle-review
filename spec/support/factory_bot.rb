require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    first_name 'walt'
    last_name 'disney'
    date_of_birth '1922-2-23 12:30:22'
    username 'walt55'
    password 'password'
    password_confirmation 'password'
  end

end
