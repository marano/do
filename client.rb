require 'rubygems'
require 'bundler'
Bundler.require

def client
  @client ||= DropletKit::Client.new(access_token: '47b3d4865ca3b32ad5a298cabbe4edc9de0ff1f960050a121ed63460f0d63b2a')
end
