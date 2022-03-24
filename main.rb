require './class_get.rb'
require './class_save.rb'
require './class_parser.rb'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::WARN

url = ARGV[0]

response1 = Zapros.new()
html = response1.get_requsts(url).body_str
pars = Parser.new()
res= pars.chek(html)
puts res

