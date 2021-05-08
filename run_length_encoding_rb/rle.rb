def encode(letters)
  letters.chars.chunk_while { |a, b| a == b }
                .map { |letter| letter.length }
                .zip(letters.squeeze.chars)
                .join
end

def decode(sequence)
  sequence.scan(/\d+[A-Z]/)
          .map { |pair| pair[-1] * pair.scan(/\d+/)[0].to_i }
          .join
end
