NR == 1 { n = $0; }
NR == 2 { split($0, A); exit; }
END {
  for (i = 1; i <= n; i++) {
    B[A[i]] = i;
  }

  for (i = 1; i <= n; i++) {
    if (i < n) printf("%d ", B[i]);
    else printf("%d\n", B[i]);
  }
  exit;
}

