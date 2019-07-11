class Newscheduled < ApplicationRecord
  include Fae::BaseModelConcern
 
  belongs_to :discount
  belongs_to :client

  def fae_display_field
    id
  end
 
  def self.for_fae_index
    order(:id)
  end

end
