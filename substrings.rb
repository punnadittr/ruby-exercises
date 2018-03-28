def substrings(string, dictionary)
    result = {}
    result.default = 0
    string = string.downcase.split
    dictionary.each do |dict_word|
        string.each do |word|
            if word.include? dict_word
                result[dict_word] += 1
            end
        end
    end
    puts Hash[result.sort]
end

