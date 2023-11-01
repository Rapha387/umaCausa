
const formData = new FormData();


function aceitarDoacao(botao){
    const doacao = botao.id;

    formData.append('confirmacao', true);
    formData.append('doacao', doacao);

    console.log(doacao);

    fetch(`http://localhost:50944/JsonResponses/ConfirmarDoacao.aspx`, {
        method: 'POST',
        body: formData
    })
      .then(function (resposta) { return resposta.json() })
      .then(function (dados) {
           if (dados['situacao'] == 'true') {
               console.log("foi");
           }
           else {
               console.log("nao foi");
           }
       });
}


function recusarDoacao(botao) {
    const doacao = botao.id;

    formData.append('confirmacao', false);
    formData.append('doacao', doacao);

    fetch(`./../JsonResponses/ConfirmarDoacao.aspx`, {
        method: 'POST',
        body: formData
    })
        .then(function (resposta) { return resposta.json() })
        .then(function (dados) {
            if (dados['situacao'] == 'true') {

            }
            else {

            }
        });
}