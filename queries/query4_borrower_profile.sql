SELECT 
  grade,
  ROUND(AVG(dti), 2) as avg_dti,
  ROUND(AVG(annual_inc), 2) as avg_income,
  ROUND(AVG(fico_range_low), 2) as avg_fico_score,
  ROUND(AVG(int_rate), 2) as avg_interest_rate,
  ROUND(AVG(loan_amnt), 2) as avg_loan_amount,
  ROUND(AVG(open_acc), 2) as avg_open_accounts,
  ROUND(AVG(pub_rec), 2) as avg_derogatory_records,
  COUNT(*) as total_loans,
  ROUND(SUM(is_default) * 100.0 / COUNT(*), 2) as default_rate_pct
FROM loans_clean
GROUP BY grade
ORDER BY grade;