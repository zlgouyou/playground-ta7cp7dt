# Les fonctions Ordinaires
@[Déclaration d'une fonction add qui additionne les deux arguments en paramètre]({"stubs": ["Function_Plain_Definition.hs"], "command": "runhaskell Function_Plain_Definition_Test.hs"})
@[Utilisez votre fonction déclarée précédemment pour faire l'addition de 1 et 2]({"stubs": ["Function_Plain_Use_Simple.hs"], "command": "runhaskell Function_Plain_Use_Simple_Test.hs"})
@[La même chose mais en notation infix]({"stubs": ["Function_Plain_Use_Infix.hs"], "command": "runhaskell Function_Plain_Use_Infix_Test.hs"})

# Les opérateurs
@[Déclarez un opérateur // qui réalise la division entière de deux nombres]({"stubs": ["Function_Operator_Declaration.hs"], "command": "runhaskell Function_Operator_Declaration_Test.hs"})
@[Utilisez votre opérateur avec les chiffres 3 et 2]({"stubs": ["Function_Operator_Use.hs"], "command": "runhaskell Function_Operator_Use_Test.hs"})

# Le pattern matching
@[Utilisez les gardes pour écrire la fonction décrivant une suite de fibonacci]({"stubs": ["Function_PatternMatching_Fibonacci.hs"], "command": "runhaskell Function_PatternMatching_Fibonacci_Test.hs"})
@[Utilisez le filtrage par motif pour écrire la fonction décrivant une suite de fibonacci]({"stubs": ["Function_PatternMatching_Fibonacci.hs"], "command": "runhaskell Function_PatternMatching_Fibonacci_Test.hs"})
@[Utilisez le filtrage par motif pour écrire une fonction qui prend en entrée un tuple de deux entiers et qui ajoute 1 au premier élément et 2 au second]({"stubs": ["Function_PatternMatching_Tuple.hs"], "command": "runhaskell Function_PatternMatching_Tuple_Test.hs"})
@[Utilisez le filtrage par motif pour écrire une fonction qui va appliquer une fonction à tous les éléments d'une liste]({"stubs": ["Function_PatternMatching_List.hs"], "command": "runhaskell Function_PatternMatching_List_Test.hs"})

# Fonctions anonymes
@[Utilisez la fonction map (Data.List) et une fonction anonyme pour ajouter 2 à tout les éléments de la liste en paramètre]({"stubs": ["Function_Anonymous.hs"], "command": "runhaskell Function_Anonymous_Test.hs"})

# Application partielle
@[Créez une fonction qui ajoutera 10 en utilisant une application partielle de la fonction add définie précédemment]({"stubs": ["Function_PartialApplication_Plain.hs"], "command": "runhaskell Function_PartialApplication_Plain_Test.hs"})
@[Faites la même chose que précédemment mais en utilisant l'opérateur +]({"stubs": ["Function_PartialApplication_Operator.hs"], "command": "runhaskell Function_PartialApplication_Operator_Test.hs"})

# Composition
@[Utilisez la composition pour implémenter foo (x) = 4 * (10 + x)]({"stubs": ["Function_Composition.hs"], "command": "runhaskell Function_Composition_Test.hs"})
