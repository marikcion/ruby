require 'nokogiri'

class Parser

    def parser_html(html)
        
    end

    def chek(html)
        soup = Nokogiri::XML(html)
        unless soup.xpath(".//a[@class='g-pagination__list__item']//@href")
            puts 'no pagination on the page'
        end
        return soup.xpath(".//a[@class='g-pagination__list__item']//@href").to_s
    end

end