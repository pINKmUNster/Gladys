Gladys
======
L'objectif est de construire à l'aide d'un Raspberry Pi un système similaire au JARVIS du film Iron Man, capable de gérer la maison, diffuser des news, de la musique, lancer un réveil, etc...

Vous allez me dire : plein de projets existent déjà! et pourtant ça ressemble bien souvent à du bricolage!

En fait, je pars sur une toute autre approche. Bien souvent, les projets JARVIS sont des sortes de siri, l'utilisateur pose une question ("Quel temps fait-il ?"), le système analyse la voix, et fournit une réponse. Le problème, c'est que la reconnaissance vocale, en 2014, c'est pas encore ça... et encore moins sous linux.

Alors j'ai pris le problème à l'envers : Et si au lieu que ça soit l'homme qui sollicite vocalement l'assistant, ça soit l'assistant qui sollicite l'homme au bon moment ?
C'est à dire qu'au lieu que ce soit l'utilisateur qui pose une question, ça soit l'assistant qui prenne la parole, ou fasse une action, pour aider l'utilisateur.

Imaginons un scénario :
- Il est 8H, Gladys me réveille car elle sait qu'à 9H je dois aller travailler, et que je mets, selon mes préférences, 1 heure pour me préparer et aller au boulot. Elle a vu grâce à une API de météo qu'il pleut dehors, et en profite pour me le signaler au réveil. Dès que je sors de mon lit, elle détecte un mouvement dans la pièce et coupe le réveil, allume la lumière, et lance une playlist/la radio.
- Il est 8H45, je sors de chez moi pour aller travailler, Gladys détecte que je ne suis plus là, elle coupe lumière, musique, etc...
- Cependant, après le boulot, je sors chez des amis, et reste dormir chez eux. Gladys sait que je ne suis pas rentré (pas de mouvement), et désactive donc le réveil du lendemain, car pas besoin de sonner si je ne dors pas chez moi, et que mon appartement est vide !
- Le lendemain, 8H, Gladys m'envoie une notification sur mon portable pour me rappeler qu'a 9H je dois être au bureau.
- 19H, je rentres du bureau, Gladys allume la lumière, me souhaite la bienvenue, et me notifie les messages que j'ai reçu en mon absence
Ainsi, au lieu d'un système passif qui attend des commandes de l'utilisateur, nous avons ici un véritable assistant qui aide l'utilisateur au quotidien en prenant des iniatives. Et ce n'est pas futuriste ! Toutes les technos citées ci-dessus existent...

Gladys est maintenant disponible au téléchargement, vous pouvez la télécharger depuis cette page :
http://getgladys.com
