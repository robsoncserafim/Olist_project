# Olist Project: EDA, Machine Learning and MLOps with MLflow and Fast API

Data science project using data from a Brazilian e-commerce company called Olist. SQL, Python, Exploratory analysis skills and Machine Learning were used to accomplish this project.  

**For a better view of the project, please enter the Google Colab link present in the notebook.**  

**Author:** Robson de Castro Serafim  
**Submission date:** 25/08/2025  

---

## Files  

- **Olist_project.ipynb** → Main project notebook.  
- **Olist_data.csv** → Complete dataset used (optional if you want to run the project locally).  
- **requirements.txt** → List of Python libraries (required tif you want o run the project locally.) 
- **Dockerfile** → Provides a reproducible environment with all dependencies pre-installed, so the project can be run inside a Docker container.  

---

## Reading the Notebook  

The notebook has already been executed and saved with all outputs.  
If you just want to **read and review the analysis and results**, simply open the `.ipynb` file in Jupyter Notebook, Jupyter Lab, Google Colab, or even GitHub’s notebook viewer — no execution is required.  

---

## Running the project locally (optional)  

If you want to re-execute the notebook yourself, here are the available options.  

You can run the notebook directly in your own environment (or in Colab) by installing the required libraries:  

```bash
pip install -r requirements.txt 
```

At the top of the notebook, you will find a variable called DATA_PATH. You need to adjust it depending on where you are running:
```
# === Data path configuration ===
# Adjust this depending on where you are running the notebook:

# Your Olist_data.csv path:
DATA_PATH = "/content/drive/MyDrive/Colab Notebooks/Olist_project/data" 

# On Docker (with volume mounted at /app):
# DATA_PATH = "/app/data"
```

---

## Running with Docker (recommended for reproducibility)

To guarantee the same environment with all dependencies, you can run the project inside Docker.  

### 1. Build the image  

```bash
docker build -t olist_project .
```

### 2 .Run the container with Jupyter Notebook

**On Mac/Linux:**

```
docker run -it --rm -p 8888:8888 -v "$(pwd)":/app olist_project \
  jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=''
```

**On Windows (PowerShell):**
```
docker run -it --rm -p 8888:8888 -v "${PWD}:/app" olist_project `
  jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=''
```

### 3. Open Jupyter

After running the command, open http://localhost:8888
 in your browser.

Inside the notebook, remember to set:

```
DATA_PATH = "/app/data"
```