var http = require('http');

http.createServer(function(request, response) {

	var usuarios = {
		"1" : {
			nome: "Edegilson",
			apelido: "Ed"
		},
		"2" : {
			nome: "Luiz",
			apelido: "Leiz"
		},
		"3" : {
			nome: "Thiago",
			apelido: "Rusty"
		},
		"4" : {
			nome: "Neilton",
			apelido: "Baiano"
		}
	};

	response.writeHead(200, {'Content-Type' : 'application/json'});

	response.end(JSON.stringify(usuarios));

}).listen(3000, '127.0.0.1');