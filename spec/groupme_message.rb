require './spec_helper'

module ChatBot
  describe GroupMeMessage do
    describe '.initialize' do
      context 'with a hash containing a text and name' do
        it 'should assign text to message, and sender to name' do
          message = GroupMeMessage.new('msg','user')
          message.message.should == 'msg'
          message.sender.should == 'user'
        end
      end
      context 'without string arguments' do
        it 'should raise an ArgumentError' do
          expect { GroupMeMessage.new(2, 3) }.to raise_error(ArgumentError)
        end
      end
    end
    describe '.is_command' do
      context 'when the message is a command' do
        it 'should return true' do
          message = FactoryGirl.build(:group_me_message_with_command)
          message.is_command?.should == true
        end
      end
      context 'when the message is not a command' do
        it 'should return false' do
          message = FactoryGirl.build(:group_me_message)
          message.is_command?.should == false
        end
      end
    end
  end
end
