require 'curb'
require 'logger'
require_relative 'main.rb'

class Zapros

    def get_zapros(url)
        html = Curl::Easy.http_get(url) do |html|
            html.headers['User-Agent'] = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36'
            html.headers['Accept'] = 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'
        end
        unless html
            logger.info('проверте url')
        end
        puts html.body_str     
    end
end