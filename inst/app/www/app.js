const hambElement = document.querySelector('.hamb');
const navElement = document.querySelector('.side-wrapper');
const closeElement = document.querySelector('.close-icon');

hambElement.addEventListener('click', () => {
    navElement.classList.toggle('visible');
});

closeElement.addEventListener('click', () => {
    navElement.classList.toggle('visible');
});
