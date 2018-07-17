// Given the following URL : https://api.myjson.com/bins/bygvt containing a JSON object about your favorite GOT character.
// Create a AJAX call for that url to grab the JSON data and log the result in your console.
// Loop through the aliases array and console log out the results
// Return the value of 'actor' in the 'playedBy' object.
// Append the name of the actor to the dom to a p element with the id of "my-actor"

// const axios = require('axios');

axios.get('https://api.myjson.com/bins/bygvt').then((response) => {
	console.log(response);
	let aliases = response.data.aliases;
	for(i=0; i < aliases.length; i++) {
		console.log(aliases[i]);
	};
	const text = document.createTextNode(response.data.playedBy.actor);
	let newEl = document.createElement("p");
	newEl.setAttribute("id", "my-actor");
	newEl.appendChild(text);
	document.getElementById("target").appendChild(newEl)
})

let url = response.data.url
let link = document.

link.setAttribute("href", url)