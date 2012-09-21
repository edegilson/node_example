require 'net/http'
require 'json'

uri = URI('http://localhost:3000/')

usuariosJSON = Net::HTTP.get(uri)

usuarios = JSON.parse usuariosJSON

usuarios.each do |index, value|
	value.each do |usuario, nome|
		puts "Nome: #{nome}"
	end
end