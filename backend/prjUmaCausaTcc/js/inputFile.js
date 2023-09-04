

const fileInput = document.getElementById('fileInput');
const elementToStyle = document.querySelector('.textoInputFile');
const nomeArquivo = document.getElementById('nomeArquivo')

fileInput.addEventListener('change', () => {
  if (fileInput.files.length > 0) {
    elementToStyle.classList.add('file-selected');
    nomeArquivo.textContent = `${fileInput.files[0].name}`;
    
  } else {
    elementToStyle.classList.remove('file-selected');
    nomeArquivo.textContent = "Foto quadrada em JPG 4MB"
  }
});






