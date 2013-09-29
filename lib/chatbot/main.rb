module ChatBot
  class Main
    def processMessage(rawMessage)
      message = GroupMeParser.parse(rawMessage)
      if message.is_command?
        rule = find_rule(message.command)
        if rule.nil?
          puts 'Message did not match a rule'
        else
          send_message(rule.call)
        end
      end
    end

    def command(command, &block)
      @rule[command] = block
    end

    private

    def find_rule(command)
      return @rule[command]
    end

    def send_message(message)
      GroupMeApi.send_message(message)
    end
  end
end
