require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :icon => "Icon",
      :name => "Name",
      :ctype => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
