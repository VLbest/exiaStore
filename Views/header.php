<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Exi@Store.com</title>
    <!-- On ouvre la fen?tre ? la largeur de l'?cran -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Int?gration du CSS Bootstrap -->
    <link href="./css/bootstrap.css" rel="stylesheet" media="screen">
    <!-- Int?gration de la libraire jQuery -->
    <script src="./js/jquery.js"></script>
    <!-- Int?gration de la libraire de composants du Bootstrap -->
    <script src="./js/bootstrap.min.js"></script>
    <!-- Int?gration du CSS responsive Bootstrap -->
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet"> 
</head>
<body>
    <!-- Conteneur principal -->
    <div class="container">

        <!-- Barre de navigation -->
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">

                <!--Bouton pour la version mobile-->
                <a class="btn btn-navbar" data-toggle="collapse" data-target="nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="index.php?page=MainPage">Exi@store</a>

                <!--Structure du menu-->
                <div class="nav-collapse collapse">
                    <ul class="nav">

                        <li class="active"><a href="index.php?page=MainPage">Home</a></li>

                        <!-- Menu d?roulant -->
                        <li class="dropdown">
                            <a href="index.php?page=Catalog" class="dropdown-toggle" data-toggle="dropdown">Catalog<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="index.php?page=CdPage">CD</a></li>
                                <li><a href="index.php?page=DvdPage">DVD</a></li>
                                <li class="divider"></li>
                                <li class="nav-header">A propos</li>
                                <li><a href="index.php?page=Soon">Prochainement</a></li>

                            </ul>
                        </li>

                        <li><a href="index.php?page=Connection">Connexion</a></li>
                    </ul>

                </div>


                <!--Search bar-->
                <form class="navbar-search pull-right" action="#">
                    <input type="text" class="search-query span2" placeholder="Search" />
                </form>

            </div>

       </div>
   

    