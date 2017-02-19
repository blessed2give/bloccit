require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "The Question", body: "This is the body.", resolved: false) }

  describe "attributes" do
    it "has a title and body" do
      expect(question).to have_attributes(title: "The Question", body: "This is the body.")
    end
  end
end
