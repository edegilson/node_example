require 'net/http'
require 'json'
require './Livro'

uri = URI('http://localhost:3000/api/livro')

livro = Livro.new('Mundo de Sogia', 'Jostein Gaarder', 500)

respostaPost = Net::HTTP.post_form(uri, 
		'nome' => livro.nome, 
		'autor' => livro.autor,
		'quantidadePaginas' => livro.quantidadePaginas)

puts respostaPost.body

#uri = URI('http://localhost:3000/api/livros')

#respostaGet = Net::HTTP.get(uri)

#puts respostaGet