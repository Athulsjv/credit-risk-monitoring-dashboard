SELECT 
  COUNT(*) as total_loans,
  SUM(is_default) as total_defaults,
  SUM(CASE WHEN is_default = 0 THEN 1 ELSE 0 END) as total_paid,
  ROUND(SUM(is_default) * 100.0 / COUNT(*), 2) as default_rate_pct,
  ROUND(AVG(loan_amnt), 2) as avg_loan_amount,
  ROUND(SUM(loan_amnt), 2) as total_portfolio_value
FROM loans_clean;
