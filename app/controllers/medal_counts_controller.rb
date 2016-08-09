require "httparty"
require "pry"


medal_count = HTTParty.get('https://olympics.atelerix.co/medals')
binding.pry

puts medal_count

# class MedalCountsController < ApplicationController

# end
