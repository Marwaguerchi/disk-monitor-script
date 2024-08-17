#!/bin/bash
# Script de sauvegarde

# Variables
SOURCE_DIR="/home/marwa/Documents"
BACKUP_DIR="/home/marwa/Backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Création du répertoire de sauvegarde si inexistant
mkdir -p "$BACKUP_DIR/$TIMESTAMP"

# Vérifier si le répertoire source contient des fichiers
if [ "$(ls -A $SOURCE_DIR)" ]; then
    # Copie des fichiers
    cp -r "$SOURCE_DIR/"* "$BACKUP_DIR/$TIMESTAMP/"
    echo "Sauvegarde terminée avec succès dans $BACKUP_DIR/$TIMESTAMP"
else
    echo "Le répertoire $SOURCE_DIR est vide, rien à sauvegarder."
fi
