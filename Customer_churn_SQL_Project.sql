--Step 1: Total Number of Customers
SELECT COUNT(*) AS total_customers
FROM customer_churn;

--Explanation: This query calculates the total number of customers 
available in the dataset.

--Step 2: Churn Distribution
SELECT
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY churn
 ORDER BY churn DESC;

--Explanation: This query counts the total number of customers in each churn category(Yes and No)

--Step 3: Overall Churn Rate
SELECT
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn;

--Explanation: This query calculates the overall percentage of customers who have churned.

--Step 4: Total Churned Customers
SELECT COUNT(*) AS churned_customers
FROM customer_churn
WHERE churn ='Yes';

--Explanation: This query counts the customers who have discontinued the service.

--Step 5: Total Retained Customers
SELECT COUNT(*) AS retained_customers
FROM customer_churn
WHERE churn ='No';

--Explanation: This query counts the customers who have remained with the company.

--Step 6: Churn by Gender
SELECT
   gender,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY gender, churn
 ORDER BY gender, churn;

--Explanation: This query compares churn behavior between different genders.

--Step 7: Churn by Senior Citizen Status
SELECT
   senior_citizen,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY senior_citizen, churn
 ORDER BY senior_citizen, churn;

--Explanation: This query compares churn between senior and non-senior customers.

--Step 8: Churn by Partner Status
SELECT
   partner,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY partner, churn
 ORDER BY partner, churn;

--Explanation: This query examines whether customer partner status is associated with churn.

--Step 9: Churn by Dependents
SELECT
   dependents,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY dependents, churn
 ORDER BY dependents, churn;

--Explanation: This query compares churn between customers with and without dependents.

--Step 10: Average Tenure by Churn Status
SELECT
   churn,
   ROUND(AVG(tenure),2) AS average_tenure
 FROM customer_churn   
 GROUP BY churn;

--Explanation: This query calculates the average tenure of churned and retained customers.

--Step 11: Churn by Tenure Group
SELECT
   tenure_group,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY tenure_group, churn
 ORDER BY tenure_group, churn;

--Explanation: This query compares customer churn across different tenure groups.

--Step 12: Churn Rate by Tenure Group
SELECT
   tenure_group,
   COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
  GROUP BY tenure_group
 ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate within each tenure group.

--Step 13: Churn by Phone Service
SELECT
   phone_service,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY phone_service, churn
 ORDER BY phone_service, churn;

--Explanation: This query compares churn between customers with different  phone-service statuses. 

--Step 14: Churn by Multiple Lines
SELECT
   multiple_lines,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY multiple_lines, churn
 ORDER BY multiple_lines, churn;

--Explanation: This query examines churn according to multiple_line service status.

--Step 15: Churn by Internet Service
SELECT
   internet_service,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  internet_service, churn
 ORDER BY  internet_service, churn;

--Explanation: This query compares customer churn across different internet_service categories.  
   
--Step 16: Churn by Online Security
SELECT
   online_security,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  online_security, churn
 ORDER BY  online_security, churn;

--Explanation: This query examines whether online_security subscription is associated with customer churn.

--Step 17: Churn by Online Backup
SELECT
   online_backup,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  online_backup, churn
 ORDER BY  online_backup, churn;

--Explanation: This query compares churn among customers based on online_backup subscription.

--Step 18: Churn by Device Protection
SELECT
   device_protection,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  device_protection, churn
 ORDER BY  device_protection, churn;

--Explanation: This query examines customer churn according to device_protection subscription.

--Step 19: Churn by Technical Support
SELECT
   tech_support,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  tech_support, churn
 ORDER BY  tech_support, churn;

--Explanation: This query compares churn among customers with different technical support subscriptions.

--Step 20: Churn by streaming TV
SELECT
   streaming_tv,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  streaming_tv, churn
 ORDER BY  streaming_tv, churn;

--Explanation: This query compares churn across streaming-TV subscription categories.

--Step 21: Churn by streaming Movies
SELECT
   streaming_movies,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  streaming_movies, churn
 ORDER BY  streaming_movies, churn;

--Explanation: This query compares churn across streaming-movie subscription categories.

--Step 22: Churn by Contract Type
SELECT
   contract,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  contract, churn
 ORDER BY  contract, churn;

--Explanation: This query compares customer churn across different contract types.

--Step 23: Churn Rate by Contract Type
SELECT
   contract,
   COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
  GROUP BY contract
 ORDER BY churn_rate DESC;

--Explanation: This query calculates the percentage of customers who churn within each contract type.

--Step 24: Churn by Paperless Billing
SELECT
   paperless_billing,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  paperless_billing, churn
 ORDER BY  paperless_billing, churn;

--Explanation: This query compares churn between customers using  paperless and 
non-paperless billing.

--Step 25: Churn by Payment Method
SELECT
   payment_method,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  payment_method, churn
 ORDER BY  payment_method, churn;

--Explanation: This query compares customer churn across different payment methods.

--Step 26: Average Monthly Charges by Churn 
SELECT
   churn,
   ROUND(AVG(monthly_charges),2) AS average_monthly_charges
 FROM customer_churn   
 GROUP BY churn;

--Explanation: This query compares the average monthly charges of churned and retained customers.

--Step 27: Average Total Charges by Churn 
SELECT
   churn,
   ROUND(AVG(total_charges),2) AS average_total_charges
 FROM customer_churn   
 GROUP BY churn;

--Explanation: This query compares the average total charges generated by churned and retained customers

--Step 28: Average Annual Charges by Churn 
SELECT
   churn,
   ROUND(AVG(annual_charges),2) AS average_annual_charges
 FROM customer_churn   
 GROUP BY churn;

--Explanation: This query compares the average annual charges between churned and retained customers.

--Step 29: Churn by Charge Category

SELECT
   charge_category,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  charge_category, churn
 ORDER BY  charge_category, churn;

--Explanation: This query compares churn across the charge categories created during feature engineering.

--Step 30: Churn Rate by Charge Category
SELECT
   charge_category,
   COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
  GROUP BY charge_category
 ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate for each charge category.

--Step 31: Total Revenue by Churn Status
SELECT
   churn,
   ROUND(SUM(revenue),2) AS total_revenue
 FROM customer_churn   
 GROUP BY churn;

--Explanation: This query calculates total revenue associated with churned and retained customers.

--Step 32: Average Revenue by Churn Status
SELECT
   churn,
   ROUND(AVG(revenue),2) AS average_revenue
 FROM customer_churn   
 GROUP BY churn;

--Explanation: This query compares the average revenue generated by churned and retained customers. 

--Step 33: Revenue Associated with Churned Customers 
SELECT
   ROUND(SUM(revenue),2) AS churned_customer_revenue
 FROM customer_churn   
 WHERE churn = 'Yes';
   
--Explanation: This query calculates the total revenue associated with customers who have churned.

--Step 34: Revenue by Customer Segment
SELECT
   customer_segment,
   ROUND(SUM(revenue),2) AS total_revenue
 FROM customer_churn   
 GROUP BY customer_segment
ORDER BY total_revenue DESC;

--Explanation: This query ranks customer segments according to their total revenue contribution.

--Step 35: Churn by Customer Segment
SELECT
   customer_segment,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  customer_segment, churn
 ORDER BY  customer_segment, churn;

--Explanation: This query compares churn across the customer segments created during feature engineering.

--Step 36: Churn Rate by Customer Segment
SELECT
   customer_segment,
   COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
  GROUP BY customer_segment
 ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate for each customer segment.

--Step 37: High-Value Customer Distribution
SELECT
   high_value_customer,
    COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  high_value_customer
 ORDER BY  customer_count DESC;

--Explanation: This query counts customers according to their high-value customer classification.
 
--Step 38: High-Value Customers and Churn  
SELECT
   high_value_customer,
   churn,
   COUNT(*) AS customer_count
 FROM customer_churn
 GROUP BY  high_value_customer, churn
 ORDER BY  high_value_customer, churn;

--Explanation: This query examines churn behaviour among high-value and other customers.

--Step 39: Churn Rate of High-Value Customers
SELECT
  COUNT(*) AS high_value_customers,
   SUM(churn_flag) AS churned_high_value_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
WHERE high_value_customer = 'Yes';
 
--Explanation: This query calculates the churn rate specifically among high_value_customers.

--Step 40: Churned High-Value Customers
SELECT
      customer_id,
	  revenue,
	  monthly_charges,
	  total_charges,
	  tenure,
	  contract
FROM customer_churn
WHERE high_value_customer = 'Yes'
     AND churn = 'Yes'
ORDER BY revenue DESC;

--Explanation: This query identifies high-value customers who have 
already churned and ranks them by revenue.

--Step 41: Top  10 Customers by Revenue
SELECT
      customer_id,
	  revenue,
	  churn,
	  contract
FROM customer_churn	  
ORDER BY revenue DESC
LIMIT 10;

--Explanation: This query identifies the ten customers generating the highest revenue.

--Step 42: Top 10 Churned Customers by Revenue
SELECT
      customer_id,
	  revenue,
	  monthly_charges,
	  tenure,
	  contract
FROM customer_churn
WHERE churn = 'Yes'
ORDER BY revenue DESC
LIMIT 10;     

--Explanation: This query identifies the highest-revenue customers who have churned.

--Step 43: Highest Monthly Charges
SELECT
      customer_id,
	  monthly_charges,
	  churn,
	  contract
FROM customer_churn	  
ORDER BY monthly_charges DESC
LIMIT 10;

--Explanation: This query identifies customers with the highest monthly charges.

--Step 44: Highest Monthly Charges Among Churned Customers
SELECT
      customer_id,
	   monthly_charges,
	  total_charges,
	  contract,
	  tenure
FROM customer_churn
WHERE churn = 'Yes'
ORDER BY monthly_charges DESC
LIMIT 10;     
	
--Explanation: This query identifies churned customers with the highest monthly charges.

--Step 45: Longest-Tenure Customers
SELECT
      customer_id,
	   tenure,
	  churn,
	  contract
FROM customer_churn	   
ORDER BY tenure DESC
LIMIT 10;

--Explanation: This query identifies the ten customers with the longest service tenure.

--Step 46: Churned Customers with Short Tenure
SELECT
      customer_id,
	   tenure,
	  monthly_charges,
	  contract,
	  churn
FROM customer_churn
WHERE churn = 'Yes'
    AND tenure < 12
ORDER BY tenure;

--Explanation: This query identifies churned customers who left within their first year.

--Step 47: Churned Customers with High Charges
SELECT
      customer_id,
	   monthly_charges,
	  total_charges,
	  contract,
	  tenure
FROM customer_churn
WHERE churn = 'Yes'
    AND high_charges > 0
ORDER BY monthly_charges DESC;

--Explanation: This query identifies churned customers who were classified as having high charges.

--Step 48: Churned Month-to-Month Customers	  
SELECT
      customer_id,
	   tenure,
	  monthly_charges,
	  revenue
FROM customer_churn
WHERE churn = 'Yes'
    AND contract = 'Month-to-month'
ORDER BY revenue DESC;	  

--Explanation: This query identifies customers who churned while using month-to-month contracts.

--Step 49: Number of Churned Month-to-Month Customers
SELECT COUNT(*) AS
churned_month_to_month_customers	 
FROM customer_churn
WHERE churn = 'Yes'
    AND contract = 'Month-to-month';

--Explanation: This query counts churned customers who were subscribed to month-to-month contracts.	

--Step 50: Revenue at Risk from Churn
SELECT
   ROUND(SUM(revenue),2) AS
revenue_at_risk	 
FROM customer_churn
WHERE churn = 'Yes';

--Explanation: This query calculates the total revenue associated with churned customers to estimate
revenue at risk.

--Step 51: Customers Paying Above Average Monthly Charges
SELECT
      customer_id,
	  monthly_charges,
	  churn 
FROM customer_churn
WHERE monthly_charges > (SELECT AVG(monthly_charges)
                          FROM customer_churn)
ORDER BY monthly_charges DESC;							  
						  
--Explanation: This query uses a subquery to identify customers whose monthly charges are above the 
overall average.

--Step 52: Churned Customers Paying Above Average Charges
SELECT
      customer_id,
	  monthly_charges,
	  contract,
	  tenure
FROM customer_churn
WHERE churn = 'Yes'
   AND monthly_charges > (SELECT AVG(monthly_charges)
                          FROM customer_churn)
ORDER BY monthly_charges DESC;					

--Explanation: This query identifies churned customers whose monthly charges are above the
overall customer average.
						  
--Step 53: Customers with Above-Average Revenue
SELECT
      customer_id,
	  revenue,
	  churn 
FROM customer_churn
WHERE revenue > (SELECT AVG(revenue)
                          FROM customer_churn)
ORDER BY revenue DESC;							  
						  
--Explanation: This query identifies customers generating revenue above the overall average.

--Step 54: Customer Revenue Ranking
SELECT
      customer_id,
	  revenue,
	  RANK() OVER (ORDER BY revenue DESC) AS revenue_position
	  FROM customer_churn
	  ORDER BY revenue_position
	 LIMIT 10;

--Explanation: This query uses the RANK() window function to rank customers according to revenue.

--Step 55: Churned Customer Revenue Ranking
SELECT
      customer_id,
	  revenue,
	  RANK() OVER (ORDER BY revenue DESC) AS churned_revenue_rank
	  FROM customer_churn
	  WHERE churn = 'Yes'
	  ORDER BY churned_revenue_rank
	 LIMIT 10;

--Explanation: This query ranks churned customers according to the revenue they generated.

--Step 56: Revenue quartile distribution
SELECT
   revenue_quartile,
   COUNT(*) AS customer_count
FROM customer_churn
 GROUP BY revenue_quartile
ORDER BY revenue_quartile;

--Explanation: This query counts customers within each revenue quartile to understand
customer-value distribution.

--Step 57: Churn Rate by Payment Method
SELECT
   payment_method,
  COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
 GROUP BY payment_method
ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate for each payment method.

--Step 58: Churn Rate by Internet Service
SELECT
   internet_service,
  COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
 GROUP BY internet_service
ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate for each internet-service category.

--Step 59: Churn Rate by Gender
SELECT
    gender,
  COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
 GROUP BY  gender
ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate separately for each gender.

--Step 60: Churn Rate by Senior Citizen Status
SELECT
    senior_citizen,
  COUNT(*) AS total_customers,
   SUM(churn_flag) AS churned_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
 GROUP BY senior_citizen
ORDER BY churn_rate DESC;

--Explanation: This query calculates the churn rate for senior and non-senior customers.

--Step 61: Total Rows and Unique Customers
SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT customer_id) AS
  unique_customers
FROM customer_churn; 

--Explanation: This query validates the total number of records and the number of unique customer IDs.

--Step 62: Duplicate Customer IDs
SELECT
    customer_id,
  COUNT(*) AS occurence_count
FROM customer_churn
 GROUP BY customer_id
 HAVING COUNT(*) > 1
ORDER BY occurence_count DESC;

--Explanation: This query identifies customer IDs that appear more than once.

--Step 63: Missing Customer IDs
SELECT COUNT(*) AS 
missing_customer_ids
FROM customer_churn
WHERE customer_id IS NULL;

--Explanation: This query checks whether any customer IDs are missing.

--Step 64: Missing Churn Values
SELECT COUNT(*) AS 
missing_churn_values
FROM customer_churn
WHERE churn IS NULL;

--Explanation: This query checks whether the churn column contains missing values.

--Step 65: Missing Revenue Values
SELECT COUNT(*) AS 
missing_revenue_values
FROM customer_churn
WHERE revenue  IS NULL;

--Explanation: This query checks whether revenue values are missing.

--Step 66: Overall Customer KPI Summary
SELECT
  COUNT(*) AS total_customers,
   SUM(churn_flag) AS 
   churned_customers,
   COUNT(*)-  SUM(churn_flag) AS
   retained_customers,
   ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS 
 churn_rate,
    ROUND(AVG(monthly_charges), 2)
	AS averge_monthly_charges,
    ROUND(AVG(revenue), 2)
	AS averge_revenue
FROM customer_churn;
 
--Explanation: This query creates a consolidated KPI summary of customer count, churn, charges and 
revenue. 

--Step 67: Churned Customers by Contract and Revenue 
SELECT
   contract,
   COUNT(*) AS churned_customers,
   ROUND(SUM(revenue),2) AS
   churned_revenue
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY contract
ORDER BY churned_revenue DESC;

--Explanation: This query compares churned customer counts and associated revenue across contract types.

--Step 68: Churned Revenue by Customer Segment
SELECT
   customer_segment,
   COUNT(*) AS churned_customers,
   ROUND(SUM(revenue),2) AS
   churned_revenue
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY customer_segment
ORDER BY churned_revenue DESC;

--Explanation: This query identifies which customer segments contribute the most revenue among
churned customers.

--Step 69: Churned Revenue by tenure group
SELECT
   tenure_group,
   COUNT(*) AS churned_customers,
   ROUND(SUM(revenue),2) AS
   churned_revenue
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY tenure_group
ORDER BY churned_revenue DESC;

--Explanation: This query identifies which tenure groups contribute the most revenue among
churned customers.

--Step 70: High-Value Churn Risk
SELECT
     COUNT(*) AS 
high_value_churned_customers,
   ROUND(SUM(revenue),2) AS
high_value_churned_revenue
FROM customer_churn
WHERE high_value_customer = 'Yes'
  AND churn = 'Yes';

--Explanation: This query measures the number and revenue contribution of high-value customers
who have churned.

--Step 71: High-Charge Churn Risk
SELECT
     COUNT(*) AS 
high_charge_churned_customers,
   ROUND(SUM(revenue),2) AS
high_charge_churned_revenue
FROM customer_churn
WHERE high_charges > 0
  AND churn = 'Yes';

--Explanation: This query measures the number and revenue associated with churned customers classified
as having high charges.

--Step 72: Top 10 Churned Customers by Final Bill
SELECT
  customer_id,
  final_bill,
   revenue,
   contract,
   tenure
FROM customer_churn
WHERE  churn = 'Yes'
ORDER BY final_bill DESC
LIMIT 10;

--Explanation: This query identifies churned customers with the highest final bills.

--Step 73: Top 10 Churned Customers by Annual Charges
SELECT
  customer_id,
  annual_charges,
  revenue,
  contract,
  tenure
FROM customer_churn
WHERE  churn = 'Yes'
ORDER BY annual_charges DESC
LIMIT 10;

--Explanation: This query identifies churned customers with the highest annual charges.

--Step 74: Churned Customers by revenue quartile
SELECT
    revenue_quartile,
     COUNT(*) AS churned_customers,
   ROUND(SUM(revenue),2) AS 
churned_revenue
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY  revenue_quartile
ORDER BY revenue_quartile

--Explanation: This query examines churn across different revenue-value quartiles.

--Step 75: Churn Rate by Revenue Quartile
SELECT
   revenue_quartile,
   COUNT(*) AS total_customers,
   SUM(churn_flag) AS 
   churned_customers,
    ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS churn_rate
 FROM customer_churn
GROUP BY revenue_quartile
ORDER BY churn_rate DESC;

--Explanation: This query calculates churn rates across different customer revenue quartiles.

--Step 76: Customers at High Revenue Risk
SELECT
  customer_id,
  revenue,
  monthly_charges,
  annual_charges,
  contract,
  tenure
FROM customer_churn
WHERE  churn = 'Yes'
  AND revenue > (
      SELECT AVG(revenue)
	  FROM customer_churn
  )
ORDER BY revenue DESC;

--Explanation: This query identifies churned customers whose revenue contribution is above the
overall customer average.

--Step 77: High-Value Customers on Month-to-Month Contracts
SELECT
  customer_id,
  revenue,
  monthly_charges,
  tenure
FROM customer_churn
WHERE high_value_customer = 'Yes'
  AND contract = 'Month-to-month'
ORDER BY revenue DESC;  

--Explanation: This query identifies high-value customers who have month-to-month contracts and may 
therefore represent important retention opportunities.

--Step 78: High-Value Customers Who Churned with High Charges
SELECT
  customer_id,
  revenue,
  monthly_charges,
  annual_charges,
  tenure,
  contract
FROM customer_churn
WHERE high_value_customer = 'Yes'
  AND high_charges > 0
  AND churn = 'Yes'
ORDER BY revenue DESC;

--Explanation: This query identifies high-value,high-charge customers who have already churned.

--Step 79: Most Important Churn-Risk Customers
SELECT
  customer_id,
  revenue,
  monthly_charges,
   tenure,
  contract,
  customer_segment,
  high_value_customer
FROM customer_churn
WHERE churn = 'Yes'
ORDER BY revenue DESC,
monthly_charges DESC
LIMIT 20;

--Explanation: This query produces a priority list of churned customers based on revenue and monthly 
charges for potential win-back analysis.

--Step 80: Final Customer Churn Summary
SELECT
      COUNT(*) AS total_customers,
      SUM(churn_flag) AS 
churned_customers,
     COUNT(*) - SUM(churn_flag) AS 
retained_customers,
      ROUND(SUM(churn_flag)*
 100.0/ COUNT(*),2) AS 
 churn_rate,
      ROUND(SUM(CASE WHEN churn =
	  'Yes' THEN revenue ELSE 0 END),2)
AS churned_revenue,
	  ROUND(AVG(monthly_charges), 2)
AS average_monthly_charges,
      ROUND(AVG(tenure), 2)
AS average_tenure
FROM customer_churn;
       
--Explanation: This query provides the final management-level summary of customer count,churn,churn rate,
revenue at risk,charges and customer tenure.





















  
  




