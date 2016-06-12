#

Redmine::Plugin.register :redmine_sortable_table do
  name 'Sortable table plugin'
  author 'Alexander Golovko'
  description ''
  version '0.99.1'
  author_url 'mailto:alexandro@ankalagon.ru' if respond_to? :author_url
end


module RedmineSortableTable
	module Hooks
		class ViewsLayoutsHook < Redmine::Hook::ViewListener
			def view_layouts_base_html_head(context={})
				return javascript_include_tag(:sortable_table, :plugin => 'redmine_sortable_table') +
					      stylesheet_link_tag(:sortable_table, :plugin => 'redmine_sortable_table')
			end
		end
	end
end

