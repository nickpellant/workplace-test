require 'smarter_csv'

class CSVImportService
  def self.import(asset)
    processed_sales = SmarterCSV.process("#{Rails.root}/public/#{asset.csv.url}")

    processed_sales.each do |sale|
      time = "0#{sale[:time]}".insert(2, ':')
      puts time
      sold_at = "#{sale[:date]} #{time}".to_datetime
      code, value = sale[:code], "#{sale[:value].to_i}00".to_i

      asset.sales.build(code: code, value: value, sold_at: sold_at)
    end

    asset.save
  end
end
