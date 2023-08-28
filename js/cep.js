const cep = document.querySelector("#txtCep");
const numero = document.querySelector("#txtNumero");
const logadouro = document.querySelector("#txtLogadouro");
const bairro = document.querySelector("#txtBairro");
const complemento = document.querySelector("#txtComplemento");
const cidade = document.querySelector("#txtCidade");
const estados = document.querySelector("#txtUF");


function validarCep(cep) {
  if (cep.length != 8 || isNaN(cep)) {
      return false;
  } else {
      return true;
  }
}

function clearInputs() {
  logadouro.value = "";
  bairro.value = "";
  complemento.value = "";
  cidade.value = "";
  estados.value = "";
  numero.value = "";
}

function changeInputs(endereco) {
  if (endereco.erro) {
    return clearInputs();
  }

  logadouro.value = endereco.logradouro;
  bairro.value = endereco.bairro;
  complemento.value = endereco.complemento;
  cidade.value = endereco.localidade;
  estados.value = endereco.uf;
  numero.value = "";
}

async function fetchEndereco(cep) {
  const res = await fetch(`https://viacep.com.br/ws/${cep}/json/`);
  return await res.json();
}

function Main() {
  cep.addEventListener("keyup", (e) => {
    const cep = e.target.value;
    const validCep = validarCep(cep);
    if (validCep) fetchEndereco(cep).then((res) => changeInputs(res));
  });
}

window.onload = Main();