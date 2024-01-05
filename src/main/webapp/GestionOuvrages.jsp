<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gestion des Ouvrages</title>
    <link rel="stylesheet" href="styles.css"> <!-- Lien vers le fichier CSS -->
    
    <style>
    
    /* Stylisation de la page */
body {
    font-family: Arial, sans-serif;
    margin: 20px;
}

h1 {
    text-align: center;
}

/* Ajout de styles pour le formulaire */
form {
    margin-bottom: 20px;
    border: 1px solid black; /* Bordure noire */
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
}

form label, form input {
    margin-bottom: 10px;
}

form label {
    width: 150px; /* Largeur des libellés */
    display: inline-block;
    text-align: right;
    margin-right: 15px;
}


table {
    width: 100%;
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

button {
    padding: 8px 15px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}
    
    
    </style>
</head>
<body>
    <h1>Gestion des Ouvrages</h1>
    
    <!-- Formulaire pour ajouter un livre -->
    <form id="form-ajout">
        <label for="isbn">ISBN :</label>
        <input type="text" id="isbn" name="isbn" required><br>
        
        <label for="rayon">Rayon :</label>
        <input type="text" id="rayon" name="rayon" required><br>
        
        <label for="nom-livre">Nom du Livre :</label>
        <input type="text" id="nom-livre" name="nom-livre" required><br>
        
        <button type="submit">Ajouter</button>
    </form>
    
    <!-- Tableau pour afficher les livres -->
    <table id="table-ouvrages">
        <thead>
            <tr>
                <th>ID</th>
                <th>ISBN</th>
                <th>Rayon</th>
                <th>Nom du Livre</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Les données des livres seront ajoutées ici -->
        </tbody>
    </table>

    <!-- Script pour la gestion des données -->
    <script>
 // Fonction pour ajouter un livre au tableau
    function ajouterLivre(event) {
        event.preventDefault();

        const isbn = document.getElementById('isbn').value;
        const rayon = document.getElementById('rayon').value;
        const nomLivre = document.getElementById('nom-livre').value;

        const tableOuvrages = document.getElementById('table-ouvrages').getElementsByTagName('tbody')[0];
        const newRow = tableOuvrages.insertRow();

        const cellId = newRow.insertCell(0);
        const cellIsbn = newRow.insertCell(1);
        const cellRayon = newRow.insertCell(2);
        const cellNomLivre = newRow.insertCell(3);
        const cellAction = newRow.insertCell(4);

        cellId.appendChild(document.createTextNode('Nouvel ID')); // Remplacer par la logique pour générer un nouvel ID
        cellIsbn.appendChild(document.createTextNode(isbn));
        cellRayon.appendChild(document.createTextNode(rayon));
        cellNomLivre.appendChild(document.createTextNode(nomLivre));

        const deleteButton = document.createElement('button');
        deleteButton.innerHTML = 'Supprimer';
        deleteButton.onclick = function() {
            tableOuvrages.deleteRow(newRow.rowIndex);
        };

        const editButton = document.createElement('button');
        editButton.innerHTML = 'Éditer';
        // Ajouter la logique d'édition du livre en modifiant les données dans les cellules

        cellAction.appendChild(deleteButton);
        cellAction.appendChild(editButton);

        // Réinitialiser le formulaire
        document.getElementById('form-ajout').reset();
    }

    // Associer la fonction ajouterLivre à l'événement submit du formulaire
    document.getElementById('form-ajout').addEventListener('submit', ajouterLivre);

    
    
    </script> <!-- Lien vers le fichier JavaScript -->
</body>
</html>
