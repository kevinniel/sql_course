-- suppression de la ligne où le nom est "romain"
DELETE FROM Animal 
WHERE nom = 'Romain';

-- suppression de tous les mâles
DELETE FROM Animal 
WHERE sexe = 'M';

-- suppression de toutes les lignes
DELETE FROM Animal;

-- Modification de Enzo, on va l'appeler Michelle
UPDATE Animal 
SET sexe='F', nom='Michelle' 
WHERE id=2;

-- Modification de Michelle, toutes les michelle vont s'appeler Enzo
UPDATE Animal
SET nom="Enzo"
WHERE nom="Michelle";