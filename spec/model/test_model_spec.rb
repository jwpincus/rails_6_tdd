require 'rails_helper'

RSpec.describe TestModel, type: :model do
  it "A valid TestModel has a title and text" do
    expect(TestModel.new(title: "Title", text: "text")).to be_valid
  end
end
