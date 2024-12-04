# Azure-End-to-End-Project

This project demonstrates the implementation of an end-to-end data pipeline using Azure services to process and analyze the AdventureWorks Sales dataset. The architecture includes data ingestion, transformation, storage, and visualization using tools such as Azure Data Factory, Azure Data Lake Gen2, Databricks, Azure Synapse Analytics, and Power BI.

Architecture
The pipeline is structured as follows:

Data Source: Sales data retrieved from an API.
Ingestion Layer: Azure Data Factory pipelines fetch data and store it in the Bronze layer in Azure Data Lake Gen2.
Transformation Layer: Databricks processes and transforms data from the Bronze layer into the Silver layer using PySpark scripts.
Serving Layer: Azure Synapse Analytics serves the transformed data for reporting and visualization.
Visualization: Power BI connects to Synapse Analytics for creating interactive dashboards.
