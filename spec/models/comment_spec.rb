# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { instance }

  context 'comment belongs to project' do
    let(:instance) { FactoryBot.create(:comment, :for_project) }
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to belong_to(:commentable) }
  end

  context 'comment belongs to project task' do
    let(:instance) { FactoryBot.create(:comment, :for_task) }
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to belong_to(:commentable) }
  end
end
