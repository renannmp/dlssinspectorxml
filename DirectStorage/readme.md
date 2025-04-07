## O que faz o DirectStorage?

Breve vídeo do que significa o DirectStorage, tecnologia que está presente nos consoles a bastante tempo e que só agora tá vindo no PC em alguns jogos -> https://www.youtube.com/watch?v=E35aClzXZBI

A partir da versão 1.2, ela também ajuda os HDs e não só SSDs em carregamentos de textura.

# DirectStorage e DirectStorage Agility


Jogos que utilizam da tecnologia DirectStorage, podem ter suas DLLs atualizadas para a mais recente também, existe relatos de que a atualização dessas DLLs resolvem muitos problemas de stuttering quando o jogo usa uma versão mais antiga. 
Alguns jogos que tiveram melhoria na estabilidade atualizando as DLLs do DStorage são: Monster Hunter: Wilds, GTA V: Enhanced, Final Fantasy VII Rebirth, Diablo IV.


**Para o Windows 11**: Essas são as DLLs que podem ser atualizadas, dstorage.dll e dstoragecore.dll, o jogo precisa ter elas nas pasta, ou seja, já com suporte, porém antigo.

**Para o Windows 10**: O jogo precisa usar o DirectX Agility SDK e as DLLs D3D12Core.dll, D3D12SDKLayers.dll precisam estar presentes na pasta do jogo, sem elas, o DirectStorage não é compatível com o Windows 10. (Só vi elas no Final Fantasy Rebirth).


Em qualquer das duas opções, vá até a pasta do jogo e pesquise por D3D12Core.dll e dstorage.dll, se o jogo tiver somente a dstorage.dll vai funcionar somente no Windows 11, se o jogo tiver as 4 DLLs, substitua todas elas. Você pode sim substituir a dstorage.dll e dstoragecore.dll no Windows 10 se o jogo tiver somente ela, mas não é 100% certeza de que o jogo vá utilizar a tecnologia.
Você vai encontrar essas DLLs na pasta do jogo, e a mais recente, aqui no repositório ou no oficial da Microsoft.

Repositório Microsoft DirectStorage -> [Clique aqui](https://www.nuget.org/packages/Microsoft.Direct3D.DirectStorage#versions-body-tab)

Repositório Microsoft DirectStorage Agility (Windows 10) -> [Clique aqui](https://www.nuget.org/packages/Microsoft.Direct3D.D3D12/1.615.0#versions-body-tab)


# Em resumo
**dstorage.dll** e **dstoragecore.dll** são as DLLs para o DirectStorage no Windows 11.

**D3D12Core.dll** e **D3D12SDKLayers.dll** são as DLLs que fazem o suporte chegar no Windows 10.

Se o jogo tiver as 4, substitua todas, caso contrário, substitua apenas as que o jogo possui.
