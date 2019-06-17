require 'rails_helper'

RSpec.describe "dogs/new", type: :view do
  before(:each) do
    assign(:dog, Dog.new(
      :name => "MyString",
      :breed => "MyString",
      :adopted => false
    ))
  end

  it "renders new dog form" do
    render

    assert_select "form[action=?][method=?]", dogs_path, "post" do

      assert_select "input#dog_name[name=?]", "dog[name]"

      assert_select "input#dog_breed[name=?]", "dog[breed]"

      assert_select "input#dog_adopted[name=?]", "dog[adopted]"
    end
  end
end
