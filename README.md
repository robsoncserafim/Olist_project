# Olist Project: EDA, Machine Learning and MLOps with MLflow and Fast API
Data science project using data from a Brazilian e-commerce company called Olist. SQL, Python, Exploratory analysis skills and Machine Learning were used to accomplish this project. 
**For a better view of the project, please enter the google colab link present in the notebooks**


![e-commerce](https://user-images.githubusercontent.com/99512194/196061880-2f1d1799-f772-4635-b35f-95d53b6ed574.png)
## Exploratory Data Analysis
**The present dataset has different data sources, each table specifying a topic of e-commerce sales. The tables are separated into:** 
1. Costumers
2. Geolocation
3. Orders
4. Order items
5. Payments
6. Order reviews
7. Products 
8. Sellers
9. Product category name
    
## Data Schema

The data is divided in multiple datasets for better understanding and organization.
![dataschema_OLIST](https://user-images.githubusercontent.com/99512194/196061967-07e8b984-c563-4043-bdd3-8e0767a31787.png)

---

## Classification Problem - Machine Learning with Random Forest and XGBoost

In the present project I performed **Exploratory Data Analysis** on each of the tables to better understand the influence by category on Olist's business. Later, **using SQL language**, I created a Big table with the union between all the tables and performed a new exploratory analysis with confrontations between the most diverse features of the dataset.
After creating the unified table and conducting the Exploratory Data Analysis, I performed **feature engineering, data manipulation and transformation** on the existing variables to create new relevant features to the problem at hand.

Next, I defined the **target variable representing the evaluation score and applied classification models**. I used Pipelines of **Random Forest and XGBoost**, popular algorithms for classification problems in machine learning, to predict and classify the data based on the available features.

**These additional steps of feature engineering and applying classification models allow for exploring patterns in the data, building a predictive model, and making decisions based on the obtained insights.**

Note that the process of exploratory analysis, feature engineering, and applying machine learning models can be iterative, involving testing, adjusting, and continuous evaluation of the results.

---

## Experiment Tracking, Model Management and Deployment

To manage the entire machine learning lifecycle, I integrated **MLflow** into the project. With MLflow I was able to:

- Track experiments and log metrics for different runs.  
- Save and version trained models.  
- Register the best-performing model and promote it to the **"Staging"** stage of the MLflow Model Registry.  
- Transition the best model to **"Production"** once validated.

For deployment, I used **FastAPI** to expose the production model via a REST API, allowing external applications to make inference requests. This ensures the project is not only a data science study but also demonstrates the complete workflow of **experiment tracking, model management, and real-time inference**.
