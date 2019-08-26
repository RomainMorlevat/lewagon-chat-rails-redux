# frozen_string_literal: true

puts('Destroy Messages, Channels and Users')
Message.destroy_all
Channel.destroy_all
User.destroy_all

puts('Create fake data')
%w[general react Lyon].each do |name|
  Channel.create!(name: name)
end

user1 = User.create!(email: 'romainmorlevat@gmail.test', password: 123_456)
user2 = User.create!(email: 'johndoe@gmail.test', password: 654_321)

Message.create!(content: 'First message.', user: user1, channel: Channel.first)
Message.create!(content: 'Second message.', user: user2, channel: Channel.first)
