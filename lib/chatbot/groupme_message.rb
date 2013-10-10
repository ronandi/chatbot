module ChatBot
  class GroupMeMessage
    include Commandable

    attr_reader :message, :sender

    def initialize(message, sender)
      begin
        sender = sender.to_str
      rescue NoMethodError
        raise ArgumentError, "expected sender to be string"
      end
      @message = message || ""
      @sender = sender
    end
  end
end
