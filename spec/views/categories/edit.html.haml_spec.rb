require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :icon => "MyString",
      :name => "MyString",
      :ctype => false
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "inputs#category_icon[name=?]", "category[icon]"

      assert_select "inputs#category_name[name=?]", "category[name]"

      assert_select "inputs#category_ctype[name=?]", "category[ctype]"
    end
  end
end
