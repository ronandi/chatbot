module ChatBot
  module Commandable
    def is_command?
      return @message[0] == '!'
    end

    def command
      return @message.split(' ').first
    end
  end
end
