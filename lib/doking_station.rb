require_relative 'bike'
class DokingStation

attr_reader :bike

 def bike_release
   fail 'no bikes available' unless @bike
   @bike
 end

 def dock bike
  @bike = bike
 end

end
