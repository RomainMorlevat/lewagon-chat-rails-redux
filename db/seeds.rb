# frozen_string_literal: true

%w[general react Lyon].each do |name|
  Channel.create(name: name)
end

user1 = User.create(email: 'romainmorlevat@gmail.test', password: 123_456)
user2 = User.create(email: 'johndoe@gmail.test', password: 654_321)

Message.create(content: 'First message.', user: user1, channel: Channel.first)
Message.create(content: 'Second message.', user: user2, channel: Channel.first)
