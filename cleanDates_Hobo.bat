powershell -Command "(gc 20181205_ESL_S1_clean.csv) -replace 'PM', '' | Out-File -encoding UTF8  20181205_ESL_S1_clean.csv"