module ChatBot
  class GroupMeMessage
    include Commandable

    attr_reader :message, :sender, :sender_id

    def initialize(message, sender, sender_id)
      begin
        sender = sender.to_str
      rescue NoMethodError
        raise ArgumentError, "expected sender to be string"
      end
      @message = message || ""
      @sender = sender
      @sender_id = sender_id
    end
  end
end
