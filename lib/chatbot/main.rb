module ChatBot
  class Main
    def initialize
      @rule = {}
    end
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration) if block_given?
    end

    def processMessage(rawMessage)
      message = GroupMeParser.parse(rawMessage)
      if message.is_command?
        rule = find_rule(message.command)
        if rule.nil?
          puts 'Message did not match a rule'
        else
          outmessage = rule.call(message)
          unless outmessage.nil?
            send_message(outmessage)
          end
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
      GroupMeApi.send_message(message, configuration)
    end
  end
end
