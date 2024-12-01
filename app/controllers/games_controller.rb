class GamesController < ApplicationController
  def new
    # alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    # @letters = Array.new(10) { alphabet.sample }

    alphabet = [
      { letter: 'E', weight: 12.7 },
      { letter: 'T', weight: 9.1 },
      { letter: 'A', weight: 8.2 },
      { letter: 'O', weight: 7.5 },
      { letter: 'I', weight: 7.0 },
      { letter: 'N', weight: 6.7 },
      { letter: 'S', weight: 6.3 },
      { letter: 'H', weight: 6.1 },
      { letter: 'R', weight: 6.0 },
      { letter: 'D', weight: 4.3 },
      { letter: 'L', weight: 4.0 },
      { letter: 'C', weight: 2.8 },
      { letter: 'U', weight: 2.8 },
      { letter: 'M', weight: 2.4 },
      { letter: 'W', weight: 2.4 },
      { letter: 'F', weight: 2.2 },
      { letter: 'G', weight: 2.0 },
      { letter: 'Y', weight: 2.0 },
      { letter: 'P', weight: 1.9 },
      { letter: 'B', weight: 1.5 },
      { letter: 'V', weight: 1.0 },
      { letter: 'K', weight: 0.8 },
      { letter: 'J', weight: 0.2 },
      { letter: 'X', weight: 0.2 },
      { letter: 'Q', weight: 0.1 },
      { letter: 'Z', weight: 0.1 }
    ]

    def sample_with_weight(elements, count)
      total_weight = elements.sum { |e| e[:weight] }
      Array.new(count) do
        point = rand(total_weight)
        elements.each do |element|
          point -= element[:weight]
          break element[:letter] if point < 0 # use break instead of return to output an array and not a string
        end
      end
    end

    @letters = sample_with_weight(alphabet, 10)

  end

  def score
  end
end
