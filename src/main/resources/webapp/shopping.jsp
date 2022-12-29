<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
              href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
        <script>
        </script>
        <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'
              rel='stylesheet'>
        <!-----------MyStyle---------->
        <link rel="stylesheet" href="../assets/css/estilos_cuenta_usuario.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/style.css">


        <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous" defer></script>
        <script src="https://kit.fontawesome.com/7cc28fa7fa.js"
                crossorigin="anonymous"></script>
        <script type="text/javascript" src="../assets/js/usuario_app.js" defer></script>

        <title>Nuestros Productos</title>
    </head>
    <body>
    <header id="cabecera">
        <div id="logo">
            <div id="logo-img"></div>
        </div>
        <div>
            <div id="contactanos" class="nav-items-derecha">
                <ul class="nav">
                    <li class="nav-item action">
                        <a class="nav-link profile" aria-current="page" href="#">
                            <div class="icon">
                                <i class='bx bx-user'></i>
                                <i class='bx bxs-user'></i>
                            </div>
                        </a>
                        <div class="menu-usuario fondo">
                            <h5>Hola Digit@lers</h5>
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class='bx bx-user-circle'></i>
                                        <span>Mi Perfil</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class='bx bx-cog'></i>
                                        <span>Configuración</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class='bx bx-log-out'></i>
                                        <span>Cerrar Sesión</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item action">
                        <a class="nav-link icon-cart" aria-current="page" href="#">
                            <div class="icon">
                                <i class='bx bx-cart'></i>
                                <i class='bx bxs-cart'></i>
                            </div>
                        </a>
                        <div class="cart fondo">
                            <div class="after"></div>
                            <!-- TODO modelo de objeto nulo para cart -->
                            <c:choose>
                                <c:when test="${empty checkout.orderItems}">
                                    <h5 class="text-center">Su carrito se encuentra vacio</h5>
                                </c:when>
                                <c:when test="${not empty checkout.orderItems}">
                                    <!-- otherwise -->
                                    <h5>Su carrito incluye</h5>
                                    <ul>
                                        <c:forEach items="${checkout.orderItems}" var="item">
                                            <li>
                                                <div class="card mb-3"
                                                     style="max-width: 500px; max-height: 200px;">
                                                    <div class="row g-0">
                                                        <div class="col-md-3">
                                                            <img src="../assets/img/products/${item.product.img}.png"
                                                                 class="card-img-top"  id="card-img-top-cart"/>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="card-body">
                                                                <small>
                                                                    <p class="text-muted">
                                                                        <c:out value="${item.product.shortDescription}"></c:out>
                                                                    </p>
                                                                </small>
                                                                <h5 class="card-title">
                                                                    <c:out value="${item.product.name}"></c:out>
                                                                </h5>
                                                                <p class="card-text">
                                                                    <c:out value="${fn:substring(item.product.description,0,80)}"></c:out>
                                                                    ...
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-detalles">
                                                            <div class="detalles">
                                                                <div class="costo">
                                                                    <span>
                                                                        $<c:out value="${item.product.price}"></c:out>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 col-delete">
                                                            <a class="" aria-current="page" href="deleteOrderItem.do?id=${item.id}">
                                                                <div class="icon-delete">
                                                                    <i class='bx bxs-trash'></i>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                    <div class="total">
                                        <h3>Total:</h3>
                                        <div class="total-detalles">
                                            <div class="costo">
                                                <span>
                                                    $<c:out value="${checkout.totalPrice}"></c:out>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ver-cart">
                                        <a href="#">
                                            <span>Ver detalle</span>
                                            <div>
                                                <i class='bx bxs-right-arrow-alt'></i>
                                            </div>
                                        </a>
                                    </div>
                                </c:when>
                            </c:choose>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div>
            <nav id="botonera">
                <ul>
                    <li><a href="../">Inicio</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <!-- Whatsapp logo fixed -->

    <a href="https://api.whatsapp.com/send?phone=542995044968&text=Hola%21%20Quisiera%20m%C3%A1s%20informaci%C3%B3n%20sobre%20sus%20productos%20."
       class="float" target="_blank">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 175.216 175.552">
            <defs>
                <linearGradient id="b" x1="85.915" x2="86.535" y1="32.567" y2="137.092" gradientUnits="userSpaceOnUse">
                    <stop offset="0" stop-color="#57d163"/>
                    <stop offset="1" stop-color="#23b33a"/>
                </linearGradient>
                <filter id="a" width="1.115" height="1.114" x="-.057" y="-.057" color-interpolation-filters="sRGB">
                    <feGaussianBlur stdDeviation="3.531"/>
                </filter>
            </defs>
            <path fill="#b3b3b3"
                  d="m54.532 138.45 2.235 1.324c9.387 5.571 20.15 8.518 31.126 8.523h.023c33.707 0 61.139-27.426 61.153-61.135.006-16.335-6.349-31.696-17.895-43.251A60.75 60.75 0 0 0 87.94 25.983c-33.733 0-61.166 27.423-61.178 61.13a60.98 60.98 0 0 0 9.349 32.535l1.455 2.312-6.179 22.558zm-40.811 23.544L24.16 123.88c-6.438-11.154-9.825-23.808-9.821-36.772.017-40.556 33.021-73.55 73.578-73.55 19.681.01 38.154 7.669 52.047 21.572s21.537 32.383 21.53 52.037c-.018 40.553-33.027 73.553-73.578 73.553h-.032c-12.313-.005-24.412-3.094-35.159-8.954zm0 0"
                  filter="url(#a)"/>
            <path fill="#fff"
                  d="m12.966 161.238 10.439-38.114a73.42 73.42 0 0 1-9.821-36.772c.017-40.556 33.021-73.55 73.578-73.55 19.681.01 38.154 7.669 52.047 21.572s21.537 32.383 21.53 52.037c-.018 40.553-33.027 73.553-73.578 73.553h-.032c-12.313-.005-24.412-3.094-35.159-8.954z"/>
            <path fill="url(#linearGradient1780)"
                  d="M87.184 25.227c-33.733 0-61.166 27.423-61.178 61.13a60.98 60.98 0 0 0 9.349 32.535l1.455 2.312-6.179 22.559 23.146-6.069 2.235 1.324c9.387 5.571 20.15 8.518 31.126 8.524h.023c33.707 0 61.14-27.426 61.153-61.135a60.75 60.75 0 0 0-17.895-43.251 60.75 60.75 0 0 0-43.235-17.929z"/>
            <path fill="url(#b)"
                  d="M87.184 25.227c-33.733 0-61.166 27.423-61.178 61.13a60.98 60.98 0 0 0 9.349 32.535l1.455 2.313-6.179 22.558 23.146-6.069 2.235 1.324c9.387 5.571 20.15 8.517 31.126 8.523h.023c33.707 0 61.14-27.426 61.153-61.135a60.75 60.75 0 0 0-17.895-43.251 60.75 60.75 0 0 0-43.235-17.928z"/>
            <path fill="#fff" fill-rule="evenodd"
                  d="M68.772 55.603c-1.378-3.061-2.828-3.123-4.137-3.176l-3.524-.043c-1.226 0-3.218.46-4.902 2.3s-6.435 6.287-6.435 15.332 6.588 17.785 7.506 19.013 12.718 20.381 31.405 27.75c15.529 6.124 18.689 4.906 22.061 4.6s10.877-4.447 12.408-8.74 1.532-7.971 1.073-8.74-1.685-1.226-3.525-2.146-10.877-5.367-12.562-5.981-2.91-.919-4.137.921-4.746 5.979-5.819 7.206-2.144 1.381-3.984.462-7.76-2.861-14.784-9.124c-5.465-4.873-9.154-10.891-10.228-12.73s-.114-2.835.808-3.751c.825-.824 1.838-2.147 2.759-3.22s1.224-1.84 1.836-3.065.307-2.301-.153-3.22-4.032-10.011-5.666-13.647"/>
        </svg>
    </a>
    <section id="inicio">
        <div class="video-background">
            <video id="video-inicio" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
                <source src="../assets/video/water_splash_bubble.mov" type="video/mp4">
            </video>
        </div>
        <div id="frase_inicio">

            <h6>Agua pura y saludable</h6>
            <h2>Llevando a tu mesa <br> agua envasada purificada</h2>
            <div id="contactanos-whatsapp">
                <div id="contactanos-whatsapp-btn">
                    <span class="logo-whatsapp"><i class='bx bxl-whatsapp'></i></span>
                    <a href="https://api.whatsapp.com/send?phone=542995044968&text=Hola!%20Quisiera%20encargarles%20uno%20de%20los%20productos%20que%20v%C3%AD%20en%20su%20sitio%20web.%20">Hacé
                        tu pedido por Whatsapp</a>
                </div>
            </div>
        </div>
    </section>

    <main>
        <section class="row pt-5">
            <div class="col-3" id="filtros-bar">
                <div class="filtros-header">
                    <h5>Filtros</h5>
                    <hr class="dropdown-divider">
                </div>
                <div id="custom-accord">
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                <button class="accordion-button" type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseOne"
                                        aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">CATEGORIA
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseOne"
                                 class="accordion-collapse collapse show"
                                 aria-labelledby="panelsStayOpen-headingOne">
                                <div class="accordion-body">
                                    <ul>
                                        <li>
                                            <label>
                                                <input type="checkbox">
                                                Bidones
                                            </label>
                                        </li>
                                        <li>
                                            <label>
                                                <input type="checkbox">
                                                Botellas
                                            </label>
                                        </li>
                                        <li>
                                            <label>
                                                <input type="checkbox">
                                                Equipamiento
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="accordion-item">
                            <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                                <button class="accordion-button collapsed" type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseThree"
                                        aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseThree">RANGO DE
                                    PRECIOS
                                </button>
                            </h2>
                            <div id="panelsStayOpen-collapseThree"
                                 class="accordion-collapse collapse"
                                 aria-labelledby="panelsStayOpen-headingThree">
								<div>
									<img id="img-rango" alt="" src="../assets/img/rango.png">
								</div>
                                <div class="accordion-body rango-precios">
                                    <div id="slider-range"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-9" id="ofertas">
                <div class="row row-cols-1 row-cols-md-3 ">
                    <c:forEach items="${products}" var="product">
                        <div class="col card-group">
                            <div class="card h-100">
                                <div class="tag-preferencia">
                                    <i class='bx bx-heart'></i>
                                </div>
                                <div class="card-img">
                                    <img src="../assets/img/products/${product.img}.png" class="card-img-top"/>
                                </div>
                                <div class="card-body">
                                    <small>
                                        <p class="text-muted">
                                            <c:out value="${product.shortDescription}"></c:out>
                                        </p>
                                    </small>
                                    <a href="">
                                        <h5 class="card-title">
                                            <c:out value="${product.name}"></c:out>
                                        </h5>
                                    </a>
                                    <p class="card-text">
                                        <c:out value="${fn:substring(product.description, 0, 120)}"></c:out>
                                        ...
                                    </p>
                                </div>
                                <div class="card-footer">
                                    <div class="costo">
                                        <img alt="" src="assets/img/usuario/coins.png">
                                        <span>
            											$<c:out value="${product.price}"></c:out>
            										</span>
                                    </div>
                                    <div>
                                        <div class="boton-agregar">
                                            <a
                                                    href="addOrderItem.do?productId=${product.id}">
                                                <input type="button" value="COMPRAR">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
    </main>
    <script>    //*********SCROLLING NAV***********//
        window.addEventListener('scroll', function() {
        let header = this.document.querySelector('header');
        let windowposition = window.scrollY > 0;
        header.classList.toggle('scrolling-active', windowposition);
        })
    </script>

    </body>
</html>