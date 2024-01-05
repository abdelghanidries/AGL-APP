<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gestion des Emprunts</title>
    <link rel="stylesheet" href="styles.css"> <!-- Lien vers le fichier CSS -->
    <style>
    /* Styles pour la mise en page */
body {
    font-family: Arial, sans-serif;
    margin: 20px;
}

h1 {
    text-align: center;
}

form {
    border: 1px solid #ccc;
    padding: 20px;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"] {
    padding: 8px;
    width: 100%;
    margin-bottom: 10px;
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

#liste-emprunts {
    border: 1px solid #ccc;
    padding: 20px;
}


/* Styles pour le tableau des emprunts */
#liste-emprunts {
    margin-top: 20px;
    border: 1px solid #ccc;
    padding: 20px;
}

#table-emprunts {
    width: 100%;
    border-collapse: collapse;
}

#table-emprunts th, #table-emprunts td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

#table-emprunts th {
    background-color: #f2f2f2;
}

#table-emprunts tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}

#table-emprunts tbody tr:hover {
    background-color: #f2f2f2;
}

   </style> 
    
</head>
<body>
    <h1>Gestion des Emprunts</h1>

    <form id="form-emprunt">
        <label for="id">ID :</label>
        <input type="text" id="id" name="id" required><br>
        
        <label for="matricule">Matricule :</label>
        <input type="text" id="matricule" name="matricule" required><br>
        
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" required><br>
        
        <label for="prenom">Prénom :</label>
        <input type="text" id="prenom" name="prenom" required><br>
        
        <label for="isbn">ISBN :</label>
        <input type="text" id="isbn" name="isbn" required><br>
        
        <button type="submit">Emprunter</button>
    </form>


 <div id="liste-emprunts">
        <h2>Liste des Emprunts</h2>
        <table id="table-emprunts">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Matricule</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>ISBN</th>
                </tr>
            </thead>
            <tbody id="tbody-emprunts">
                <!-- Les données des emprunts seront ajoutées ici -->
            </tbody>
        </table>
    </div>
    <script src="script.js"></script> <!-- Lien vers le fichier JavaScript -->
</body>
</html>
