require 'rails_helper'
describe 'The test object' do
  scenario 'can be created' do
    visit new_test_model_path
    fill_in("test_model_title", with: "Test")
    fill_in("test_model_text", with: "Text test")
    click_on('Create Test model')
    test_model = TestModel.first
    expect(test_model.title). to eq('Test')
    expect(test_model.text). to eq('Text test')
  end
  scenario 'can be viewed' do
    model = create(:test_model)
    expect(TestModel.first.title).to eq(model.title)
    expect(TestModel.first.text).to eq(model.text)
  end
end
