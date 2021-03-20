# frozen_string_literal: true

FactoryBot.define do
  factory :rent do
    user_id { nil }
    book_id { nil }
    rent_at { DateTime.now }
    return_at { DateTime.now }
    must_return_at { DateTime.now }
  end
end
