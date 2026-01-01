# 1️⃣ Base image
FROM python:3.9-slim

# 2️⃣ Set working directory
WORKDIR /app

# 3️⃣ Copy dependency file
COPY requirements.txt .

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy application code
COPY app.py .

# 6️⃣ Expose application port
EXPOSE 5000

# 7️⃣ Run the app
CMD ["python", "app.py"]
