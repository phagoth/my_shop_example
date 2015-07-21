class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  after_initialize { puts 'initialized' }
  after_save { puts 'saved' }
  after_create { puts 'created' }
  after_update { puts 'updated' }
  after_destroy { puts 'destroyed' }
end
