# build a class that converts string into pig latin
class PigLatinizer

    attr_reader :words

    def initialize
        @words = words
    end

    def translate_word(words)
        # if word(s) begins with vowel, don't remove, but add "way" to the end
        if /^[aeiou]/i.match(words)
            "#{words}way"
        else
            # move initial consonant or consonant blend from word(s) to the end
            # then add "ay" to the end of said word(s)
            # to find the first vowel with 0 or more characters after it
            # it splits it at the first vowel, allowing to switch positions
            # of split parts and add "ay" on the end!
            parts = words.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end

    def piglatinize(words)
        # the main method is then used to perform the action on every word
        # in a given input and join them back together as pig latin
        pig_latin = words.split(' ')
        pig_latin.collect {|pig_latin| translate_word(pig_latin)}.join(' ')
    end

end