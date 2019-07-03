# frozen_string_literal: true

class Link < ApplicationRecord
  before_create :random_link
  validates :short_link, uniqueness: true

  def random_link
    self.short_link = SecureRandom.hex(10) if short_link.empty?
  end
end
