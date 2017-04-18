class Portfolio < ApplicationRecord
	validates_presence_of  :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults 

  def set_defaults
    self.main_image ||= "https://placeholdit.imgix.net/~text?txtsize=33&txt=600×400&w=350&h=150"
    self.thumb_image ||= "https://placeholdit.imgix.net/~text?txtsize=33&txt=350×200&w=350&h=150"
  end
end