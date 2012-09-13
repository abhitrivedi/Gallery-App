require 'spec_helper'

describe "User Pages" do

  subject {page}

  describe "Signup Page" do
    before { visit signup_path }
    it {should have_selector('h1', text: 'Sign Up')}
    it {should have_selector('title', text: 'Sign Up')}
  end

  describe "Profile page" do
    let(:user) {FactoryGirl.create(:user)}
    before { visit user_path(user) }
    it { should have_selector('title', text: user.name) }
  end
end