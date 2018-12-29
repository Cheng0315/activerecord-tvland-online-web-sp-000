class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :networks

  def build_network(letters)
    Network.new(call_letters: letters)
  end

  def network

  end

end
