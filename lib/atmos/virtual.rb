module Atmos
  #
  # Virtual class to consolidate common code between requests
  #
  class Virtual < MosterMash::Base
  
    defaults do
      read_config
      disable_ssl_peer_verification @use_ssl    
    end
    
    private
  
    def read_config
      YAML.load_file(File.join(__FILE__, '..', 'config', 'atmos.yml'))[atmos_env].each do |k,v|
        instance_variable_set("@#{k}", v)
      end
    end
  
    def atmos_env
      ENV['ATMOS_ENV'] || ENV['RAILS_ENV'] || 'development'
    end
  end
end