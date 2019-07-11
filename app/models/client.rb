class Client < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :campaign_clients, dependent: :destroy
  has_many :adress, dependent: :destroy
  has_many :campaigns, through: :campaign_clients
  has_many :scheduleds, dependent: :destroy 
  
  validates :phone, presence: true
  validates :email,    # validando email
    uniqueness: true,  # seja unico
    presence: true,    #presença é obrigatoria
    format: {
      with: Fae.validation_helpers.email_regex,
      message: 'You need use a valid and unique email'
  }

  def fae_display_field
    name
  end

end
