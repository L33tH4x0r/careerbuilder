require "careerbuilder/configuration"
require "careerbuilder/version"

module Careerbuilder
  class << self
    attr_accessor :configuration
  end

  def configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end