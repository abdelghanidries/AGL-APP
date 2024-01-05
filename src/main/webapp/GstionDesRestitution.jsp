<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gestion des Restitutions</title>
    <link rel="stylesheet" href="styles.css"> <!-- Lien vers le fichier CSS -->
    
    
    <style>
    
    
    /* Styles pour la gestion des restitutions */
body {
    font-family: Arial, sans-serif;
    margin: 20px;
}

h1 {
    text-align: center;
}

#liste-restitutions {
    margin-top: 20px;
}

#table-restitutions {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
}

#table-restitutions th,
#table-restitutions td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

#table-restitutions th {
    background-color: #f2f2f2;
}

#table-restitutions tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}

#table-restitutions tbody tr:hover {
    background-color: #f2f2f2;
}

#table-restitutions th:nth-child(n+5),
#table-restitutions td:nth-child(n+5) {
    width: 100px;
}

button {
    padding: 6px 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #45a049;
}
    
    </style>
    
    
</head>
<body>
    <h1>Gestion des Restitutions</h1>

    <div id="liste-restitutions">
        <h2>Liste des Restitutions</h2>
        <table id="table-restitutions">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Matricule</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>ISBN</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody-restitutions">
                <!-- Les données des restitutions seront ajoutées ici -->
            </tbody>
        </table>
    </div>

    <script src="script.js"></script> <!-- Lien vers le fichier JavaScript -->
</body>
</html>
