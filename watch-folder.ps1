while ($true) {
    $s_old=$s
    $s=Get-ChildItem . -Recurse |shasum
    sleep 1
    if ($s_old -ne $s){invoke-pester}
  }
