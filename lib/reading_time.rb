#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

#reading_time(string)

def reading_time(text)
    words = text.split(" ")
    if words.count == 0
        0
    else 
        time = words.count.to_f * 60 / 200
        time
    end
end

reading_time("one two")