require 'fileutils'
module DojoSrc
  VERSION='1.4.3'
  class << self
    def dojofy(path)
      dojo_path = File.join(File.dirname(__FILE__),'../dojo')
      puts "Dojofy your application"
      FileUtils.mkdir_p path
      %w{dojo util dijit dojox}.each do |mod|
        mod_path = "#{path}/#{mod}"
        puts "link #{mod_path}"
        if File.exists?(mod_path)
          system "rm #{mod_path}"
        end
        system "ln -s #{dojo_path}/#{mod} #{mod_path}"
      end
      open(File.join(path,'DOJO_VERSION'),'w'){|v| v<< VERSION }
      puts "Dojofy done"
    end
  end
end
