# require the Ruby Octodex class
load 'octodex.rb'

# initialize the class and store it in octodex
octodex = Octodex.new

# uncomment/comment which methods you would like to test below

# fetch all octocats and print the returned array
print octodex.completeOctodex.inspect

# fetch random octocat and print the returned array
# print octodex.randomOctocat.inspect

# fetch numbered octocat and print the returned array
# print octodex.numberedOctocat(1).inspect