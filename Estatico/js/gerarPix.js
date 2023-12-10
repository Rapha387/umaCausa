const btnGerarPix = document.querySelector('#btnGerarPix');
const qrcodeContainer = document.getElementById("qrcode");
const txtValor = document.getElementById("txtValor");

if (btnGerarPix) {
  btnGerarPix.addEventListener('click', function(e){
    e.preventDefault();

    if (txtValor.value == "") {
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
          dados["Nome"],
          dados["Cidade"],
            "1",
          valorTxt
        );
        const payload = pix.getPayload();
        qrcodeContainer.innerHTML = "";
        new QRCode(qrcodeContainer, {
            text: payload,
            width: 186,
            height: 187,
        });
    });
  });
}
  





