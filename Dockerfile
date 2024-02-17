# Kullanılacak temel imajı belirle
FROM python:3.13.0a3-slim

# Çalışma dizinini belirle
WORKDIR /app

# Bulunduğumuz dizindeki dosyaları container içine kopyala
COPY . /app

# requirements.txt dosyasındaki gerekli paketleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# Dünya adında bir ortam değişkeni tanımla
ENV NAME World

# Container başlatıldığında app.py dosyasını çalıştır
CMD ["python", "app.py"]