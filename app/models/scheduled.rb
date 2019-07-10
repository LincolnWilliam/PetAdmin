class Scheduled < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { finalizada: 0, cancelada: 1 }
  
  
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
  
  private

  def set_total
    total = 0
    self.products.each {|p| total += p.price }
    self.services.each {|s| total += s.price }
 
    if self.discount.present?
      # ou total = total - self.discount.value
      total -= self.discount.value
    end
 
    total = (total >= 0)? total : 0
    self.total = total
  end

end
