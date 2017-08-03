require 'rails_helper'

RSpec.describe Lowfive::Devise::Helpers::RequestSpecHelper, type: :request do
  let(:user) { FactoryGirl.create(:user) }

  before do
    log_in(user)
  end

  describe '#index' do
    context 'logged in' do
      it 'renders index home page' do
        get root_path
        expect(response.body).to include('Home Page')
      end
    end

    context 'logged out' do
      it 'redirects to login page' do
        log_out(user)
        get root_path
        follow_redirect!
        expect(response.body).to include('Log in')
      end
    end
  end
end
