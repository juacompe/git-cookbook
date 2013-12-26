require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
    c.before :all do
        c.path = '/sbin:/usr/sbin'
    end
end

describe "Git Daemon" do
    
    it "is listening on port 9418" do
        expect(port(9418)).to be_listening
    end

end

describe service("git-daemon") do
    it { should be_running }
end
