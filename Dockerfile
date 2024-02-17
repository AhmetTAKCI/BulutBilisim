# Kullanılacak temel imajı belirle
FROM python:3.11.3-slim-buster

# Çalışma dizinini belirle
WORKDIR /app

# Bulunduğumuz dizindeki dosyaları container içine kopyala
COPY . /app

# requirements.txt dosyasındaki gerekli paketleri yükle
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Uygulamanın çalışacağı portu belirtin
EXPOSE 5000

# Dünya adında bir ortam değişkeni tanımla
ENV NAME World

# Container başlatıldığında app.py dosyasını çalıştır
CMD ["python", "app.py"]