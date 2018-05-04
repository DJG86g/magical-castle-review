require 'rails_helper'

describe "#superadmin_role?" do
  it "is not an admin if the role is not superadmin_role" do
    user = User.create!(username: "Kpilk", first_name: "Karl", last_name: "Pilkington", email: "karl.pilkington@xfm.co.uk", date_of_birth: Date.new(9-23-1972), password: "password4", user_role: true, superadmin_role: false)
    expect(user.superadmin_role).to eq(false)
  end

  it "is an admin if the role is superadmin_role" do
     user = User.create!(username: "diogodofmetal", first_name: "Ronnie James", last_name: "Dio", email: "rdio@metal.com", date_of_birth: Date.new(07-10-1942), password: "password!", superadmin_role: true)
     expect(user.superadmin_role).to eq(true)
   end
 end
