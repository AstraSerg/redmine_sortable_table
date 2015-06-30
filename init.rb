#

Redmine::Plugin.register :sortable_table do
  name 'Sortable table plugin'
  author 'Alexander Golovko'
  description ''
  version '0.99'
  #url 'http://www.redminecrm.com'
  author_url 'mailto:alexandro@ankalagon.ru' if respond_to? :author_url
end


Redmine::WikiFormatting::Macros.register do
  desc "Macro for add javascript and css files for table sort work"
  macro :sortable_table do |obj, args|
    content_for :header_tags do
	javascript_include_tag( "tablesort.js", :plugin => 'sortable_table') + 
        stylesheet_link_tag( :default, :plugin => 'sortable_table')
    end
    ""
  end
end

