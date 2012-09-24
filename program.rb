require 'net/http'
require 'json'

uri = URI('http://localhost:3000/api/livro')

respostaPost = Net::HTTP.post_form(uri, 
		'nome' => 'Mundo de Sofia', 
		'autor' => 'Jostein Gaarder',
		'quantidadePaginas' => 500)

puts respostaPost.body

#uri = URI('http://localhost:3000/api/livros')

#respostaGet = Net::HTTP.get(uri)

#puts respostaGet