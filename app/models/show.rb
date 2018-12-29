class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :networks

  def build_network(letters)
    network_data = Network.new(call_letters: letters)
    self.network = network_data
  end

  def network=(network)
    @network = network
  end

  def network
    @network
  end

end
