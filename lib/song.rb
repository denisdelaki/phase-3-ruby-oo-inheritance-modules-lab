require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   self.class.all << self
  # end
def self.find_by_name(name)
  @@songs.detect{|a| a.name==name}
end
  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

end
