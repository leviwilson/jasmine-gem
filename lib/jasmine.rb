jasmine_files = ['base',
                 'dependencies',
                 'runner_config',
                 'config',
                 'application',
                 'server',
                 'selenium_driver',
                 'rspec_formatter',
                 'command_line_tool',
                 'page',
                 'asset_pipeline_mapper',
                 File.join('runners', 'selenium')]

jasmine_files.each do |file|
  require File.join('jasmine', file)
end

require File.join('jasmine', "railtie") if Jasmine::Dependencies.rails3?


