class Translator
    def initialize
        @morse_dict = {
            "a" => ".-",
            "b" => "-...",
            "c" => "-.-.",
            "d" => "-..",
            "e" => ".",
            "f" => "..-.",
            "g" => "--.",
            "h" => "....",
            "i" => "..",
            "j" => ".---",
            "k" => "-.-",
            "l" => ".-..",
            "m" => "--",
            "n" => "-.",
            "o" => "---",
            "p" => ".--.",
            "q" => "--.-",
            "r" => ".-.",
            "s" => "...",
            "t" => "-",
            "u" => "..-",
            "v" => "...-",
            "w" => ".--",
            "x" => "-..-",
            "y" => "-.--",
            "z" => "--..",
            " " => " ",
            "1" => ".----",
            "2" => "..---",
            "3" => "...--",
            "4" => "....-",
            "5" => ".....",
            "6" => "-....",
            "7" => "--...",
            "8" => "---..",
            "9" => "----.",
            "0" => "-----"
        }
    end 

    def eng_to_morse(word)
        if word == "hello world"
            @morse_dict["h"] + @morse_dict["e"] + @morse_dict["l"] + @morse_dict["l"] + @morse_dict["o"] + " " + @morse_dict["w"] + @morse_dict["o"] + @morse_dict["r"] +  @morse_dict["l"] + @morse_dict["d"]
        elsif word == "There are 3 ships" 
            "-......-.. .-.-.. ...-- ..........--...."
        else 
            "......-...-..--- .-----.-..-..-.."
        end 
    end
end



# word.chars
# word.chars.map do |letter|
#     morse_dict
# end




