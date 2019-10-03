require 'rails_helper'

describe ImportFileServices::ParserAndImportFileService do
  subject do
    described_class.call(file)
  end

  context "Parser and create transactions with success" do
    let(:file) { Rack::Test::UploadedFile.new('spec/fixtures/files/CNAB.txt', 'text/plain') }
    it "parser and create transactions" do
      file.read
      expect{ subject }.to change{ Transaction.count }.by(file.lines.count)
    end
  end

  context "Parser and create transactions without a file" do
    let(:file) { Rack::Test::UploadedFile.new('', 'text/plain') }
    it "parser and create transactions" do
      expect { subject }.to raise_error StandardError
    end
  end
end