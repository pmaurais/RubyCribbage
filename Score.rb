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

# this is messy but it works because it exhaustively covers every subset
# TODO clean this code
def runs(subsets)
  max_run=0
  subsets.each do |set|
    next if set.length <= 2
    set=set.sort
    prev_card=set.shift
    cur_run = 0
    set.each do |cur_card|
      if cur_card.rank == prev_card.rank+1
        cur_run += 1
      else
        cur_run=0
        break
      end
      prev_card=cur_card
    end
    max_run = cur_run if max_run < cur_run
  end
end

