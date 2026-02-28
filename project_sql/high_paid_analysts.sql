WITH high_paid_analysts AS (
    SELECT
        job_title,
        salary_year_avg
    FROM job_postings_fact
    WHERE job_title_short = 'Data Analyst'
      AND salary_year_avg > 100000
)
SELECT *
FROM high_paid_analysts
ORDER BY salary_year_avg DESC
LIMIT 10