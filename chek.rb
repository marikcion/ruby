require 'nokogiri'

class Chek

    def chek(html)
        soup = Nokogiri::XML(html)
        rez = soup.xpath(".//a[@class='g-pagination__list__item']")
    end
end