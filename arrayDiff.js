function array_diff(a, b) {
  if (a.length == 0) {
    return []
  }
  for (i = a.length; i >= 0; i--) {
    for (j= b.length; j >= 0; j--) {
      if (b[i] === a[j]) {
        a.splice(i, 1);
      }
    }
  }
  return a;
}

array_diff([1,2,2], [2]);