## Sessions 

### Login do usuário
Dado que o usuário submeteu o formulário de login con dados corretos
Quando faço una raquisição POST para a rota /sessions
Então o status code deve ser igual a 200
E deve retornar un token JWT na resposta
E esse token dave expirar en 18 dias

### Senha incorreta
Dado que o usuário submeteu o formulário de login com senha inválida
Quando faço una requisição POST para a rota /sessions
Então o status code deve ser igual a 481
E deve retornar a nansagen "Unauthorized"

### Usuário não existe
Dado que o usuário submeteu o formulário de login con un email não cadastrado
Quando faço una requisição POST para a rota /sessions
Então o status code deve ser igual a 401
E deve retornar a mensagen "Unauthorized

### Email no formato incorreto
Dado que o usuário submeteu o formulário de login con un email no formato incorreto
Quando faço uma requisição POST para a rota /sessions
Então o status code deve ser igual a 400°
E deve retornar a nensagen "Incorrect email"