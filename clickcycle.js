let i = 0;

right.addEventListener('click', () => {
	i++
	if (i > trainerArr.length - 1){
		i = 0;
	}
	hp.innerHTML = trainerArr[i].hp;
})

//left is same but minus, swap the condition and assignment for if statement (they should mirror each other)
// alternative is to do setup function passing 0, 1, 2 into it and have three pokeballs to click like Jazmine/Lily