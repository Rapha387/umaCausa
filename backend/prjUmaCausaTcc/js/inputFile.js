

const fileInputLogo = document.getElementById('fileInputLogo');
const fileInputBanner = document.getElementById('fileInputBanner');
const elementToStyle = document.querySelector('.textoInputFile');
const nomeArquivoLogo = document.getElementById('nomeArquivoLogo')
const nomeArquivoBanner = document.getElementById('nomeArquivoBanner')
const imagemBanner = document.querySelector('.espaco-imagem-banner')
const imagemLogo = document.querySelector('.espaco-imagem-logo')

fileInputLogo.addEventListener('change', () => {
    if (fileInputLogo.files.length > 0) {
    const file = fileInputLogo.files[0];
    const reader = new FileReader();
    reader.onload = function (e) {
        imagemLogo.style = `background: url(${e.target.result}) center no-repeat; background-size: cover`;
    };

    reader.readAsDataURL(file);

    elementToStyle.classList.add('file-selected');
    nomeArquivoLogo.textContent = `${fileInputLogo.files[0].name}`;
    
  } else {
    elementToStyle.classList.remove('file-selected');
    nomeArquivoLogo.textContent = "Foto quadrada em JPG"
  }
});


if (fileInputBanner) {
    fileInputBanner.addEventListener('change', () => {
        if (fileInputBanner.files.length > 0) {
            const file = fileInputBanner.files[0];
            const reader = new FileReader();
            reader.onload = function (e) {
                imagemBanner.style = `background: url(${e.target.result}) center no-repeat; background-size: cover`;
            };

            reader.readAsDataURL(file);

            elementToStyle.classList.add('file-selected');
            nomeArquivoBanner.textContent = `${fileInputBanner.files[0].name}`;

        } else {
            elementToStyle.classList.remove('file-selected');
            nomeArquivoBanner.textContent = "Foto retangular em JPG"
        }
    });
}




