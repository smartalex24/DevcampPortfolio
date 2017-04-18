module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://placeholdit.imgix.net/~text?txtsize=33&txt=#{height}×#{width}&w=350&h=150"
  end
end
