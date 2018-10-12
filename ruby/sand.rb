require "pry"

PROTEINS = {
  "Methionine" => ["AUG"],
  "Phenylalanine" => ["UUU", "UUC"],
  "Leucine" => ["UUA", "UUG"],
  "Serine" => ["UCU", "UCC", "UCA", "UCG"],
  "Tyrosine" => ["UAU", "UAC"],
  "Cysteine" => ["UGU", "UGC"],
  "Tryptophan" => ["UGG"],
  "STOP" => ["UAA", "UAG", "UGA"]
}

strand = 'AUGUUUUGG'

# phrase
# .upcase
# .scan(/\w+/)
# .map { |word| word.chars.first }
# .join("")

def transform obj
  output = {}

  obj.each_pair do |score, letters|
    letters.each do |letter|
      output[letter.upcase] = score
    end
  end

  output
end



string = "UUU"
strand = 'AUGUUUUAA'

p PROTEINS
 .select { |key, value| value.include? string }
 .map { |key, value| key }
 .first

proteins = transform PROTEINS

list = []
codons = strand.scan(/.../)
proteins = transform PROTEINS
p proteins

a = codons.map do |codon|

  raise ArgumentError unless proteins.keys.include? codon
  return list if proteins[codon] == "STOP"

  proteins[codon]


end
p a
binding.pry
