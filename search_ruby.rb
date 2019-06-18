require 'elasticsearch'
def client
Elasticsearch::Client.new trace: true
end

puts "What's your name?"
@name=gets.chomp
puts 'How old are you?'
@edad=gets.chomp

client.index index: 'my_indices', type: 'my_types', body: { name: @name, years: @edad }
puts "Data was saved"


