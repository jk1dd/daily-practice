# You need to create a function that converts the input into this format,
# with the output being the same string expect there is a pattern of uppercase and lowercase letters.

# sponge_meme("stop Making spongebob Memes!") # => 'StOp mAkInG SpOnGeBoB MeMeS!'

def sponge_meme(sentence)
  sentence.downcase.chars.each_with_index.map {|letter, index| index.even? ? letter.upcase : letter}.join
end
