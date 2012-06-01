require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nombre => "MyString",
      :apellidos => "MyString",
      :telefono => "MyString",
      :celular => "MyString",
      :sexo => false,
      :email => "MyString",
      :encrypted_password => "MyString",
      :salt => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_nombre", :name => "user[nombre]"
      assert_select "input#user_apellidos", :name => "user[apellidos]"
      assert_select "input#user_telefono", :name => "user[telefono]"
      assert_select "input#user_celular", :name => "user[celular]"
      assert_select "input#user_sexo", :name => "user[sexo]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_encrypted_password", :name => "user[encrypted_password]"
      assert_select "input#user_salt", :name => "user[salt]"
    end
  end
end
