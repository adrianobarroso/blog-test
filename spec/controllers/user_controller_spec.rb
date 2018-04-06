require 'rails_helper'

context 'UserController' do
  describe "the signin process", type: :feature do
    before :each do
      @user = FactoryBot.create(:user)
    end

    it "signs me in" do
      visit '/users/sign_in'
      within("#new_user") do
        fill_in 'Email', with: @user.email
        fill_in 'Password', with: '123123'
      end
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully'
    end
  end

end
