require 'flashsdk'

require 'swiz/module'
require 'swiz/generators/swiz_helper'
require 'swiz/generators/project_generator'
require 'swiz/generators/context_generator'
require 'swiz/generators/proxy_generator'
require 'swiz/generators/mediator_generator'
require 'swiz/generators/command_generator'
require 'swiz/generators/service_generator'

Sprout::Specification.new do |s|
  s.name    = Swiz::NAME
  s.version = Swiz::VERSION
  s.add_remote_file_target do |f|
    f.url = "http://downloads.swiz.org/swiz-framework-v#{Swiz::ZIP_VERSION}.zip"
    f.md5 = Swiz::ZIP_MD5
    f.archive_type = :zip
    f.add_library :swc, ['bin/']
  end
end
