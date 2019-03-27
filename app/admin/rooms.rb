ActiveAdmin.register Room do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :hotel_id, :count_of_room, :number_of_room, {photos: []}

form do |f|
	f.inputs 'Room' do	 
	 f.input :hotel_id, :as => :select, :collection => Hotel.all.map{|u| ["#{u.name}", u.id]}   
	    f.input :count_of_room
	    f.input :number_of_room
	    f.input :photos, as: :file, input_html: { multiple: true }
	end
  f.actions
end

end

