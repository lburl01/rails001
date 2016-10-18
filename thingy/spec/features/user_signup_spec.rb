require 'rails_helper'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])


RSpec.feature "User can" do

  describe " sign up" do

    it 'successfully signs up with a name and password' do
      first_name = "Miles"
      last_name = "Davis"
      email = "example@example.com"
      password = "likesjazz"

      visit '/'
      click_link 'Sign Up'
      expect(current_path).to eq('/signup')
      fill_in("first name", :with => first_name)
      fill_in("last name", :with => last_name)
      fill_in("email address", :with => email)
      fill_in("password", :with => password)
      click_button('Sign Up')

      expect(current_path).to eq('/users/home')
      expect(page).to have_content("Welcome, #{first_name}!")
    end

  end
end
