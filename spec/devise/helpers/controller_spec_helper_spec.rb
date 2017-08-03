require 'rails_helper'

RSpec.describe Lowfive::Devise::Helpers::ControllerSpecHelper, type: :controller do
  render_views

  let(:user) { FactoryGirl.create(:user) }

  before do
    @controller = PagesController.new
    log_in(user)
  end

  describe '#index' do
    context 'logged in' do
      it 'has status 200' do
        get :index
        expect(response.status).to eq(200)
      end
    end

    context 'logged out' do
      it 'redirects to login page' do
        log_out(user)
        get :index
        expect(response.status).to eq(302)
      end
    end
  end
end
