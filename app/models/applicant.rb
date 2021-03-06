class Applicant < ActiveResource::Base
  self.site = "http://localhost:9292/api"
  
  has_many :lpas
  has_one :address

  schema do
    string 'title'
    string 'first_name'
    string 'middle_names'
    string 'last_name'
  end

  def initialize(*args)
    # Make sure we always have associations assigned, so that activeresource doesn't request them
    args[0] ||= {}
    args[0] = {
      :address => Address.new,
      :lpas => []
    }.merge(args[0])
    super(*args)
  end
end
