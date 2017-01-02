require 'English'
require 'rubygems'
require 'rubygems/dependency_installer'

$stdin.close

installer = Gem::DependencyInstaller.new

begin
  installer.install 'win32-process', '~> 0.8.3' if Gem.win_platform?
rescue => e
  warn "#{$PROGRAM_NAME}: #{e}"
  warn e.backtrace
  exit 1
end

puts 'Writing dummy Rakefile'

File.open(File.join(File.dirname(__FILE__), 'Rakefile'), 'w') do |f|
  f.write('task :default' + $RS)
end

puts 'Done!'
