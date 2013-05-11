source 'https://rubygems.org'

group :development, :test do
  gem 'rake', :require => false
  gem 'puppetlabs_spec_helper', :require => false
  gem 'puppet-lint', :require => false
  gem 'rspec-system-puppet', '~>1.0.0'
end

puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ['>= 2.7']
gem 'puppet', puppetversion, :require => false
