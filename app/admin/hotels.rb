ActiveAdmin.register Hotel do
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
permit_params :name, :description, {images: []}

form do |f|
	f.inputs 'Hotel' do	    
	    f.input :name
	    f.input :description
	    f.input :images, as: :file, input_html: { multiple: true }
	end
  f.actions
end

end


