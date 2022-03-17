require './class_get.rb'
require './chek.rb'
require './parser.rb'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::WARN


url = ARGV[0]
url_response = Zapros.new()
html = url_response.get_requsts(url).body_str

ch = Chek.new()
res = ch.chek(html).to_s
if res == '<a href="/candies/?page=2" class="g-pagination__list__item">2</a>'
    puts "В переменной лежит значение #{res} "
else
    puts "В переменной не лежит значение"
end


