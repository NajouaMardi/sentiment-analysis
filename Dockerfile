# Utilise une image Python légère
FROM python:3.10-slim

# Installer des dépendances système utiles
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /app

# Copier les dépendances Python et les installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Installer Jupyter si ce n’est pas déjà dans requirements.txt
RUN pip install jupyter

# Copier le reste des fichiers (y compris app/data/)
COPY . .

# Exposer le port Jupyter
EXPOSE 8888

# Commande pour lancer Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
