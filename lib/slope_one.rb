VERSION = '0.1.1'

class SlopeOne
  attr_accessor :diffs, :freqs
  
  def initialize
    self.diffs = {}
    self.freqs = {}
  end

  def insert(user_data)
    user_data.each do |name, ratings|
      ratings.each do |item1, rating1|
        self.freqs[item1] ||= {}
        self.diffs[item1] ||= {}
        ratings.each do |item2, rating2|
          self.freqs[item1][item2] ||= 0
          self.diffs[item1][item2] ||= 0.0
          self.freqs[item1][item2] += 1
          self.diffs[item1][item2] += (rating1 - rating2)
        end
      end
    end
    
    self.diffs.each do |item1, ratings|
      ratings.each do |item2, rating2|
        ratings[item2] = ratings[item2] / self.freqs[item1][item2]
      end
    end
  end
  
  def predict(user)
    preds, freqs = {}, {}

    user.each do |item, rating|
      self.diffs.each do |diff_item, diff_ratings|
        next if self.freqs[diff_item].nil? or diff_ratings[item].nil?
        freq = self.freqs[diff_item][item]
        preds[diff_item] ||= 0.0
        freqs[diff_item] ||= 0
        preds[diff_item] += freq * (diff_ratings[item] + rating)
        freqs[diff_item] += freq
      end
    end
    
    results = {}
    preds.each do |item, value|
      results[item] = sprintf('%.3f', (value / freqs[item])).to_f unless user.include?(item) && freqs[item] > 0
    end
    return results
  end
end