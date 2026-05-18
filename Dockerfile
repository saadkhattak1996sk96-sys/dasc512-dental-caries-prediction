# Base image — Python 3.10 slim for minimal size
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements first — Docker caches this layer
# so rebuilds are faster if only the notebook changes
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter so the notebook can run interactively
RUN pip install --no-cache-dir jupyter nbconvert

# Copy the notebook and outputs into the container
COPY DASC512_Assignment2_Dental_Caries_Prediction.ipynb .
COPY figures/ ./figures/
COPY tables/ ./tables/

# Expose Jupyter port
EXPOSE 8888

# Launch Jupyter when container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", \
     "--no-browser", "--allow-root", \
     "--NotebookApp.token=''", \
     "--NotebookApp.password=''"]
