require 'yaml'

module Dialable
  module AreaCodes

    def self.datadir
      datadir = File.join(File.dirname(__FILE__), '..', '..', 'data', 'dialable')

      if ! File.directory?(datadir)
        #fail "Can't find the datadir provided by the gem: #{Gem.datadir('dialable')} or by the source: #{File.join(File.dirname(__FILE__), '..', 'data', 'dialable')}."
        fail "Datadir is no there"
      end

      datadir
    end

    # Valid area codes per nanpa.com
    NANP = YAML.load_file(File.join(datadir, 'nanpa.yaml'))

  end
end
