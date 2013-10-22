# Chatbot

Chatbot lets you define chat commands easily. 

## Installation

    gem install chatbot

Or add this line to your application's Gemfile:

    gem 'chatbot'

And then execute:

    $ bundle

Remember to:

    require('chatbot')

## Usage

Here's an example how to write an echo bot. It just repeats what its given:
```ruby
require 'sinatra'
require 'chatbot'

Chatbot.configure do |config|
  config.bot_id = "your_bot_id"
end

post '/' do
  Chatbot.processMessage(request.body.read)
end

Chatbot.command "!echo" do |message|
  puts "im here"
  message
end

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
