module ChatBot
  class Configuration
    API_URI = 'https://api.groupme.com/v3/bots/post'

    attr_accessor :api_uri, :bot_id, :api_key

    def initialize
      @api_uri = API_URI
    end

  end
end
