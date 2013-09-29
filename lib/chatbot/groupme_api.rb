require 'net/http'
require 'json'

module ChatBot
  class GroupMeApi
    def self.send_message(message)
      Net::HTTP.post_form(Configuration.GM_URI, { 'bot_id' => Configuration.BOT_ID, 'text' => message })
    end
  end
end
