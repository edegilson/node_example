var express = require('express');
var mongoose = require('mongoose');
var dataBase = mongoose.createConnection('localhost', 'bookSearch');

var livroSchema = mongoose.Schema({
	nome: String,
	autor: String,
	quantidadePaginas: Number
});

var livroModel = mongoose.model('livros', livroSchema);

var app = express();

app.configure(function() {
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(app.router);
});

app.get('/api/livros', function(request, response) {
	console.log('efetuando busca..');
	
	livroModel.find({}, function(erro, livros){
		response.send(livros);
	});

	console.log('ok');
});

app.post('/api/livro', function(request, response) {

	var livro = new livroModel({
		nome: request.body.nome,
		autor: request.body.autor,
		quantidadePaginas: request.body.quantidadePaginas
	});

	livro.save();

	response.send(livro);
});

app.listen(3000);