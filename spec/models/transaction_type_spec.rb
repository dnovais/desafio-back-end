require 'rails_helper'

RSpec.describe TransactionType, type: :model do
  describe "Relationships" do
    it { should have_many(:transactions) } 
  end
end
