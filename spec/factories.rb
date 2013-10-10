FactoryGirl.define do
  factory :group_me_message, class: ChatBot::GroupMeMessage do
    ignore do
      message 'Sample message'
      sender 'Sample user'
    end
    initialize_with { ChatBot::GroupMeMessage.new(message, sender) }
  end

  factory :group_me_message_with_command, class: ChatBot::GroupMeMessage do
    ignore do
      message '!command Sample message'
      sender 'Sample user'
    end
    initialize_with { ChatBot::GroupMeMessage.new(message, sender) }
  end
end
