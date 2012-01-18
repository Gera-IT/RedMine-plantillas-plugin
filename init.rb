require 'redmine'
require 'dispatcher'

Dispatcher.to_prepare :redmine_gsc_plantillas do
  require_dependency 'wiki_controller'
  WikiController.send(:include, WikiControllerPatch)
  require_dependency 'projects_helper'
  ProjectsHelper.send(:include, ProjectsHelperPatch)
  require_dependency 'projects_controller'
  ProjectsController.send(:include, ProjectsControllerPatch)
end

Redmine::Plugin.register :redmine_gsc_plantillas do
  name 'Redmine Gsc Plantillas plugin'
  author 'Marta González de Chaves Aguilera'
  description 'This is a plugin for Redmine. Show a template when you add a new page'
  version '0.0.2'
  url 'http://www.gsc.es'
  author_url 'http://www.gsc.es'
  project_module :templates do
  	permission :view_templates, :templates => :find_project
	permission :create_templates, :templates => [:new, :find_project]
	permission :delete_templates, :templates => [:destroy, :find_project]
	permission :edit_templates, :templates => [:edit, :find_project]
  end
end
