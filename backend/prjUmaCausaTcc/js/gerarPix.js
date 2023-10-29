
const qrcodeContainer = document.getElementById("qrcode");

if (btnGerarPix) {
  btnGerarPix.addEventListener('click', function(e){
    e.preventDefault();
    erroDoacaoMonetaria.textContent = ""

    if (txtValor.value == "") {
        txtValor.classList.add('inputInvalido');
        erroDoacaoMonetaria.textContent = "O valor nao pode estar vazio"
        return;
    }

    let valorTxt = parseFloat(txtValor.value);
    const urlParams = new URLSearchParams(window.location.search);
    const ong = urlParams.get('ong');
    const campanha = urlParams.get('c');

    console.log(ong);

    btnGerarPix.setAttribute('disabled', 'true');
  
    fetch(`http://localhost:50944/JsonResponses/BuscarDadosPixOng.aspx?ong=${ong}&c=${campanha}`)
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
        botaoCopiarPix.innerHTML = "<img src='./../images/icons/copiar.png' alt=''> Copiar Codigo Pix"
        txtPix.value = payload;
        qrcodeContainer.innerHTML = "";
        new QRCode(qrcodeContainer, {
            text: payload,
            width: 186,
            height: 187,
        });
    });
  });
}
  





