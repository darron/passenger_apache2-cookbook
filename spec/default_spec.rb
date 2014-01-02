# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'passenger-apache2::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the `build-essential` recipe' do
    expect(chef_run).to include_recipe('build-essential::default')
  end

  it 'installs apt-transport-https' do
    expect(chef_run).to install_package('apt-transport-https')
  end

  it 'installs apache2-prefork-dev' do
    expect(chef_run).to install_package('apache2-prefork-dev')
  end

  it 'installs libcurl4-gnutls-dev' do
    expect(chef_run).to install_package('libcurl4-gnutls-dev')
  end

  it 'installs libapache2-mod-passenger' do
    expect(chef_run).to install_package('libapache2-mod-passenger')
  end
end
