# Utilisez une image Python officielle comme image de base
FROM python:3.8-slim-buster

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le contenu du répertoire courant dans le répertoire /app dans le conteneur
COPY . /app

# Installez les dépendances spécifiées dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Rendez le port 5000 disponible pour le monde extérieur
EXPOSE 5000

# Exécutez app.py lorsque le conteneur est lancé
CMD ["python", "app.py"]
