# Credit Risk Monitoring Dashboard
### End-to-End Credit Risk Analysis using PostgreSQL & Power BI
**Dataset:** 1.34 Million Loans | **Portfolio Size:** $19.39 Billion
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)
![SQL](https://img.shields.io/badge/SQL-Analytics-green)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)
---

## The Business Problem

Every lending company faces one critical question: **where are 
our defaults hiding, and what can we do before they happen?**

This project analyses 1.34 million real loan records from 
Lending Club (2007–2018) representing a $19.39 billion portfolio 
to answer exactly that — identifying which borrower segments 
carry disproportionate default risk and what the business 
should do about it.

This project simulates the analytical workflow used by credit risk analysts
to monitor portfolio performance, identify high-risk borrower segments, and 
support data-driven lending decisions in large financial institutions.

---

## Tools and Scale

| Tool | Purpose |
|------|---------|
| PostgreSQL | Data import, cleaning, feature engineering, SQL analysis |
| Power BI | 4-page interactive dashboard |
| Dataset | Lending Club 2007–2018 (2.26M raw records → 1.34M analysed) |

---

## What I Did

**1. Data Engineering**
- Imported 2.26M records into PostgreSQL
- Cleaned and filtered to 1.34M relevant records
  (Fully Paid and Charged Off only)
- Engineered analytical features including DTI, FICO bands,
  numeric interest rate, and binary default flag (is_default).

**2. SQL Analysis**
- 5 business-driven queries across grade, purpose, 
  borrower profile, and segment-level risk
- Identified the single highest-risk borrower segment 
  from 30 high-risk combinations

**3. Power BI Dashboard**
- 4-page interactive dashboard with slicers, 
  conditional formatting, and KPI cards
- Color-coded risk visualization from green (low) 
  to red (high) across all charts

---

## Key Findings

### Finding 1 — Portfolio Risk is Severe
Of 1.34M loans analysed, **268,488 have defaulted** — 
a **19.96% overall default rate** across a **$19.39B portfolio.**
Nearly 1 in 5 loans does not get repaid.

### Finding 2 — Grade Risk is Dramatic and Non-Linear
| Grade | Default Rate | Avg Interest Rate |
|-------|-------------|------------------|
| A | 6.04% | 7.11% |
| B | 13.39% | 10.68% |
| C | 22.44% | 14.02% |
| D | 30.38% | 17.72% |
| E | 38.48% | 21.14% |
| F | 45.21% | 24.93% |
| G | **49.92%** | **27.72%** |

Grade G loans default **8.3x more often** than Grade A loans.

### Finding 3 — Income Alone Does Not Predict Default
Grade G borrowers earn **more** on average ($76,242) than 
Grade E ($72,044) and Grade F ($73,095) borrowers — yet 
default at the **highest rate** of 49.92%.

This reveals that **FICO score deterioration and interest 
rate burden** are stronger default predictors than income.
As grade worsens, interest rates rise from 7.11% to 27.72% 
- creating a self-fulfillin default cycle where low FICO 
triggers high rates, high rates cause repayment stress, 
and stress causes default.

### Finding 4 — The Highest Risk Segment
**Grade G debt consolidation loans with unverified employment 
carry a 61.48% default rate** — the single most dangerous 
segment identified. 174 of 283 loans in this segment 
defaulted. This segment represents a concentrated, 
identifiable, and preventable risk.

---

## Business Recommendations

**Recommendation 1 — Mandatory Employment Verification**
Implement mandatory employment verification for all Grade F 
and G debt consolidation applications. The highest default 
segments consistently involve borrowers with unverified 
employment (NULL emp_length) — suggesting unverified income 
is a critical and addressable risk factor.

**Recommendation 2 — Interest Rate Cap for High Risk Grades**
Consider capping or restructuring interest rates for Grade G borrowers. 
At an average interest rate of 27.72% and an average DTI of 21.52%, repayment 
becomes increasingly difficult for many borrowers, potentially accelerating 
default risk. Reviewing pricing strategies or offering structured repayment 
options may help improve repayment outcomes while managing portfolio risk.

---

## Dashboard Pages

| Page | What It Shows |
|------|--------------|
| 1. Executive Summary | Portfolio KPIs, grade-level default rates, loan status distribution |
| 2. Risk by Purpose | Default rates ranked across all 14 loan purposes |
| 3. Borrower Profile | DTI, income, FICO score, and interest rate by grade |
| 4. High Risk Segments | Top 30 highest default rate borrower segments |

---

## Repository Structure

| Folder | Contents |
|--------|---------|
| /queries | 5 SQL scripts for feature engineering and business analysis |
| /data | Exported CSV results from each query |
| /dashboard | Power BI .pbix file and PDF export |
| /screenshots | Dashboard page screenshots |

---

## Author

**Athul Sajeev**  
MBA — Business Analytics & Finance | 2026  
https://www.linkedin.com/in/athul-sajeev-0020631b4  
athulsajeev.88@gmail.com
