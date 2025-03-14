FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Install Java, curl, unzip
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openjdk-17-jdk \
        curl \
        unzip \
        wget \
    && rm -rf /var/lib/apt/lists/*

# Install apktool separately (official method)
RUN wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool && \
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar -O /usr/local/bin/apktool.jar && \
    chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar

# Copy the Flask app source code
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "run.py"]
