# frozen_string_literal: true

FactoryBot.define do
  factory :comment, class: 'Comment' do
    full_name { Faker::Name.name }
    body { Faker::Lorem.sentence(word_count: 15) }

    trait :for_project do
      association :commentable, factory: :project
    end

    trait :for_task do
      association :commentable, factory: :task
    end
  end
end
