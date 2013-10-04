require 'net/http'
require 'json'
require 'uri'

module ChatBot
  class GroupMeApi
    def self.send_message(message, configuration)
      puts "Sending message to #{configuration.api_uri} with id: #{configuration.bot_id} and message: #{message}"
      Net::HTTP.post_form(URI.parse(configuration.api_uri), { 'bot_id' => configuration.bot_id, 'text' => message })
    end
  end
end
