class Purchase < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  belongs_to :denomination
  
  def self.to_csv
    CSV.generate do |csv|
	  csv << column_names
	  all.each do |purchase|
	    csv << purchase.attributes.values_at(*column_names)
	  end
	end
  end

end
