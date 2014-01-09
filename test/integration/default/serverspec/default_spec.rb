# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'passenger_apache2::default' do

  describe file('/etc/apache2/mods-enabled/passenger.conf') do
    it { should be_file }
  end

  describe file('/etc/apache2/mods-enabled/passenger.load') do
    it { should be_file }
  end
end
