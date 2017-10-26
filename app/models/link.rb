# link model
class Link < ActiveRecord::Base
  paginates_per 10
  after_create :generate_slug
  def generate_slug
    loop do
      self.slug = SecureRandom.hex(5)
      break unless self.class.exists?(slug: slug)
    end
    save
  end

  def display_slug
    (Rails.root + slug).to_s
  end
end
