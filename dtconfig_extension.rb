# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-dtconfig-extension"

class DtconfigExtension < Radiant::Extension
  version     RadiantDtconfigExtension::VERSION
  description RadiantDtconfigExtension::DESCRIPTION
  url         RadiantDtconfigExtension::URL

  # See your config/routes.rb file in this extension to define custom routes

  extension_config do |config| 
  end

  def activate
    # Set the types of meetings that the minutes extension should display
    MinutesExtension.meeting_types = ['Club', 'EC', 'PPM', 'Open House', 'Banquet', 'Historian', 'Social', 'Other'] unless not defined? MinutesExtension

    # Set the title of the admin interface
    Radiant::Config['admin.title'] = 'DramaTech Theat(er|re)' if Radiant::Config['admin.title'] =~ /Radiant CMS/
    Radiant::Config['admin.subtitle'] = 'Music, theater, toasters' if Radiant::Config['admin.subtitle'] =~ /Publishing for Small Teams/
  end
end
