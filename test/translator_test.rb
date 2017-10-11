require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require '../lib/translator'


class TranslatorTest < Minitest::Test 
    def test_translator_class_exists
        translator = Translator.new

        assert_instance_of Translator,translator
    end

    def test_eng_to_morse_returns_morse_code
        
        translator = Translator.new

        assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
    end

    def test_eng_to_morse_is_case_insensitive
        translator = Translator.new

        assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    end

    def test_eng_to_morse_works_with_numbers
        translator = Translator.new

        assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
    end

    def test_from_file_translates
        translator = Translator.new 

        assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
    end

    def test_morse_to_eng
        translator = Translator.new

        assert_equal "hello world", translator.morse_to_eng("......-...-..--- .-----.-..-..-..") 
    end
end