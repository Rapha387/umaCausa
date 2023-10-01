const swiperCampanhasProximas = new Swiper('#campanhasProximas',{
  // Optional parameters
  direction: 'horizontal',
  

  spaceBetween: 103,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  breakpoints: {
    550: {
        slidesPerView: 2,
        spaceBetween: 30,
    },
    740: {
        slidesPerView: 2,
        spaceBetween: 110,
    },
    1000: {
        slidesPerView: 3,
        spaceBetween: 103,
    }
}
});

const swiperCampanhasAcabando = new Swiper('#campanhasAcabando',{
  // Optional parameters
  direction: 'horizontal',

  spaceBetween: 103,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  breakpoints: {
    550: {
        slidesPerView: 2,
        spaceBetween: 30,
    },
    740: {
        slidesPerView: 2,
        spaceBetween: 110,
    },
    1000: {
        slidesPerView: 3,
        spaceBetween: 103,
    }
}
});

const swiperCampanhasAtuais= new Swiper('#campanhasAtuais',{
  slidesPerView: 2,
  // Optional parameters
  direction: 'horizontal',

  spaceBetween: 50,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});


const swiperOngs = new Swiper('#ongs',{
  // Optional parameters
  direction: 'horizontal',

  spaceBetween: 39,
  // If we need pagination
  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  breakpoints: {
    330: {
        slidesPerView: 2,
        spaceBetween: 20,
    },
    400: {
        slidesPerView: 2,
        spaceBetween: 50,
    },
    520: {
        slidesPerView: 3,
        spaceBetween: 30,
    },
    660: {
        slidesPerView: 4,
        spaceBetween: 30,
    },
    830: {
        slidesPerView: 5,
        spaceBetween: 30,
    },
    1000: {
        slidesPerView: 6,
        spaceBetween: 30,
    },
    1200: {
        slidesPerView: 6,
        spaceBetween: 49,
    }
}
});
