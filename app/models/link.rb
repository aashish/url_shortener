class Link < ActiveRecord::Base
    paginates_per 10
  after_create :generate_slug  
  def generate_slug
    begin
      self.slug = SecureRandom.hex(5)
    end while self.class.exists?(:slug => slug)  
    self.save
  end

   
  def display_slug
    (Rails.root + self.slug).to_s 
  end

   
end
