class Product < ActiveRecord::Base
  belongs_to :store
  belongs_to :user
  
  def getInfo
    begin
      source = open(self.address).read
      pattern = Regexp.new(/priceInfo.*?\$\d+.\d+/m)
      self.price = pattern.match(source).to_s.split('$')[1].to_f
      puts self.price + "hi"
      pattern = Regexp.new(/meta name="twitter:image" content=".*?"/)
      self.image_url = "http:" + pattern.match(source).to_s.split('="http:')[1][0..-2]
      self.save
      return true
    rescue
      return false
    end
  end
  
end
