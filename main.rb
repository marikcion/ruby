require_relative 'class_get.rb'

logger = Logger.new(STDOUT)
logger.level = Logger::WARN


url = ARGV[0]
url_response = Zapros.new(url)