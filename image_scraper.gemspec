# frozen_string_literal: true

require_relative 'lib/image_scraper/version'

Gem::Specification.new do |spec|
  spec.name = 'image_scraper'
  spec.version = ImageScraper::VERSION
  spec.authors = ['John McAliley']
  spec.email = 'john.mcaliley@gmail.com'

  spec.summary = 'scrape images from urls'
  spec.description = 'Simple utility to pull image urls from web page'
  spec.homepage = 'http://github.com/charlotte-ruby/image_scraper'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.licenses = ['MIT']

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency('css_parser', ['>= 0'])
  spec.add_runtime_dependency('nokogiri', ['>= 0'])
  spec.add_runtime_dependency('rails', ['>= 0'])

  spec.add_development_dependency('bundler', ['~> 2.1'])
  spec.add_development_dependency('jeweler', ['~> 1.5.2'])
  spec.add_development_dependency('rcov', ['>= 0'])
  spec.add_development_dependency('rspec', ['~> 3.9'])
end
