#!/usr/bin/env ruby

require 'json'
vars = JSON.parse(STDIN.read)['vars']
vars = vars.split(/\s*,\s*/) if vars.is_a?(String)

output = ENV.select { |k, v| vars.empty? || vars.include?(k) }
puts JSON.pretty_generate(output)
