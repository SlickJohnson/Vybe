require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      user = User.new(name: "Willie", email: "willie@test.com")
      expect(user).to be_valid
    end
  
    it "is invalid without a name" do
      bad_user = User.new(name: nil, email: "noname@mail.com")
      expect(bad_user).to_not be_valid
    end
  
    it "is invalid without an email" do
      bad_user = User.new(name: "Nomail", email: nil)
      expect(bad_user).to_not be_valid
    end
  end
end
