# frozen_string_literal: true

require_relative "trivia/version"
require "pry"
require "httparty"
require "htmlentities"
require "tty-prompt"


require_relative "./trivia/api"
require_relative "./trivia/cli"
require_relative "./trivia/trivia_info"

