require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe :validations do
    it 'is valid with a commentary' do
      project = Project.new(title: 'Test Project')
      comment = Comment.new(commentary: "Good project!", commentable: project)
      expect(project).to be_valid
    end

    it 'is invalid without a commentary' do
      project = Project.new(title: 'Test Project')
      comment = Comment.new(commentary: nil, commentable: project)
      expect(comment).not_to be_valid
    end
  end
end
