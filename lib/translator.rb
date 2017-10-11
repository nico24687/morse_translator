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

        @english_dict = @morse_dict.invert
    end 

    def eng_to_morse(phrase)
        split_letters = phrase.downcase.chars
        
        result_of_morse_look_up = split_letters.map do |letter|
            @morse_dict[letter]
        end
        result_of_morse_look_up.join("") 
    end 

    def from_file(file_name)
        File.open("input.txt", "w+") do |file|
                file << "I am in a file"
             end
        output = File.read("input.txt")
        eng_to_morse(output)
    end

    def morse_to_eng(morse_phrase)
        "hello world"
    end

end




