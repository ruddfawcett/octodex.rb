octodex.rb
============

A Ruby wrapper for the Octodex API.

##Use
Use this class like any other Ruby class:

```ruby
# require the Ruby Octodex class
load 'octodex.rb'

# initialize the class and store it in octodex
octodex = Octodex.new

# uncomment/comment which methods you would like to test below

# fetch all octocats and print the returned array
print octodex.completeOctodex.inspect # inspect is the PHP equivalent of var_dump()
```

For complete annotation, see [the actual class file (octodex.rb)](octodex.rb) as well as the [demo implementation](demo.rb).

##Class Methods
Assuming `octodex = Octodex.new`.  Check the [response example](#example-response) below, to see what these functions wil serve you.

###Complete Octodex
**`octodex.completeOctodex`** 

Returns an array containing every octocat from [the Octodex](https://octodex.github.com).

###Random Octocat
**`octodex.randomOctocat`** 

Returns an array containing a random octocat from [the Octodex](https://octodex.github.com).

###Octocat by Number
**`octodex.numberedOctocat(number)`**

Where `number` is a number between 1 and the number of the last Octocat (as of 1/13/14 this - 113), and returns that numbered Octocat from [the Octodex](https://octodex.github.com).  

The API checks if the number exists in the Octodex, so you don't have to check if it does.

##Example Response
```ruby
{
    "name"=>"Original",
    "page"=>"http://octodex.github.com/original",
    "image"=>"http://octodex.github.com/images/original.png",
    "author"=>"http://octodex.github.com/original",
    "number"=>"1",
    "authorURL"=>"http://www.idokungfoo.com",
    "authorAvatar"=>"https://img.skitch.com/20110427-p3wtwcbu957cf9mm93s4sjqqci.png"
}
```

###Keys
- `name` - the name of the octocat
- `page` - the webpage of the octocat
- `image` - the raw image URL of the octocat
- `author` - the creator of the octocat
- `number` - the number of the octocat in the series
- `authorURL` - the URL of the author (GitHub/Website)
- `authorAvatar` - the avatar of the author

##To Do
- Check for errors given by the API and handle them

##Use of Octocats
Check out the GitHub Octodex frequently asked questions (http://octodex.github.com/faq), for specific use.  GitHub owns all of the Octocats, this Ruby class just uses an API that grabs all of their data.
