axios.get("https://www.redbullshopus.com/products.json").then((response) => {
	console.log(response);
	let products = response.data.products;
	for(i=0; i < products.length; i++) {
		console.log(products[i].images[0].src);
	};
	// const text = document.createTextNode();
	// let newEl = document.createElement("p");
	// newEl.setAttribute("id", "my-actor");
	// newEl.appendChild(text);
	// document.getElementById("target").appendChild(newEl)
})