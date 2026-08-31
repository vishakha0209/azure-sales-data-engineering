# Azure End-to-End Sales Data Engineering Pipeline

Portfolio project demonstrating Azure Data Factory orchestration, ADLS Gen2 Bronze/Silver/Gold layering, SQL transformation patterns, data-quality checks and Power BI consumption using synthetic sales data.

> **Portfolio disclaimer:** This project uses synthetic/sample data created for learning. It contains no proprietary, confidential, customer, or employer data and is not an official implementation for any company.

## Architecture

Synthetic Sales Data -> Azure Data Factory -> ADLS Gen2 (Raw -> Bronze -> Silver -> Gold) -> Power BI

## Tech Stack
- Azure Data Factory
- Azure Data Lake Storage Gen2
- SQL
- Power BI
- Git/GitHub

## ADF Pipelines
1. `PL_Raw_To_Bronze`
2. `PL_Bronze_To_Silver`
3. `PL_Silver_To_Gold`
4. `PL_Master_Data_Pipeline`

The master pipeline executes the three stages sequentially and proceeds only when the previous stage succeeds.

## Repository Structure
- `adf/pipelines/` — pipeline templates
- `adf/datasets/` — ADLS Gen2 DelimitedText dataset templates
- `adf/linkedServices/` — credential-free linked-service template
- `data/sample/` — synthetic data
- `sql/` — Silver, Gold and data-quality SQL
- `docs/` — documentation and migration mapping
- `powerbi/` — dashboard notes
- `architecture/` — architecture documentation and diagram

## Reproduce
1. Create an ADLS Gen2 account and `raw`, `bronze`, `silver`, `gold` containers.
2. Upload `data/sample/sales_sample.csv` to `raw`.
3. Create an ADF linked service using your own Azure authentication and replace placeholders.
4. Create/import the datasets and pipelines.
5. Test child pipelines, then run the master pipeline.
6. Use the SQL scripts for a SQL-based Silver/Gold implementation or connect Gold output to Power BI.
7. Add scheduling only after functional testing.

## Security
Never commit storage keys, SAS tokens, passwords, service-principal secrets, connection strings, or employer/customer data.
