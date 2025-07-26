# Menggunakan image Python resmi
FROM python:3.10-slim

# Set workdir di dalam container
WORKDIR /app

# Salin file requirements dan install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file ke dalam container
COPY . .

# Jalankan aplikasi
CMD ["python", "app.py"]
