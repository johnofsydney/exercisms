require 'pry'

class Translation

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

  def self.of_codon string
    PROTEINS
     .select { |key, value| value.include? string }
     .map { |key, value| key }
     .first
  end

  def self.of_rna strand
    proteins = transform PROTEINS

    strand
    .scan(/.../)
    .map { |codon| proteins[codon] }
    .take_while { |codon| codon != "STOP" }
  end

  def self.transform obj

    output = {}
    obj.each do |key, value|
      value.each do |element|
        output[element.upcase] = key
      end
    end
    output

  end



end




# require 'pry'
#
# class Translation
#
#   PROTEINS = {
#     "Methionine" => ["AUG"],
#     "Phenylalanine" => ["UUU", "UUC"],
#     "Leucine" => ["UUA", "UUG"],
#     "Serine" => ["UCU", "UCC", "UCA", "UCG"],
#     "Tyrosine" => ["UAU", "UAC"],
#     "Cysteine" => ["UGU", "UGC"],
#     "Tryptophan" => ["UGG"],
#     "STOP" => ["UAA", "UAG", "UGA"]
#   }
#
#   def self.of_codon string
#     # list = []
#     # PROTEINS.each do |key, value|
#     #   if value.include? string
#     #     list.push key
#     #   end
#     # end
#     # list.first
#
#     PROTEINS
#      .select { |key, value| value.include? string }
#      .map { |key, value| key }
#      .first
#
#   end
#
#   def self.of_rna strand
#     list = []
#     codons = strand.scan(/.../)
#     proteins = transform PROTEINS
#
#     codons.each do |codon|
#       if (proteins.keys.include?(codon) == false)
#         raise ArgumentError
#       end
#       if proteins[codon] == "STOP"
#         return list
#       end
#       list.push proteins[codon]
#     end
#
#     list
#   end
#
#   def self.transform obj
#     output = {}
#
#     obj.each_pair do |score, letters|
#       letters.each do |letter|
#         output[letter.upcase] = score
#       end
#     end
#
#     output
#   end
#
#
# end
