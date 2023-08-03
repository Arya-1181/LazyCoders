// Dropdown menu
const accountBtn = document.querySelector('.account-btn');
const accountDropdown = document.querySelector('.account-dropdown');

accountBtn.addEventListener('click', () => {
	accountDropdown.style.display = accountDropdown.style.display === 'none' ? 'block' : 'none';
});

document.addEventListener('click', (event) => {
	if (!event.target.matches('.account-btn') && !event.target.closest('.account-dropdown')) {
		accountDropdown.style.display = 'none';
	}
});
const leftButton = document.querySelector('.left-button');
const rightButton = document.querySelector('.right-button');
const categoryCards = document.querySelectorAll('.category-card');

let activeCardIndex = 0;

leftButton.addEventListener('click', () => {
	activeCardIndex = (activeCardIndex - 1 + categoryCards.length) % categoryCards.length;
	updateActiveCard();
});

rightButton.addEventListener('click', () => {
	activeCardIndex = (activeCardIndex + 1) % categoryCards.length;
	updateActiveCard();
});

function updateActiveCard() {
	categoryCards.forEach((card, index) => {
		card.classList.toggle('active', index === activeCardIndex);
	});
}
function showPopupMessage() {
	var popup = document.createElement("div");
	popup.className = "popup-message";
	popup.innerHTML = "Added to cart";
	document.body.appendChild(popup);

	setTimeout(function() {
		document.body.removeChild(popup);
	}, 2000);
}

document.querySelector(".buy-button").addEventListener("click",
	function() {
		showPopupMessage();
	});
