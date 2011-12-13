#!/usr/bin/env ruby

require 'remote_control'
require 'optparse'
require 'highline'


## TODO:
##    - read http://www.infoq.com/articles/ruby-file-upload-ssh-intro
##    - read http://highline.rubyforge.org/
##    - read http://stackoverflow.com/questions/897630/really-cheap-command-line-option-parsing-in-ruby

def parse_options
  options = {}
  OptionParser.new do |o|
    o.on('-s server') { |b| options['server'] = b }
    o.on('-u username') { |b| $username = b }
    #o.on('-p password') { |b| options["password"] = password }

    o.on('-h') { puts o; exit }
    o.parse!
  end
end

# def inspect_mose_recent server, username, password, directory
# end


def main
  options = parse_options
  if not options["server"] or not options["username"]
    puts "Specify 'server (-s) and username (-u)"
    puts options
    exit
    #raise SystemExit
  end

  ask("Enter password:  ") { |q| q.echo = "x" }
  options['password'] = q

  puts options
end


if __FILE__ == $0
  begin
    main

  rescue Exception => e
    if e.instance_of?(SystemExit)
      raise
    else
      puts 'Uncaught exception'
      puts e.message
      puts e.backtrace.join("\n")
    end
  end
end

