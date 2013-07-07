# Peelr

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'peelr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peelr --pre

## Usage

  ```ruby
  class User
    def survive
      peelr!
      #...
    end
  end
  
  class Car
    attr_reader :user
    def initialize(user)
      @user = user
    end
    
    def crash
      user.survive
    end
  end
  
  Car.new(User.new).crash #=> ### 'survive' called inside 'crash' (example_file.rb:13)
  ```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
