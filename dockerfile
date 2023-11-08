# Utilisez l'image de base Python
FROM python:3

# Créez un répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY app.py /app/
COPY requirements.txt /app/

# Installez les dépendances
RUN pip install -r requirements.txt

# Commande pour exécuter l'application
CMD ["python", "app.py"]
