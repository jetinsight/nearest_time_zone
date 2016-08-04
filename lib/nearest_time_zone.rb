require "csv"
require "kdtree"

require "require_all"
require_rel "./nearest_time_zone"

module NearestTimeZone
  def self.to(latitude, longitude)
    nearest_city = City.nearest(latitude, longitude)
    nearest_city.time_zone.name unless nearest_city.nil?
  end

  def self.dump
    Dump.dump
    puts "dumped!"
  end
end

# load the kdtree so that everything is fast
NearestTimeZone::City.kdtree
