class Livro

	attr_accessor :nome, :autor, :quantidadePaginas

	def initialize(nome, autor, quantidadePaginas)
		@nome = nome
		@autor = autor
		@quantidadePaginas = quantidadePaginas
	end
end