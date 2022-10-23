require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:name)}
  end

  context 'Relations' do
    it { should have_many(:custom_fields) }
    it { should accept_nested_attributes_for(:custom_fields).allow_destroy(true) }
  end
end
