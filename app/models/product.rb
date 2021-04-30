class Product < ApplicationRecord
  has_one_attached :avatar
  acts_as_taggable_on :tags
  #attr_accessor :tag_list

  include PgSearch::Model
  pg_search_scope :search, against: [:name, :description]


  def self.to_csv
    attributes = %w{id name price tag_list description}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |product|
        csv << attributes.map{ |attr| product.send(attr) }
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      product_hash = row.to_hash
      product = find_or_create_by!(name: product_hash['name'], price: product_hash['price'], description: product_hash['description']  )
      product.tag_list << product_hash['tag_list']
      product.update(product_hash)
    end
  end
end
