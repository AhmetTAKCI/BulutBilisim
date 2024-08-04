# Kullanılacak temel imajı belirle
FROM python:3.13.0rc1-slim

# Çalışma dizinini belirle
WORKDIR /app

# Bulunduğumuz dizindeki dosyaları container içine kopyala
COPY . /app

# requirements.txt dosyasındaki gerekli paketleri yükle
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyalayın
COPY . .

# Uygulamanın çalışacağı portu belirtin
EXPOSE 5000

# Dünya adında bir ortam değişkeni tanımla
ENV NAME World

# Container başlatıldığında app.py dosyasını çalıştır
CMD ["python", "app.py"]