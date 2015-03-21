require 'rails_helper'

describe Article do
  context 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :content }
  end
end
