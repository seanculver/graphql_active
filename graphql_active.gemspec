# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "graphql_active/version"

Gem::Specification.new do |spec|
  spec.name          = "graphql_active"
  spec.version       = GraphqlActive::VERSION
  spec.authors       = ["Julian Rogmans"]
  spec.email         = ["julian.rogmans@codingzeal.com"]

  spec.summary = %q(
    Simple GraphQL interface for your ActiveRecord models
  )
  spec.description = %q(
    Ever wanted to try out graphql querying without having to learn the deep
    inner workings of the language itself. GraphqlActive translates your models
    of your choosing into fully working, sensible, ActiveRecord style endpoints
    via a CRUD like interface to change things.

    Ever wanted to give your existing API some graphql endpoints without having
    to figure out all of the related objects you have to create to give your
    model the data it needs. No problem, with fully customizable GraphqlActive
    objects it can be as simple as adding an calling `graphql_active` in your
    model or as intricate as building advanced ActiveRecord -> GraphQL
    tranlation queries with ease.
  )
  spec.homepage = "https://github.com/CodingZeal/graphql_active"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] =
      "https://github.com/julianrogmans/graphql_active"
  else
    raise "RubyGems 2.0 or newer required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord", "4.2.6"
  spec.add_runtime_dependency "graphql"
  spec.add_runtime_dependency "inflections"
  spec.add_development_dependency "require_all"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "database_cleaner"
end
