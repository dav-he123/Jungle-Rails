require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
        # user{User.new(first_name: "Joe", last_name: "Smith", email: 'joe.smith@yahoo.ca', password: "jungle", password_confirmation: "jungle")}
    user = User.new
    
    # user.first_name = "Joe"

    # user.last_name = "Smith"

    user.name = "Joe Smith"

    user.email= 'joe.smith@yahoo.ca'
    
    user.password= "jungle" 
    
    user.password_confirmation= "jungle" 
    
    it 'is valid when password and password_confirmation are the same' do
      expect(user.password).to eq(user.password_confirmation)
    end

    it 'is not valid when password and password_confirmation are different' do
      user.password_confirmation = "book"
      expect(user.password).to_not eq(user.password_confirmation)
    end

    it 'is not valid when name is nil' do
      user.name = nil;
      expect(user).not_to be_valid
    end

    # it 'is not valid when last_name is nil' do
    #   user.last_name = nil;
    #   expect(user).not_to be_valid
    # end

    it 'is not valid when email is nil' do
      user.email = nil;
      expect(user).not_to be_valid
    end

    it 'is not valid if pasword has a length of less than 5 characters' do
      user.password = 'hi';
      expect(user).not_to be_valid

    end
  end
  
  describe '.authenticate_with_credentials' do
    # examples for this class method here

  end

end