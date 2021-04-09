class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user, optional: true

  before_save :smart_add_url_protocol

  protected

  def smart_add_url_protocol
    unless link[/\Ahttp:\/\//] || link[/\Ahttps:\/\//]
      self.link = "http://#{link}"
    end
  end
end
