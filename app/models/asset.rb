class Asset < ActiveRecord::Base
  mount_uploader :csv, CsvUploader
end
