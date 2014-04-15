# Encoding: utf-8
ActiveAdmin.register Tab do
  menu :priority => 0  
  config.batch_actions = false
  config.sort_order = 'position_asc'

  sortable
  
  index do
    sortable_handle_column
    column :position, :sortable => :position
    column :content
    column :name
    default_actions
  end

  form partial: 'form'
end
  
