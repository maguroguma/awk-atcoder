NR == 1 { n = $0; }
NR == 2 {
  # for (i = 1; i <= n; i++) H[i] = $i;
  split($0, H);

  ans = 0;
  tmp = 0;
  for (i = 1; i < n; i++) {
    if (H[i] >= H[i+1]) {
      tmp++;
      if (tmp > ans) ans = tmp;
    } else {
      tmp = 0;
    }
  }
  # print ans;
  printf("%d\n", ans);

  exit;
}