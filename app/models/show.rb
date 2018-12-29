class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :networks

  def build_network(letters)
    network(letters)
  end

  def network(letters)
    Network.new(call_letters: letters)
  end

end
