const items = document.querySelectorAll(".nav-items-derecha .nav-item> a");
const html = document.querySelector("html");
const menu_usuario = document.querySelector(".menu-usuario");
const cart = document.querySelector(".cart");
const profile = document.querySelector(".profile");
const iconCart = document.querySelector(".icon-cart");

//*********MENU DESPLEGABLE**********//
function activaritem() {

	this.classList.toggle("active");
}
items.forEach(item => item.addEventListener("click", activaritem));

profile.addEventListener("click", () => {
	menu_usuario.classList.toggle("mostrar-menu-usuario");
});

iconCart.addEventListener("click", () => {
	cart.classList.toggle("mostrar-cart");
});

//*********RANGO DE PRECIOS**********//
$(function() {
    $("#slider-range").slider(
		{
					range : true,
					min : 0,
					max : 20000,
					values : [ 2000, 15000 ],
					slide : function(event, ui) {
						$('.ui-slider-handle:eq(0) .price-range-min').html(
								'$'
										+ ui.values[0]);
						$('.ui-slider-handle:eq(1) .price-range-max').html(
								'$'
										+ ui.values[1]);
					}
				});
	$('.ui-slider-handle:eq(0)')
		.append(
				'<div> <span class="price-range-min value">$'
				+ $('#slider-range').slider('values', 0)
	    		+ '</span></div>');
		$('.ui-slider-handle:eq(1)')
		.append(
			    '<div><span class="price-range-max value">$'
				+ $('#slider-range').slider('values', 1)
				+ '</span></div>');
});