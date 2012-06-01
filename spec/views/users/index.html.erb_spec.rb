require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :nombre => "Nombre",
        :apellidos => "Apellidos",
        :telefono => "Telefono",
        :celular => "Celular",
        :sexo => false,
        :email => "Email",
        :encrypted_password => "Encrypted Password",
        :salt => "Salt"
      ),
      stub_model(User,
        :nombre => "Nombre",
        :apellidos => "Apellidos",
        :telefono => "Telefono",
        :celular => "Celular",
        :sexo => false,
        :email => "Email",
        :encrypted_password => "Encrypted Password",
        :salt => "Salt"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apellidos".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
  end
end
