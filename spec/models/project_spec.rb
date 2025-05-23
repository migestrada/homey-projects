require 'rails_helper'

RSpec.describe Project, type: :model do
  describe :validations do
    it 'is valid with a title' do
      project = Project.new(title: 'Test Project')
      expect(project).to be_valid
    end

    it 'is invalid without a title' do
      project = Project.new(title: nil)
      expect(project).not_to be_valid
      expect(project.errors[:title]).to include("can't be blank")
    end
  end
end
