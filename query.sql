SELECT owners.name, AVG(LENGTH(pets.name)) AS average_length FROM owners
JOIN pets
ON pets.owner_id = owners.id
GROUP BY owners.id
HAVING AVG(LENGTH(pets.name)) > 4
ORDER BY AVG(LENGTH(pets.name)) DESC;