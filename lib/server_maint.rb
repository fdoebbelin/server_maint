require "server_maint/version"

module ServerMaint
  def self.get_cookbook_path
    File.expand_path('../cookbooks', __FILE__)
  end
end
