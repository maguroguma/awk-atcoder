# NR == 1 { a = $1; b = $2; exit; }
# END {
#   plus = a + b;
#   minus = a - b;
#   prod = a * b;

#   if (plus > minus) {
#     if (plus > prod) {
#       print plus;
#     } else {
#       print prod;
#     }
#   } else {
#     if (minus > prod) {
#       print minus;
#     } else {
#       print prod;
#     }
#   }
# }

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

# max(A: array, l: int)
function max(A, l,   i) {
  res = A[1];
  for (i = 2; i <= l; i++) {
    if (res < A[i]) res = A[i];
  }
  return res;
}

# min(A: array, l: int)
function min(A, l,   i) {
  res = A[1];
  for (i = 2; i <= l; i++) {
    if (res > A[i]) res = A[i];
  }
  return res;
}

NR == 1 { a = $1; b = $2; exit; }
END {
  A[1] = a + b;
  A[2] = a - b;
  A[3] = a * b;

  print max(A, 3);
}