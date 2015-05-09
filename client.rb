require 'rubygems'
require 'bundler'
Bundler.require
Dotenv.load

class Client

  def start_droplet(name)
    client.droplet_actions.power_on(droplet_id: find_droplet_by_name(name).id)
  end

  def stop_droplet(name)
    client.droplet_actions.power_off(droplet_id: find_droplet_by_name(name).id)
  end

  private

  def find_droplet_by_name(name)
    client.droplets.all.find { |droplet| droplet.name == name }
  end

  def client
    DropletKit::Client.new(access_token: ENV['DIGITAL_OCEAN_ACCESS_TOKEN'])
  end
end
