#!/usr/bin/env ruby
require 'stringio'

class KeyValue

  def initialize
    @keys = Hash.new
  end

  # Public: Store and fetch key values using user input
  def key_value

    # State variable to track running of execution loop
    done = 0

    # Data structure to store key values defined by user

    # Run execution in continuous loop. Change action each iteration based on
    # user input. Valid commands and their return statements are:
    #   put   - store value associated with given key
    #             "put favorite_color purple"
    #             stores value purple with key favorite_color
    #           returns: "ok"
    #   fetch - search data structure for given key
    #             "fetch favorite_color"
    #              search data structure for key favorite_color
    #           returns: value (successful key find)
    #                or: "value not found" (failed key find)
    #   exit  - exit execution loop
    #           returns: "Bye!"
    while done != 1
      # Print "> " to indicate to user that program is awaiting input
      print prompt
      
      # Read in user input and separate the read String by space character
      usr_input = gets.chomp.strip().split(" ")

      # Set control flow command to first word in user input
      usr_command = usr_input[0]
      case usr_command
      
      # Final case, halt execution if user specifies "exit" as command
      when "exit"
        done = 1
        print exit
        break
      
      # Store case, stores value associated with given key
      when "put"
        puts store(usr_input[1], usr_input[2])
        
      # Find case, find value associated with given key
      when "fetch"
        puts fetch(usr_input[1])

      # Base case, if command is not one previously defined
      else
        puts unknown
      end
    end
  end

  # Return "Bye!" if called
  # returns: "Bye!"
  def exit
    return "Bye!"
  end

  # Insert new key value pair into data structure
  # returns: "ok" if successful
  def store(key, value)
    @keys[key] = value
    return "ok"
  end

  # Fetch value associated with key from data structure
  # returns: value if successful
  # returns: "value not found" if unsuccessful
  def fetch(key)
    return @keys[key] ? @keys[key] : "value not found"
  end

  # Return error message if called
  # returns: "Unknown command. Known commands are: put, fetch, exit"
  def unknown
    return "Unknown command. Known commands are: put, fetch, exit"
  end

  # Returns prompt if called
  # returns: "> "
  def prompt
    return "> "
  end

end

# Execute interactive session if run as mainfile
# included to modularize program and ease testing
if __FILE__ == $0
  KeyValue.new.key_value
end