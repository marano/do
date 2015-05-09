require 'rubygems'
require 'bundler'
Bundler.require

class Client

  def start_droplet(name)
    client.droplet_actions.power_on(droplet_id: find_droplet_by_name(name).id)
  end

  private

  def find_droplet_by_name(name)
    client.droplets.all.find { |droplet| droplet.name == name }
  end

  def client
    DropletKit::Client.new(access_token: '47b3d4865ca3b32ad5a298cabbe4edc9de0ff1f960050a121ed63460f0d63b2a')
  end
end
