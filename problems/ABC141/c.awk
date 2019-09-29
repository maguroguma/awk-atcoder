# NR == 1 { n = $1; k = $2; q = $3; }
# 2 <= NR && NR < 2+q { A[NR-1] = $0; if (NR == 2+q-1) exit; }
NF == 3 { n = $1; k = $2; q = $3; }
NF == 1 { counter++; A[counter] = $0; if (counter == q) exit; }
END {
  # 配列の初期化がないとREになるケースが有る
  for (i = 1; i <= n; i++) B[i] = 0
  for (i = 1; i <= q; i++) {
    B[A[i]]++
  }
  for (i = 1; i <= n; i++) {
    if (B[i] + k - q > 0) print "Yes"
    else print "No"
  }
}

