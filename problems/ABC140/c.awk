NR == 1 { n = $0; }
NR == 2 { for (i = 1; i <= n-1; i++) B[i] = $i; exit; }
END {
  A[1] = B[1];
  for (i = 2; i <= n; i++) {
    A[i] = B[i-1] < B[i] ? B[i-1] : B[i];
  }
  A[n] = B[n-1]

  ans = 0;
  for (i = 1; i <= n; i++) ans += A[i];

  print ans
}
