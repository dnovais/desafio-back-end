require 'rails_helper'

RSpec.describe Company, type: :model do
  describe "Relationships" do
    it { should have_many(:transactions) } 
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
  end
end
