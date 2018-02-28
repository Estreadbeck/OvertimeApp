'rock' > 'scissors' && 'lizard'
'paper' > 'rock' && 'spock'
'scissors' > 'paper' && 'lizard'
'lizard' > 'paper' && 'spock'
'spock' > 'scissors' && 'rock'

choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']

p cpu1 = choices.sample
p cpu2 = choices.sample

if cpu1 > cpu2
  puts 'cpu1 won'
elsif cpu2 > cpu1
  puts 'cpu2 won'
elsif cpu1 == cpu2
  puts 'tie'
end
