
def make_snippet(str)
    if str.split.count < 6
        str
    else
        new_str = []
        (0..4).each do | index |
            new_str << str.split[index]
        end
        "#{new_str.join(" ")}..."
    end
end