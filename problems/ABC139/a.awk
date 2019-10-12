NR == 1 { S = $0; }
NR == 2 {
  T = $0;
  split(S, ss, "");
  split(T, tt, "");
  ans = 0;
  for (i = 1; i <= 3; i++) if (ss[i] == tt[i]) ans++;
  print ans;
  exit;
}
