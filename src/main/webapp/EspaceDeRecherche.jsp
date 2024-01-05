<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recherche par ISBN</title>
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

.container {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

input[type="text"] {
    padding: 8px;
    width: 300px;
    margin-right: 10px;
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

#result {
    text-align: center;
    font-size: 18px;
}
    
    
    
    </style>
</head>
<body>
    <h1>Recherche par ISBN</h1>
    <div class="container">
        <input type="text" id="isbnInput" placeholder="Entrez l'ISBN...">
        <button id="searchButton">Rechercher</button>
    </div>
    <div id="result"></div>
    <script src="script.js"></script> <!-- Lien vers le fichier JavaScript -->
</body>
</html>
