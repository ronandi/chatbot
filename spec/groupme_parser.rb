require './spec_helper'

module ChatBot
  describe GroupMeParser do
    describe ".parse" do
      context "with valid groupme message"
      it "should return a GroupMeMessage" do
        msg = GroupMeParser.parse('{"name":"user", "text":"sample"}')
        msg.should be_an_instance_of(GroupMeMessage)
        msg.message.should eq "sample"
        msg.sender.should eq "user"
      end
    end
    context "with invalid groupme message" do
      it "should raise an exception" do
        expect{GroupMeParser.parse('{"something":"user", "text":"sample"}')}.to raise_error(ArgumentError)
      end
    end
  end
end
