module ChatBot
  class GroupMeMessage
    include Commandable

    attr_reader :message, :sender

    def initialize(gm_msg)
      @message = gm_msg['text']
      @sender = gm_msg['text']
    end
  end
end
