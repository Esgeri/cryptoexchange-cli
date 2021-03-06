#!/usr/bin/env ruby

require "bundler/setup"
require "cryptoexchange"

client = Cryptoexchange::Client.new
dce = ARGV[0]

begin
    pairs = client.pairs(dce)
    pairs.each {|p|
        puts p.base + "-" +p.target
    }
rescue
end
