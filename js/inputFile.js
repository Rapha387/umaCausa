

const fileInput = document.getElementById('fileInput');
const elementToStyle = document.querySelector('.textoInputFile');

fileInput.addEventListener('change', () => {
  if (fileInput.files.length > 0) {
    elementToStyle.classList.add('file-selected');
    elementToStyle.innerHTML = `Arquivo Selecionado ${fileInput.files[0].name}`;
    
  } else {
    elementToStyle.classList.remove('file-selected');
    elementToStyle.innerHTML = "Escolher Arquivo"
  }
});






