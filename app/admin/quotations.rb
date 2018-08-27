ActiveAdmin.register Quotation do
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

	permit_params :user_id, :code_quotation, :client_id, :title, :description, :state_id, :document

	index do
		column :id
		column :code_quotation
		column :title
		column :desciption
		column :state
		column :user
		column :client
		actions
	end

	filter :created_at
	filter :state

	form do |f|
		inputs 'Agregar nueva Quotation' do
			f.input :user_id,
			label: 'User',
			as: :select,
			collection: User.pluck(:email, :id)
			input :code_quotation
			input :client
			input :title
			input :description
			input :state
			input :document
		end
		actions
	end
end
