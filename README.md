# Low Five

_Low Five_ allows you to easily login a resource using devise in your rspec specs. 

You can use these methods inside your specs for: 

- controllers
- requests
- features

Make sure that your specs have the correct __type:__ defined. 

```ruby
RSpec.describe UserManagement, type: :request do
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lowfive'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install lowfive
```

## Setup

Add this require to your rails_helper.rb file.

```
require 'lowfive/devise/rspec'
```

## Usage

__Low Five__ provides helper methods that allow you to sign in a particular resource. 

First you must create a resource, in our example we use FactoryGirl to create a user instance. 

```ruby
# spec/factories/users.rb

FactoryGirl.define do
  factory :user do
    email 'user@testuser.com'
    name 'Bob Marley'
    password 'Whatever999'
    password_confirmation 'Whatever999'
  end
end
```

then you pass the user to the helper methods provided. There are two methods available

```ruby
log_in(resource)
log_out(resource)
```

Note that you _NEED_ to have a before block to put the helper method into, if you use it outside of an it block.

```ruby
require 'rails_helper'

RSpec.describe UserManagement, type: :request do
  let(:user) { FactoryGirl.create(:user) }

  before do
    log_in(user)
  end

  describe '#index' do
    context 'logged in' do
      it 'renders index home page' do
        get root_path
        expect(response.body).to include('Home Page')
      end
    end

    context 'logged out' do
      it 'redirects to login page' do
        log_out(user)
        get root_path
        follow_redirect!
        expect(response.body).to include('Log in')
      end
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jwipeout/lowfive. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

