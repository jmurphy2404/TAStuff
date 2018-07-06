arr = [50, 90, 102, 180, 165, 70]

let movieCalc = (movies, airtime) => {
  for(i=0; i < (movies.length - 1); i++){
    for(j=1; j < (movies.length); j++)
    if(movies[i] + movies[j] == airtime){
      return true;
    }
  }
  return false
}

movieCalc(arr, 215);


// can also use j = i + 1 instead of j = 1 and using movies.length - 1 in the i loop