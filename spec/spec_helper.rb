$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require "easy_graph"
require "graphql"
require "active_record"
require "pry-byebug"
require "require_all"
require "database_cleaner"
require_relative "support/database_cleaner"
require_rel "models"
