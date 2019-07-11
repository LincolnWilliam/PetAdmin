class Scheduled < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { finalizada: 0, cancelada: 1 }
  validates :client, presence: true

  belongs_to :client
  belongs_to :service
  belongs_to :discount

  before_save :set_total
 
  def fae_display_field
    id
  end
 
  def self.for_fae_index
    order(:id)
  end

  

end  
  
