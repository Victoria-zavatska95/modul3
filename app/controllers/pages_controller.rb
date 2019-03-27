class PagesController < ApplicationController

def index
	@hotel = Hotel.find(1)
end

def contact
	@contact = Hotel.find(1).contact
	    respond_to do |format|
       format.js
     end
end	
def room1
	@rooms = Hotel.find(1).rooms.where(count_of_room: 1)
	    respond_to do |format|
       format.js
     end
end	
def room2
	@rooms = Hotel.find(1).rooms.where(count_of_room: 2)
	    respond_to do |format|
       format.js
     end
end	
def room3
	@rooms = Hotel.find(1).rooms.where(count_of_room: 3)
	    respond_to do |format|
       format.js
     end
end	
end
