# frozen_string_literal: true

require_relative 'nrepl/version'
require_relative 'nrepl/server'
require_relative 'nrepl/repl'
require_relative 'nrepl/transport'
require_relative 'nrepl/session'
require_relative 'nrepl/ops'

module NRepl
  class Error < StandardError; end

  def self.run(**opts)
    ctx = Server.start(**opts)

    Server.listen_and_serve(**ctx)

    Server.stop(**ctx)
  end
end
