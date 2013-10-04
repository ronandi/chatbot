module ChatBot
  module Commandable
    def is_command?
      return @message[0] == '!'
    end

    def command
      return @message.split(' ').first
    end

    def body
      return @message.split(' ').drop(1).join(' ')
    end
  end
end
