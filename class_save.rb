class Save

    def save_file(html)
        count = 1
        File.open("./save_file/#{count}.html", "w") do |file|
            file.write(html)
            count += 1
        end
    end
end