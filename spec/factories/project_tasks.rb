# frozen_string_literal: true

FactoryBot.define do
  factory :project_task, class: 'ProjectTask' do
    title { Faker::Lorem.sentence(word_count: 1) }
    body { Faker::Lorem.sentence(word_count: 10) }

    association :project
  end
end
