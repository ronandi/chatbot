require 'json'
module ChatBot
  class GroupMeParser
    def self.parse(raw_message)
      gm_msg = JSON.parse(raw_message)
      return GroupMeMessage.new(gm_msg)
    end
  end
end
