require 'spec_helper_system'

describe 'puppetlabs_yum class:' do
  context 'no params:' do
    let(:pp) do
      pp = <<-EOS
      class { 'puppetlabs_yum': }
      EOS
    end

    it 'should run with no errors' do
      puppet_apply(pp) do |r|
        r[:stderr].should == ''
        r[:exit_code].should_not eq(1)
      end
    end

    it 'should be idempotent' do
      puppet_apply(pp) do |r|
        r[:stderr].should == ''
        r[:exit_code].should == 0
      end
    end
  end
end