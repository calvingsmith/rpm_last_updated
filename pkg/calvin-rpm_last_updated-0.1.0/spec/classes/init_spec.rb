require 'spec_helper'
describe 'rpm_last_updated' do

  context 'with defaults for all parameters' do
    it { should contain_class('rpm_last_updated') }
  end
end
