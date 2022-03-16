# used a gem called humanize
# in terminal, install: gem install humanize
# then require it in file (below)
# can also add to gem file (not sure about this yet...could be like npm and need to initialize something that will add a file like package.lock & package.json with npm...???): gem 'humanize' 

require 'humanize'

def print_nursery_rhyme(total)
    num = total
    
    while num > 0
        frog = num == 1 ? "frog" : "frogs"
        num_remaining = num > 1 ? (num - 1).humanize : "no more"
        was_were = num_remaining == "one" ? "was" : "were"
        frog_remaining = num_remaining == "one" ? "frog" : "frogs"

        puts "#{num.humanize} speckled #{frog} sat on a log 
        eating some most delicious bugs.  
        One jumped in the pool where its nice and cool,
        then there #{was_were} #{num_remaining} speckled #{frog_remaining}."
        num -= 1
    end
end


print_nursery_rhyme(15)