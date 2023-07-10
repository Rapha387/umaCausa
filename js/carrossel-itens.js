const swiperCampanhasProximas = new Swiper('#campanhasProximas',{
  slidesPerView: 5,
  // Optional parameters
  direction: 'horizontal',
  

  spaceBetween: 39,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});

const swiperCampanhasAcabando = new Swiper('#campanhasAcabando',{
  slidesPerView: 5,
  // Optional parameters
  direction: 'horizontal',

  spaceBetween: 39,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});


const swiperOngs = new Swiper('#ongs',{
  slidesPerView: 6,
  // Optional parameters
  direction: 'horizontal',

  spaceBetween: 39,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});
