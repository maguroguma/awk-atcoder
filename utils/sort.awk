# printlist(A: array, l: int)
function printlist(A, l,   i) {
  for (i = 1; i <= l; i++) {
    if (i == l) printf("%d\n", A[i]);
    else printf("%d ", A[i]);
  }
}

# bsort(A: array, l: int)
# O(N^2)
function bsort(A, l,   temp, i, j) {
  for (i = 2; i <= l; i++) {
    for (j = i; (j-1) in A && A[j-1] > A[j]; j--) {
      temp = A[j];
      A[j] = A[j-1];
      A[j-1] = temp;
    }
  }
  return;
}

# reverse(A: array, l: int, B: array)
function reverse(A, l, B,   i) {
  for (i = l; i >= 1; i--) B[l-i+1] = A[i];
  return;
}

BEGIN {
  l = 10;
  for (i = 1; i <= l; i++) A[i] = int(rand() * 100);
  printlist(A, l);
  print "---";

  bsort(A, l);
  printlist(A, l);

  reverse(A, l, B);
  printlist(A, l);
  printlist(B, l);
}