# Bank Transaction Analytics Dashboard

## Project Overview

An end-to-end data analytics project built using **550,000 Indian banking transaction records**. The project focuses on analyzing transaction patterns, customer activity, transaction values, merchant categories, and fraud-flagged transactions.

## Tech Stack

* **Python:** Data cleaning, preprocessing, and exploratory data analysis
* **Pandas & NumPy:** Data manipulation and analysis
* **MySQL:** Database management and SQL-based business analysis
* **Power BI:** Interactive dashboard development
* **DAX:** KPI calculations and measures
* **Jupyter Notebook:** Python development environment

## Project Workflow

1. **Data Cleaning:** Cleaned and prepared 550,000 banking transaction records using Python and Pandas.
2. **Exploratory Data Analysis:** Analyzed transaction trends, customer activity, merchant categories, and fraud patterns.
3. **SQL Analysis:** Imported the cleaned data into MySQL and performed eight analytical queries.
4. **Dashboard Development:** Built an interactive Power BI dashboard with KPI cards, charts, and slicers.

## Key Metrics

| Metric                     |          Value |
| -------------------------- | -------------: |
| Total Transactions         |        550,000 |
| Total Transaction Value    | ₹16.45 Billion |
| Average Transaction Value  |        ₹29,907 |
| Total Customers            |         79,916 |
| Fraud-Flagged Transactions |          4,873 |
| Fraud Rate                 |          0.89% |

## Dashboard Features

* Monthly transaction value trends
* Transaction value by transaction type
* Merchant category analysis
* Fraud transactions by transaction type
* State-wise transaction analysis
* Top 10 customers by transaction value
* Interactive filters for Year, State, and Transaction Type

## Key Insights

* UPI recorded the highest number of fraud-flagged transactions among transaction types.
* RTGS recorded the highest total value of fraud-flagged transactions.
* The average value of fraud-flagged transactions was higher than that of non-fraud transactions.
* Transaction activity and transaction values vary across merchant categories and states.

*Note: Fraud-flagged transactions represent records marked as fraud in the dataset; these patterns do not establish the cause of fraud.*

## Project Structure

```text
Bank_Transaction_Analytics/
│
├── dashboard/
│   └── Bank_Transaction_Analytics.pbix
│
├── data/
│   └── (Dataset files excluded from GitHub)
│
├── notebooks/
│   └── 01_data_cleaning_eda.ipynb
│
├── sql/
│   └── bank_transaction_analysis.sql
│
├── .gitignore
└── README.md
```

## Learning Outcomes

* Data cleaning and preprocessing using Python
* Exploratory data analysis
* SQL querying and aggregations
* DAX measures and KPI development
* Interactive Power BI dashboard creation
* Translating data into business insights

## Author

**Srinivas Pappu**

GitHub: [Srinivas184](https://github.com/Srinivas184)
