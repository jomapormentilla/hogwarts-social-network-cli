# Command line interface
# Interacts with the user
# Connects our files together

class Cli
    include Commands::InstanceMethods
    attr_accessor :name, :house, :info, :commands

    def initialize
        start
        level_one_commands
    end
end