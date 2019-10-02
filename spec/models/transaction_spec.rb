require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "Relationships" do
    it { should belong_to(:transaction_type) } 
    it { should belong_to(:company) } 
  end

  describe "Validations" do
    it { validate_numericality_of(:value).is_greater_than_or_equal_to(0) }
    it { should validate_presence_of(:transaction_type_id) }
    it { should validate_presence_of(:company_id) }
    it { should validate_presence_of(:occurrence_at) }
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:card_number) }
    it { should validate_presence_of(:cpf) }
  end
  
end
