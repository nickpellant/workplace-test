class Asset < ActiveRecord::Base
  has_many :sales
  mount_uploader :csv, CsvUploader
end
