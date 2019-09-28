{
  n = $0;
  deno = n;
  enu = 0;
  for (i = 1; i <= n; i++) {
    if (i % 2 == 1) {
      enu++;
    }
  }

  printf("%f\n", enu/deno);
  exit;
}
