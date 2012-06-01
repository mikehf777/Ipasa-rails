require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nombre => "Nombre",
      :apellidos => "Apellidos",
      :telefono => "Telefono",
      :celular => "Celular",
      :sexo => false,
      :email => "Email",
      :encrypted_password => "Encrypted Password",
      :salt => "Salt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Apellidos/)
    rendered.should match(/Telefono/)
    rendered.should match(/Celular/)
    rendered.should match(/false/)
    rendered.should match(/Email/)
    rendered.should match(/Encrypted Password/)
    rendered.should match(/Salt/)
  end
end
