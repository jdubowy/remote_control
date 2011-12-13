module RemoteControl
  module Inspect
    # @todo: Is it worth it to write a class (to maintain ssh conntection for multi-action inspection)?

    # Identifies youngest
    def identify_youngest  server, username, password, dir, file_name_pattern=nil
      Net::SSH.start(server, username, password) do |ssh|
        # ssh.sftp.connect do |sftp|

        #   Dir.foreach(directory) do |file|
        #     puts file
        #   end
        # end
      end
    end

  end
end
