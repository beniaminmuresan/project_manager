# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:instance) { FactoryBot.create(:task) }

  subject { instance }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }

  it { is_expected.to belong_to(:project) }
  it { is_expected.to have_many(:comments) }
end
