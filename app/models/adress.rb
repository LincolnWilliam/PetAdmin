class Adress < ApplicationRecord
  include Fae::BaseModelConcern

 
  validates :street, presence: true
  validates :city, presence: true
  

  def fae_display_field
    id
  end
 
  def self.for_fae_index
    order(:id)
  end

  belongs_to :client
end
