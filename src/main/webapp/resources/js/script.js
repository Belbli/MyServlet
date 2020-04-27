/*
var submitBtns = document.querySelectorAll(".submit-btn");
var shadow = document.querySelector(".shadow");
var registration = document.getElementById("form");
var signInBtn = document.querySelector(".sign-button");
const signIn = document.querySelector('.sign-in');
const signUp = document.querySelector('.sign-up');
const loginField = document.querySelector('.login');


signInBtn.addEventListener('click', () => {
    if(loginField.value.length > 7 && loginField.value.length < 32){
      shadow.style.display = "block";
      registration.style.display = "block";
    } else {
        loginField.style.border = "solid red"
    }
});


registration.addEventListener('mouseover', () => {
    registration.classList.toggle('active');
});

registration.addEventListener('mouseout', () => {
    registration.classList.remove('active');
});

shadow.addEventListener('click', () => {
  if(registration.classList.contains('active') === false){
    registration.style.display = "none";
    shadow.style.display = "none";
  }
});

for(let i = 0; i < submitBtns.length; i++) {
  submitBtns[i].addEventListener('click', () => {
    shadow.style.display = "none";
    registration.style.display = "none";
     console.log('hellloooo');
  });
}

var galleryThumbs = new Swiper('.gallery-thumbs', {
  loop: true,
  spaceBetween: 10,
  slidesPerView: 3,
  freeMode: true,
  watchSlidesVisibility: true,
  watchSlidesProgress: true,
  
});
var galleryTop = new Swiper('.gallery-top', {
  loop: true,
  spaceBetween: 10,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  thumbs: {
    swiper: galleryThumbs
  },
  autoplay: {
    delay: 5000,
},
});

function disp(registration) {
  if (registration.style.display == "none") {
      registration.style.display = "block";
  } else {
      registration.style.display = "none";
  }
}*/

var submitBtns = document.querySelectorAll(".submit-btn");
var shadow = document.querySelector(".shadow");
const registration = document.getElementById("form");
var signInBtn = document.querySelector(".sign-button");
const signIn = document.querySelector('.sign-in');
const signUp = document.querySelector('.sign-up');
const body = document.querySelector('.body');
const loginField = document.querySelector('.login');
const pwdField = document.querySelector('.password');


signInBtn.addEventListener('click', () => {
    shadow.style.display = "block";
    registration.style.display = "block";

});

registration.addEventListener('mouseover', () => {
    registration.classList.toggle('active');
});

registration.addEventListener('mouseout', () => {
    registration.classList.remove('active');
});

shadow.addEventListener('click', () => {
  if(registration.classList.contains('active') === false){
    registration.style.display = "none";
    shadow.style.display = "none";
  }
});

for(let i = 0; i < submitBtns.length; i++) {
  submitBtns[i].addEventListener('click', () => {
  if(loginField.value.length > 7 && loginField.value.length < 32 && pwdField.value.length > 7 && pwdField.value.length < 32){
    shadow.style.display = "none";
    registration.style.display = "none";
  }
  });
}

var galleryThumbs = new Swiper('.gallery-thumbs', {
  loop: true,
  spaceBetween: 10,
  slidesPerView: 3,
  freeMode: true,
  watchSlidesVisibility: true,
  watchSlidesProgress: true,

});
var galleryTop = new Swiper('.gallery-top', {
  loop: true,
  spaceBetween: 10,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  thumbs: {
    swiper: galleryThumbs
  },
  autoplay: {
    delay: 5000,
},
});

function disp(registration) {
  if (registration.style.display == "none") {
      registration.style.display = "block";
  } else {
      registration.style.display = "none";
  }
}
