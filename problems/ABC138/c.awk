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

NR == 1 { n = $0; }
NR == 2 { split($0, V); exit; }
END {
  bsort(V, n);
  ans = V[1];
  for (i = 2; i <= n; i++) {
    ans += V[i];
    ans /= 2.0;
  }
  print ans;
}
