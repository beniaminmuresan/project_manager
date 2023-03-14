# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:instance) { FactoryBot.create(:project) }

  subject { instance }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }

  it { is_expected.to have_many(:comments) }
  it { is_expected.to have_many(:project_tasks) }
end
