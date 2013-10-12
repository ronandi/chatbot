require 'json'
module ChatBot
  class GroupMeParser
    def self.parse(raw_message)
      gm_msg = JSON.parse(raw_message)
      if (gm_msg["name"].nil?)
        raise ArgumentError, "Invalid GroupMe message"
      end
      return GroupMeMessage.new(gm_msg["text"], gm_msg["name"], gm_msg["user_id"])
    end
  end
end
