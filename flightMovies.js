arr = [50, 90, 102, 180, 165, 70]

let movieCalc = (movies, airtime) => {
  for(i=0; i < (movies.length); i++){
    for(j=1; j < (movies.length); j++)
    if(movies[i] + movies[j] == airtime){
      return true;
    }
  }
  return false
}

movieCalc(arr, 215);