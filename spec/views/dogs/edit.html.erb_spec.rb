require 'rails_helper'

RSpec.describe "dogs/edit", type: :view do
  before(:each) do
    @dog = assign(:dog, Dog.create!(
      :name => "MyString",
      :breed => "MyString",
      :adopted => false
    ))
  end

  it "renders the edit dog form" do
    render

    assert_select "form[action=?][method=?]", dog_path(@dog), "post" do

      assert_select "input#dog_name[name=?]", "dog[name]"

      assert_select "input#dog_breed[name=?]", "dog[breed]"

      assert_select "input#dog_adopted[name=?]", "dog[adopted]"
    end
  end
end
