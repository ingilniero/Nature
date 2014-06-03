require 'spec_helper'

describe Ship do
  let(:ship) { create(:ship) }

  it 'has a code' do
    expect(ship.respond_to?(:code)).to be_true
  end

  it 'generates a code after create the ship' do
    expect(ship.code).to_not be_nil
  end
end
