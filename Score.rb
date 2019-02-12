def score(hand)
  total = 0

  puts 'Incorrect Hand length' if hand.length != 5

  subsets = gen_subsets(hand)
  total += fifteens(subsets)
  total += pairs(subsets)

end

def gen_subsets(hand)
  subsets = []
  (0..hand.length).each do |i|
    subsets.push(hand.combination(i))
  end
  subsets
end

def fifteens(subsets)
  cnt = 0
  subsets.each do |set|
    set_sum = 0
    set.each do |card|
      set_sum += card.value
      cnt += 1 if set_sum == 15
    end
  end
  cnt * 2
end

def pairs(subsets)
  cnt = 0
  subsets.each do |set|
    next if set.length > 2

    cnt += 1 if set[0].name == set[1].name
  end
  cnt * 2
end

# TODO
def runs(subsets)
end

