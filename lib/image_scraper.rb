# frozen_string_literal: true

module ImageScraper
  class Error < StandardError; end
  # Your code goes here...
end

require 'rails'
require 'open-uri'
require 'nokogiri'

require 'image_scraper/railtie'
require 'image_scraper/util'
require 'image_scraper/client'
require 'image_scraper/version'
