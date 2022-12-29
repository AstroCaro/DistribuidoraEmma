<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <title>Distribuidora Emma</title>
    <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
        crossorigin="anonymous">
    <!-----------Swiper---------->
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <!-----------Slick---------->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css" rel="stylesheet">
    <!-----------FontAwesome---------->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-----------Boxicon---------->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <!-----------MyStyle---------->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-----------Icono---------->
    <link rel="icon" href="images/dropwater.ico">
    <!-----------Responsive---------->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Expires" content="0">
    <!--para que no guarde cache y datos de navegacion-->
    <meta http-equiv="Last-Modified" content="0">
    <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <!--<script type="text/javascript" src="funciones.js"></script> -->

</head>

<body id="cuerpo" class="hidden">

    <header id="cabecera">
    <jsp:include page="/partials/header.jsp"></jsp:include>
    </header>
    <!-- Whatsapp logo fixed -->

    <a href="https://api.whatsapp.com/send?phone=542995044968&text=Hola%21%20Quisiera%20m%C3%A1s%20informaci%C3%B3n%20sobre%20sus%20productos%20." class="float" target="_blank">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 175.216 175.552"><defs><linearGradient id="b" x1="85.915" x2="86.535" y1="32.567" y2="137.092" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#57d163"/><stop offset="1" stop-color="#23b33a"/></linearGradient><filter id="a" width="1.115" height="1.114" x="-.057" y="-.057" color-interpolation-filters="sRGB"><feGaussianBlur stdDeviation="3.531"/></filter></defs><path fill="#b3b3b3" d="m54.532 138.45 2.235 1.324c9.387 5.571 20.15 8.518 31.126 8.523h.023c33.707 0 61.139-27.426 61.153-61.135.006-16.335-6.349-31.696-17.895-43.251A60.75 60.75 0 0 0 87.94 25.983c-33.733 0-61.166 27.423-61.178 61.13a60.98 60.98 0 0 0 9.349 32.535l1.455 2.312-6.179 22.558zm-40.811 23.544L24.16 123.88c-6.438-11.154-9.825-23.808-9.821-36.772.017-40.556 33.021-73.55 73.578-73.55 19.681.01 38.154 7.669 52.047 21.572s21.537 32.383 21.53 52.037c-.018 40.553-33.027 73.553-73.578 73.553h-.032c-12.313-.005-24.412-3.094-35.159-8.954zm0 0" filter="url(#a)"/><path fill="#fff" d="m12.966 161.238 10.439-38.114a73.42 73.42 0 0 1-9.821-36.772c.017-40.556 33.021-73.55 73.578-73.55 19.681.01 38.154 7.669 52.047 21.572s21.537 32.383 21.53 52.037c-.018 40.553-33.027 73.553-73.578 73.553h-.032c-12.313-.005-24.412-3.094-35.159-8.954z"/><path fill="url(#linearGradient1780)" d="M87.184 25.227c-33.733 0-61.166 27.423-61.178 61.13a60.98 60.98 0 0 0 9.349 32.535l1.455 2.312-6.179 22.559 23.146-6.069 2.235 1.324c9.387 5.571 20.15 8.518 31.126 8.524h.023c33.707 0 61.14-27.426 61.153-61.135a60.75 60.75 0 0 0-17.895-43.251 60.75 60.75 0 0 0-43.235-17.929z"/><path fill="url(#b)" d="M87.184 25.227c-33.733 0-61.166 27.423-61.178 61.13a60.98 60.98 0 0 0 9.349 32.535l1.455 2.313-6.179 22.558 23.146-6.069 2.235 1.324c9.387 5.571 20.15 8.517 31.126 8.523h.023c33.707 0 61.14-27.426 61.153-61.135a60.75 60.75 0 0 0-17.895-43.251 60.75 60.75 0 0 0-43.235-17.928z"/><path fill="#fff" fill-rule="evenodd" d="M68.772 55.603c-1.378-3.061-2.828-3.123-4.137-3.176l-3.524-.043c-1.226 0-3.218.46-4.902 2.3s-6.435 6.287-6.435 15.332 6.588 17.785 7.506 19.013 12.718 20.381 31.405 27.75c15.529 6.124 18.689 4.906 22.061 4.6s10.877-4.447 12.408-8.74 1.532-7.971 1.073-8.74-1.685-1.226-3.525-2.146-10.877-5.367-12.562-5.981-2.91-.919-4.137.921-4.746 5.979-5.819 7.206-2.144 1.381-3.984.462-7.76-2.861-14.784-9.124c-5.465-4.873-9.154-10.891-10.228-12.73s-.114-2.835.808-3.751c.825-.824 1.838-2.147 2.759-3.22s1.224-1.84 1.836-3.065.307-2.301-.153-3.22-4.032-10.011-5.666-13.647"/></svg>
    </a>
    <section id="inicio">
    <jsp:include page="/partials/inicio.jsp"></jsp:include>
    </section>

    <!--++++++++PRODUCTOS++++++++-->
    <section id="productos" class="container-slider">
        <div class="titulo titulo-dark">
            <h6>El mejor precio y calidad</h6>
            <h2>Nuestros productos</h2>
        </div>
        <div style="position: relative;
        overflow: hidden; box-sizing: border-box;">
            <div>
                <div class="container-padding">
                    <div thumbsSlider="" class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="slider-img-wrap">
                                    <div class="slider-img-inner">
                                        <img src="images/nuevasimg/bidon1.png" />
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="slider-img-wrap">
                                    <div class="slider-img-inner">
                                        <img src="images/nuevasimg/bidon2.png" />
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="slider-img-wrap">
                                    <div class="slider-img-inner">
                                        <img src="images/nuevasimg/sifon.png" />
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="slider-img-wrap">
                                    <div class="slider-img-inner">
                                        <img src="images/nuevasimg/dispenser.png" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="swiper-arrows swiper-button-prev">
                        <span class="swiper-arrow-icon">
                                    <svg class="svg-arrow svg-arrow-left" data-name="Layer 1"
                                        xmlns="http://www.w3.org/2000/svg" width="50.56" height="9"
                                        viewBox="0 0 50.56 9">
                                        <path fill="var(--other-blue-color)" fill-rule="evenodd"
                                            d="M4.33 0L5 .57 1.7 4h48.86v1H1.7L5 8.43 4.33 9 0 4.5 4.33 0z"></path>
                                    </svg>
                                </span>
                    </div>
                    <div class="swiper-arrows swiper-button-next">
                        <span class="swiper-arrow-icon">
                                    <svg class="svg-arrow svg-arrow-right" data-name="Layer 1"
                                        xmlns="http://www.w3.org/2000/svg" width="50.56" height="9"
                                        viewBox="0 0 50.56 9">
                                        <path fill="var(--other-blue-color)" fill-rule="evenodd"
                                            d="M50.56 4.5L46.23 9l-.67-.57L48.86 5H0V4h48.86L45.56.57l.67-.57 4.33 4.5z ">
                                        </path>
                                    </svg>
                                </span>
                    </div>

                </div>
                <div class="banner-descripcion">
                    <div style="
              --swiper-navigation-color: #fff;
              --swiper-pagination-color: #fff;
            " class="swiper mySwiper2">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="contenedor-descripcion">
                                    <div class="overview-descripcion">
                                        <h3>Bidón</h3>
                                        <h4>20 l</h4>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod diam purus, scelerisque congue elit aliquet quis. Mauris sed ligula at ante tempus dictum ut vel tortor
                                        </p>
                                        <div class="btn-producto">
                                            <a href="${pageContext.request.contextPath}/products/list.do" class="btn-pedido">
                                                        Hacé tu pedido
                                                    </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="contenedor-descripcion">
                                    <div class="overview-descripcion">
                                        <h3>Bidón </h3>
                                        <h4>12 l</h4>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod diam purus, scelerisque congue elit aliquet quis. Mauris sed ligula at ante tempus dictum ut vel tortor
                                        </p>
                                        <div class="btn-producto">
                                            <a href="${pageContext.request.contextPath}/products/list.do" class="btn-pedido">
                                                 Hacé tu pedido
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="contenedor-descripcion">
                                    <div class="overview-descripcion">
                                        <h3>Sifón de soda </h3>
                                        <h4>2 l</h4>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod diam purus, scelerisque congue elit aliquet quis. Mauris sed ligula at ante tempus dictum ut vel tortor
                                        </p>
                                        <div class="btn-producto">
                                            <a href="${pageContext.request.contextPath}/products/list.do" class="btn-pedido">
                                                        Hacé tu pedido
                                                    </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="contenedor-descripcion">
                                    <div class="overview-descripcion">
                                        <h3>Dispenser</h3>
                                        <h5>Común</h5>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod diam purus, scelerisque congue elit aliquet quis. Mauris sed ligula at ante tempus dictum ut vel tortor
                                        </p>
                                        <div class="btn-producto">
                                            <a href="${pageContext.request.contextPath}/products/list.do" class="btn-pedido">
                                                        Hacé tu pedido
                                                    </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="section-end">
            <div class="pattern-wave-one">

            </div>
        </div> -->
    </section>

    <!--++++++++SERVICIOS++++++++-->
    <section id="servicios">
        <!-- <div class="section-end">
            <div class="pattern-wave-two">

            </div>
        </div> -->
        <div>
            <div class="titulo titulo-dark">
                <h6>Sobre nosotros</h6>
                <h2>Por qué elegirnos</h2>
            </div>
            <div id="container">
                <div id="imagencentro">
                    <img src="images/bidonsplashsinfondo-04.png" alt="repartidor de agua">
                </div>


                <div class="box" id="box3">
                    <!--card-->
                    <div class="item" id="item1" data-text="Calidad">
                        <!--imgBx-->
                        <img src="images/water.png" alt="icono bidon de agua">
                    </div>
                    <div class="content">
                        <div>
                            <h3>Calidad</h3>
                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="box" id="box2">
                    <div class="item" id="item2" data-text="Comodidad">
                        <img src="images/icon-delivery.png" alt="icono delivery de agua envasada">
                    </div>
                    <div class="content">
                        <div>
                            <h3>Comodidad</h3>
                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="box" id="box3">
                    <div class="item" data-text="Garantía">
                        <img src="images/reparacion.png" alt="icono reparacion">
                    </div>
                    <div class="content">
                        <div>
                            <h3>Mantenimiento</h3>
                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos..
                            </p>
                        </div>
                    </div>
                </div>

                <div class="box" id="box4">
                    <div class="item" data-text="Confiabilidad">
                        <img src="images/telefono.png" alt="icono telefono">
                    </div>
                    <div class="content">
                        <div>
                            <h3>Atención Personalizada</h3>
                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section id="comoordenar">

        <div class="titulo titulo-light">
            <h2>Rápido & fácil</h2>
        </div>
        <div id="pasos">
            <div id="paso1">
                <div class="pasos-img">
                    <img class="pasos-svg" src="images/comoordenar/paso1.svg" alt="">
                </div>
                <div class="pasos-descripcion">
                    <h4>Elegí el producto</h4>
                    <p>Encontrá el producto que mejor se adapte a tus necesidades.</p>
                </div>
            </div>
            <div id="paso2">
                <div class="pasos-img">
                    <img class="pasos-svg" src="images/comoordenar/paso2.svg" alt="">
                </div>
                <div class="pasos-descripcion">
                    <h4>Comunicate con nosotros</h4>
                    <p>Contactate con nosotros por teléfono, mail o Whatsapp para coordinar la fecha y domicilio de entrega.
                    </p>
                </div>
            </div>
            <div id="paso3">
                <div class="pasos-img">
                    <img class="pasos-svg" src="images/comoordenar/paso3.svg" alt="">
                </div>
                <div class="pasos-descripcion">
                    <h4>Espera tu pedido</h4>
                    <p>El repartidor se encargará de entregar su pedido en la puerta de su domicilio.</p>
                </div>
            </div>
        </div>
        <div id="waves">
            <div class="wave" id="wave1"></div>
            <div class="wave" id="wave2"></div>
            <div class="wave" id="wave3"></div>
            <div class="wave" id="wave4"></div>
        </div>
    </section>

    <section id="contacto">
        <div class="titulo titulo-dark">
            <h6>Hacé tu pedido</h6>
            <h2>Contactanos</h2>
        </div>
        <div class="contacto-formulario">
            <div class="formulario">
                <form action="" method="post">
                    <div class="box-input">
                        <input type="text" name="introducir_nombre" id="nombre" placeholder=" " required="obligatorio">
                        <label for="nombre" class="colocar_nombre">
                            Nombre
                        </label>
                    </div>
                    <div class="box-input">
                        <input type="email" name="introducir_email" id="email" placeholder=" " required="obligatorio">
                        <label for="email" class="colocar_email">
                            Email
                        </label>
                    </div>
                    <div class="box-input">
                        <input type="tel" name="introducir_telefono" placeholder=" " id="telefono">
                        <label for="telefone" class="colocar_telefono">Teléfono
                        </label>
                    </div>
                    <div class="box-input">
                        <textarea name="introducir_mensaje" class="texto_mensaje" id="mensaje" rows="5" required="obligatorio"></textarea>
                        <label for="mensaje" class="colocar_mensaje">Escribe tu mensaje aquí

                        </label>
                    </div>
                    <div class="box-input">
                        <input type="submit" name="enviar_formulario" value="Enviar">
                    </div>
                </form>
            </div>
            <div class="contacto-img">
                <img src="images/distribuidoraemmadelivery-der.png" alt="">
            </div>
        </div>
        <!-- <div id="llamanos">
            <p>Llamanos al</p>
            <span>(0299) 5044968</span>
        </div> -->
    </section>

    <footer>
        <div class="footer-info">
            <div id="footer-logo">
                <img src="images/LogoDistribuidoraEmma3.svg" alt="LogoDistribuidoraEmma" id="logo-img">
                <div id="contactanos-whatsapp">
                    <div id="contactanos-whatsapp-btn">
                        <span class="logo-whatsapp"><i class='bx bxl-whatsapp'></i></span>
                        <a href="https://api.whatsapp.com/send?phone=542995044968&text=Hola!%20Quisiera%20encargarles%20uno%20de%20los%20productos%20que%20v%C3%AD%20en%20su%20sitio%20web.%20">Hacé tu pedido por Whatsapp</a>
                    </div>
                </div>
            </div>
            <div id="contactos">
                <h6>Contactanos</h6>
                <ul>
                    <li>
                        <a href="">
                            <div class="icon">
                                <i class='bx bx-envelope'></i>
                            </div>
                            <span class="link">
                            distribuidoraemma@gmail.com
                        </span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="icon">
                                <i class='bx bx-phone'></i>
                            </div>
                            <span class="link">
                            (0299) 5044968
                        </span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="icon">
                                <i class='bx bx-time-five'></i>
                            </div>
                            <span class="link">
                            Lunes a viernes de 8hs a 20hs
                        </span>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="encontranos">
                <h6>Encontranos</h6>
                <ul>
                    <li>
                        <a href="https://www.facebook.com/">
                            <div class="icon">
                                <i class='bx bxl-facebook-circle'></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/">
                            <div class="icon">
                                <i class='bx bxl-instagram'></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.whatsapp.com/">
                            <div class="icon">
                                <i class='bx bxl-whatsapp'></i>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--<nav>

    </nav>-->
        <div class="copyright text-center">
            &copy; 2022 - <span>Distribuidora Emma</span>. Todos los derechos reservados. Desarrollado con <i class="fa fa-heart" aria-hidden="true"> </i> por <a href="" class="white-text">AstroCaro</a>.
        </div>

    </footer>


    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <script type="text/javascript" src="functions.js"></script>


    <!-- <script type="text/javascript">
        $(function() {
            $('.slider').slick({
                arrows: true,
                infinite: false,
                centerMode: true,
                centerPadding: "10px",
                slidesToShow: 3,
                slidesToScroll: 1,
                swipeToSlide: true,
                nextArrow: '<span class="next_arrow"><i class="fa fa-long-arrow-right" aria-hidden="false"></i></span>',
                prevArrow: '<span class="prev_arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></span>',
                asNavFor: '.banner_slider',
                responsive: [{
                    breakpoint: 1024,
                    settings: {
                        arrows: true,
                        infinite: false,
                        centerMode: true,
                        centerPadding: "10px",
                        slidesToShow: 2,
                        slidesToScroll: 1,

                    }
                }, {
                    breakpoint: 600,
                    settings: {
                        arrows: true,
                        infinite: false,
                        centerMode: true,
                        slidesToShow: 1,
                        slidesToScroll: 2
                    }
                }, ]
            });
            $('.banner_slider').slick({
                infinite: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                asNavFor: '.slider'
            });
        });
    </script> -->

</body>

</html>