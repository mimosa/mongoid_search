# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = "mongoid_search"
  s.version = "0.3.2"
  s.authors = ["Mauricio Zaffari"]
  s.email =["mauricio@papodenerd.net"]
  s.homepage = "http://www.papodenerd.net/mongoid-search-full-text-search-for-your-mongoid-models/"
  s.summary = "Search implementation for Mongoid ORM"
  s.description = "Simple full text search implementation."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("mongoid", [">= 3.0.0"])
  if RUBY_PLATFORM == 'java'
    s.add_dependency("jruby-stemmer", ["~> 0.0.1"])
  else
    s.add_dependency("fast-stemmer", ["~> 1.0.0"])
  end
  s.add_development_dependency("database_cleaner", [">= 0.8.0"])
  s.add_development_dependency("rake", ["~> 0.8.7"])
  s.add_development_dependency("rspec", ["~> 2.4"])

  s.require_path = "lib"
  s.files = Dir["lib/**/*", "tasks/*.rake"] + %w(LICENSE README.md Rakefile VERSION)
  s.test_files = Dir.glob("spec/**/*")
end
