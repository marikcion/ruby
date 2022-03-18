require './class_get.rb'
require './class_save.rb'
require './chek.rb'
require './parser.rb'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::WARN

#pars = Parser.new()

url = ARGV[0]

response1 = Zapros.new()
html = response1.get_requsts(url).body_str

ch = Chek.new()
res = ch.chek(html).to_s
if res == '<a href="/candies/?page=2" class="g-pagination__list__item">2</a>'
    response2 = Zapros.new()
    res = response2.get_requsts(url).body_str
    save = Save.new()
    save.save_file(res)  
else
    puts "В переменной не лежит значение"
end


