NR == 1 { n = $1; k = $2; }
NR == 2 { lenH = split($0, H); exit; }
END {
  ans = 0;
  for (i = 1; i <= lenH; i++)
    if (H[i] >= k)
      ans++;
  print ans;
  exit;
}
