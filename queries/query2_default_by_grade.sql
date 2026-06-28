SELECT 
  grade,
  COUNT(*) as total_loans,
  SUM(is_default) as defaults,
  ROUND(SUM(is_default) * 100.0 / COUNT(*), 2) as default_rate_pct,
  ROUND(AVG(loan_amnt), 2) as avg_loan_amount,
  ROUND(AVG(dti), 2) as avg_dti,
  ROUND(AVG(annual_inc), 2) as avg_annual_income,
  ROUND(AVG(int_rate), 2) as avg_interest_rate
FROM loans_clean
GROUP BY grade
ORDER BY grade;
