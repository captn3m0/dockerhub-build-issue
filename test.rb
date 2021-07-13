def check(dir)
    if File.writable?(dir)
        puts "#{dir} is writeable"
    else
        puts "#{dir} is writeable"
    end
end

check('/root')