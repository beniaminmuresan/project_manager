# frozen_string_literal: true

FactoryBot.define do
  factory :project, class: 'Project' do
    title { Faker::Lorem.sentence(word_count: 1) }
    body { Faker::Lorem.sentence(word_count: 10) }
  end
end
