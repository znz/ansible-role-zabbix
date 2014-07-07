#!/usr/bin/ruby
# -*- coding: utf-8 -*-
require 'socket'
require 'openssl'

host = ARGV.shift
port = ARGV.shift.to_i

if port == 0
  abort("usage: #$0 host port")
end
TCPSocket.open(host, port) do |sock|
  ssl = OpenSSL::SSL::SSLSocket.new(sock)
  ssl.sync_close = true

  # SNI support since ruby 1.9.3
  if ssl.respond_to?(:hostname)
    ssl.hostname = host
  end

  ssl.connect
  cert = ssl.peer_cert
  ssl.close

  puts cert.not_after - Time.now
end
