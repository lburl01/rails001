require 'rails_helper'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])


RSpec.feature "User can" do

  describe "sign up" do

    it 'successfully signs up with a name and password' do
      user = create(:user)

      visit '/'
      click_link 'Sign Up'
      expect(current_path).to eq('/signup')
      fill_in("First Name", :with => user.first_name)
      fill_in("Last Name", :with => user.last_name)
      fill_in("Email Address", :with => user.email)
      fill_in("Password", :with => user.password)
      click_button('Sign Up')

      expect(current_path).to eq('/users/home')
      expect(page).to have_content("Welcome, #{first_name}!")
    end

  end
end
