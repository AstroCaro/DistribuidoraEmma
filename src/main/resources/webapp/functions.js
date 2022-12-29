//*********LOADER***********//
window.onload = function() {
        $('#onload').fadeOut()
        $('body').removeClass('hidden')
    }
    //*********SCROLLING NAV***********//
window.addEventListener('scroll', function() {
        let header = this.document.querySelector('header');
        let windowposition = window.scrollY > 0;
        header.classList.toggle('scrolling-active', windowposition);
    })
    //*********SLIDER***********//
var swiper = new Swiper(".mySwiper", {
    slidesPerView: 3,
    spaceBetween: 200,
    speed: 500,
    updateOnWindowResize: true,
    centeredSlides: true,
    simulateTouch: true,
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
    freeMode: true,
    preventInteractionOnTransition: false,
    initialSlide: 0,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
    },
    enabled: true,
    on: {
        transitionEnd: function() {
            swiper.params.speed = 2000;
        },
        touchStart: function() {
            featuredSwiper.params.speed = 2000;
        },
    },
    on: {
        click(event) {
            console.log('event.target', this.clickedIndex);
            swiper.slideTo(this.clickedIndex);
        },
    },
});
var swiper2 = new Swiper(".mySwiper2", {
    spaceBetween: 10,
    preventInteractionOnTransition: true,
    noSwiping: true,
    allowTouchMove: false,
    effect: 'fade',
    fadeEffect: {
        crossFade: true
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
    },
    thumbs: {
        swiper: swiper
    }
});