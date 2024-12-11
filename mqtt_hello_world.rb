require 'mqtt'

# Connect to the MQTT broker
broker = 'mqtt://test.mosquitto.org' # Using a public test broker
topic = 'hello/world'

# Publish a message to the topic
MQTT::Client.connect(broker) do |client|
  client.publish(topic, 'Hello World from MQTT in Ruby!')
  puts 'Message sent to MQTT Broker: "Hello World from MQTT in Ruby!"'
end
