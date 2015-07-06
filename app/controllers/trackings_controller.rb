class TrackingsController < WebsocketRails::BaseController
  def create
    # The `message` method contains the data received
    location = Location.new message
    if location.save
      send_message :create_success, location, :namespace => :locations
    else
      send_message :create_fail, location, :namespace => :locations
    end
  end
end