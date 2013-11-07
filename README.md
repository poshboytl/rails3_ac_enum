# Rails3AcEnum
The ActiveRecord::Base#enum is original created by DHH [in Rails
4](https://github.com/rails/rails/commit/db41eb8a6ea88b854bf5cd11070ea4245e1639c5#commitcomment-4496447) for declaring enum attributes where the values map to integers in the database, but can be queried by name.

If you want to use it in your Rails3 application. Please go and check out this gem.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails3_ac_enum'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install rails3_ac_enum
```

## Usage

 Declare an enum attribute where the values map to integers in the database, but can be queried by name. Example:

```ruby
class Conversation < ActiveRecord::Base
  enum status: [ :active, :archived ]
end

Conversation::STATUS # => { active: 0, archived: 1 }

# conversation.update! status: 0
conversation.active!
conversation.active? # => true
conversation.status  # => :active

# conversation.update! status: 1
conversation.archived!
conversation.archived? # => true
conversation.status    # => :archived

# conversation.update! status: 1
conversation.status = :archived
```

 You can set the default value from the database declaration, like:

```ruby
create_table :conversations do |t|
  t.column :status, :integer, default: 0
end
```

 Good practice is to let the first declared status be the default.

 Finally, it's also possible to explicitly map the relation between attribute and database integer:

```ruby
class Conversation < ActiveRecord::Base
  enum status: { active: 0, archived: 1 }
end
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

