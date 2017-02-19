require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "The Question", body:"This is the body.", resolved: false) }
  let(:answer) {Answer.create!(body: "This is the answer", Question: question)}

  describe "attributes" do
    it "has body attribute" do
      expect(answer).to have_attributes(body: "This is the answer")
    end
  end
end
