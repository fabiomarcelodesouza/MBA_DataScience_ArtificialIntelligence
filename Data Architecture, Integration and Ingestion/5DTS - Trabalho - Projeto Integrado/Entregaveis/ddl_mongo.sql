docker exec -it mongo bash
mongo -u root -p
--PASSWORD: root

use projeto_integrado
db.createCollection("foto")
db.createCollection("assinatura")
exit
exit