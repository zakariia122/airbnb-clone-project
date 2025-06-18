Airbnb Clone Project

Ce projet est une reproduction de la plateforme Airbnb, avec un accent sur le développement backend. Il a été réalisé dans le cadre du programme de génie logiciel ALX.

Il simule un système de réservation réel où les utilisateurs peuvent publier des propriétés, les rechercher, effectuer des réservations et laisser des avis.

Objectifs du projet

• Construire un backend évolutif avec Django
• Concevoir et gérer une base de données relationnelle avec MySQL
• Implémenter des APIs REST sécurisées
• Utiliser l’intégration et le déploiement continu (CI/CD) avec GitHub Actions et Docker

Team Roles

Ce projet a été réalisé individuellement. J’ai assuré moi-même tous les rôles nécessaires à la construction du backend.

Backend Developer  
J’ai développé les API REST avec Django, en gérant la logique métier, les routes et les vues.

Database Administrator  
J’ai conçu et géré la structure de la base de données MySQL, y compris les relations entre les entités et les migrations.

DevOps Engineer  
J’ai mis en place l’automatisation du déploiement à l’aide d’outils comme GitHub Actions et Docker.

QA Engineer  
J’ai testé les différentes fonctionnalités pour assurer la qualité et la stabilité de l’application.
Database Design

Le projet utilise une base de données relationnelle (MySQL) structurée autour de plusieurs entités principales :

Users
Champs : id, nom, email, mot de passe, date d’inscription
Relation : un utilisateur peut avoir plusieurs propriétés et plusieurs réservations

Properties
Champs : id, titre, description, adresse, prix, user_id
Relation : une propriété appartient à un seul utilisateur et peut recevoir plusieurs réservations

Bookings
Champs : id, user_id, property_id, date_debut, date_fin, statut
Relation : une réservation est liée à un utilisateur et une propriété

Payments
Champs : id, booking_id, montant, statut, date
Relation : chaque paiement est associé à une réservation

Reviews
Champs : id, user_id, property_id, note, commentaire, date
Relation : un utilisateur peut laisser plusieurs avis sur différentes propriétés

Feature Breakdown

Gestion des utilisateurs
Les utilisateurs peuvent s’inscrire se connecter gérer leur profil et consulter leurs réservations

Gestion des propriétés
Les utilisateurs peuvent ajouter modifier ou supprimer des propriétés à louer Chaque propriété contient des informations comme le titre l’adresse le prix et les photos

Système de réservation
Les utilisateurs peuvent réserver une propriété pour une période donnée Le système vérifie la disponibilité et enregistre la réservation

Paiements sécurisés
Les utilisateurs peuvent payer leurs réservations via une méthode de paiement fiable Chaque paiement est lié à une réservation

Avis et évaluations
Les utilisateurs peuvent laisser des avis et des notes après leur séjour Cela aide les autres à faire un choix plus éclairé


Sécurité de l’API

Authentification
Le système vérifie l’identité de chaque utilisateur pour s’assurer que seules les personnes autorisées accèdent à leur compte

Autorisation
Chaque utilisateur a des droits d’accès spécifiques et ne peut pas consulter ou modifier des ressources qui ne lui appartiennent pas

Limitation des requêtes
Un système limite le nombre de requêtes envoyées par un utilisateur dans un temps donné pour éviter les attaques par surcharge

Chiffrement des données
Les données sensibles comme les mots de passe et les informations de paiement sont chiffrées pour garantir leur confidentialité

Sécurisation des paiements
Les transactions financières passent par des plateformes de paiement sécurisées pour garantir la protection des utilisateurs


CI CD Pipeline

Le projet utilise l’intégration continue et le déploiement continu pour automatiser le processus de développement

À chaque modification du code le système effectue automatiquement des tests et déploie les nouvelles versions sans intervention manuelle

Des outils comme GitHub Actions et Docker permettent de simplifier ce processus et de garantir une livraison rapide fiable et sans erreurs

Ce pipeline améliore la productivité réduit les bugs et assure une meilleure gestion du cycle de vie du logiciel







