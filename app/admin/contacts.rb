ActiveAdmin.register Contact do
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
permit_params :hotel_id, :address, :phone, :email
form do |f|
	f.inputs 'Contact' do	    
	    f.input :hotel_id, :as => :select, :collection => Hotel.all.map{|u| ["#{u.name}", u.id]}
	    f.input :address
	    f.input :phone
	    f.input :email
	end
  f.actions
end

end
