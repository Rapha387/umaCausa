
const qrcodeContainer = document.getElementById("qrcode");


if (btnGerarPix) {
  btnGerarPix.addEventListener('click', function(e){
    e.preventDefault();

    if (txtValor.value == "") {
        txtValor.classList.add('inputInvalido');
        erroDoacaoMonetaria.textContent = "O valor nao pode estar vazio"
        return;
    }

    let valorTxt = parseFloat(txtValor.value);
    const urlParams = new URLSearchParams(window.location.search);
    const ong = urlParams.get('ong');

    if (ong == "")
        return

    btnGerarPix.setAttribute('disabled', 'true');
  
    fetch("http://localhost:50944/JsonResponses/BuscarDadosPixOng.aspx?ong="+ong)
    .then(function (resposta) {
        return resposta.json();
    }).then(function (dados) {
        btnGerarPix.removeAttribute('disabled');
        console.log(txtValor.value)
        const pix = new Pix(
          dados["NumeroPix"],
          "",
          dados["Nome"].normalize("NFD").replace(/[\u0300-\u036f]/g, ""),
          dados["Cidade"].normalize("NFD").replace(/[\u0300-\u036f]/g, ""),
          "1",
          valorTxt
        );
        const payload = pix.getPayload();
        console.log(payload);
        qrcodeContainer.innerHTML = "";
        new QRCode(qrcodeContainer, {
            text: payload,
            width: 186,
            height: 187,
        });
    });
  });
}
  





