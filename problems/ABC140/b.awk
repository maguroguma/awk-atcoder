NR == 1 { n = $0; }
NR == 2 { for (i = 1; i <= n; i++) A[i] = $i; }
NR == 3 { for (i = 1; i <= n; i++) B[i] = $i; }
NR == 4 { for (i = 1; i <= n-1; i++) C[i] = $i; exit; }
END {
  ans = 0;
  for (i = 1; i <= n; i++) {
    ans += B[A[i]];
    if (i == 0) {
      continue;
    }
    if (A[i-1] + 1 == A[i]) {
      ans += C[A[i-1]];
    }
  }
  print ans;
}
