SELECT 
  grade,
  purpose,
  emp_length,
  COUNT(*) as total_loans,
  SUM(is_default) as defaults,
  ROUND(SUM(is_default) * 100.0 / COUNT(*), 2) as default_rate_pct,
  ROUND(AVG(dti), 2) as avg_dti,
  ROUND(AVG(annual_inc), 2) as avg_income,
  ROUND(AVG(loan_amnt), 2) as avg_loan_amount
FROM loans_clean
WHERE grade IN ('D', 'E', 'F', 'G')
GROUP BY grade, purpose, emp_length
HAVING COUNT(*) > 100
ORDER BY default_rate_pct DESC
LIMIT 30;