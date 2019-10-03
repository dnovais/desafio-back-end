module ImportFileServices
  class ParserAndImportFileService < ApplicationService
    def initialize(file)
      @file = file
    end

    def call
      import_file
    end

    private

    def import_file
      return raise "file does not exist" if @file.blank?
      file = @file.read
      ActiveRecord::Base.transaction do
        file.each_line do |line|
          parser_and_create(line)
        end
      end
    end

    def parser_and_create(line)
      company_parser = {}
      company_parser[:name] = line.strip[62..80].strip
      company_parser[:owner_name] = line.strip[48..61].strip

      company = Company.where(name: company_parser[:name], owner_name: company_parser[:owner_name])
                       .first_or_create(company_parser)

      transaction_parser = {}
      transaction_parser[:transaction_type_id] = line.strip[0].to_i
      transaction_parser[:occurrence_at] = parser_occurrence_at(line)
      transaction_parser[:value] = line.strip[9..18].to_i / 100
      transaction_parser[:card_number] = line.strip[30..41]
      transaction_parser[:cpf] = line.strip[19..29]
      transaction_parser[:transaction_type_id] = line.strip[0].to_i

      company.transactions.create(transaction_parser)
    end

    def parser_occurrence_at(line)
      date = line.strip[1..8]
      hour = line.strip[42..47]
      timezone = "-0300"

      occurrence_at = date + hour + timezone
      DateTime.parse(occurrence_at)
    end
  end
end