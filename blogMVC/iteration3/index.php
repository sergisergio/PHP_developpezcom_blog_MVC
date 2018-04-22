<?php

// Ce fichier index.php fait le lien entre le modèle et la vue

// Modele.php (PHP uniquement) pour l'accès aux données
require 'Modele.php';

$billets = getBillets();
// VueAccueil.php (PHP et HTML)
require 'vueAccueil.php';