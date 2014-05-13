require 'spec_helper'

describe HomeController do
  describe 'GET #index' do
    it { expect(response).to be_success }
  end
end
