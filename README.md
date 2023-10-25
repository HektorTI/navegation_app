# navegation_app

Criei um aplicativo que visa demonstrar as funcionalidades das aulas solicitadas, além de ter adicionado alguns recursos adicionais para aprimorá-lo. No diretório principal do aplicativo, utilizei um argumento chamado DebugShowCheckedModeBanner para remover a marca de debug na tela. 

Organizei o código em pastas separadas e também criei um widget personalizado para animações com o uso do widget "Hero" dentro de um card. Separei essa classe em um diretório distinto e a reutilizei, aproveitando o construtor para ajustar os valores dentro dos cards. Inicialmente, tive a ideia de exibir apenas a imagem e enfrentei desafios ao tentar remover o espaço entre a imagem e a barra de aplicativos. No entanto, descobri a propriedade "extendBodyBehindAppbar" e consegui eliminar esse espaço definindo as dimensões de "width" e "height". Posteriormente, quando decidi utilizar para o widget “card”, essa personalização não foi mais necessária, razão pela qual você encontrará códigos comentados. Isso foi feito com o propósito de facilitar futuras consultas.

A navegação no aplicativo foi implementada utilizando "push" e "pop" para avançar e retroceder nas telas. Não foi possível utilizar "push.named" porque o aplicativo não foi projetado  apenas para abrir as telas de forma direta. Além disso, foi utilizada a passagem de parâmetros, que pode ser observada no "Debug Console", bem como a passagem de parâmetros que é exibida na tela. O "Hero" foi empregado para criar animações ao transitar entre as telas.



![Screenshot 2023-10-03 at 14 21 09](https://github.com/HektorTI/navegation_app/assets/142464152/5b5dcf58-4da1-4de6-b5c9-fa57525628e2)
