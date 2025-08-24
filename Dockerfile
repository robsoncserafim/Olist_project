# Lightweight base image with Python 3.10
FROM python:3.10-slim

# Avoid interactive prompts and improve logs
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# System dependencies (includes minimal build tools and curl)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
 && rm -rf /var/lib/apt/lists/*

# Working directory inside the container
WORKDIR /app

# Copy only requirements first
COPY requirements.txt /app/requirements.txt

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install jupyter

# Copy the rest of the project files
COPY . /app

# Expose Jupyter Notebook port
EXPOSE 8888

# Default command: start Jupyter Notebook accessible externally
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token="]

