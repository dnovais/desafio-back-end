require 'rails_helper'
include ActionDispatch::TestProcess::FixtureFile
RSpec.describe TransactionsController, type: :controller do

  describe "GET #index" do
    it "render :index view" do
      get :index
      expect(response).to render_template :index  
    end
  end

  describe "POST /import_file" do
    context "upload file" do

      it "redirect to transactions index" do
        post 'import_file', params: {file: Rack::Test::UploadedFile.new('spec/fixtures/files/CNAB.txt', 'text/plain')}
        expect(response).to redirect_to transactions_path
      end
      
    end
  end
  
end
