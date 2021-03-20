# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    name { Faker::Name.first_name }
  end
end
