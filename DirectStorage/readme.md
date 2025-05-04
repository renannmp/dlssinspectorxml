## O que faz o DirectStorage?

Breve vídeo do que significa o DirectStorage, tecnologia que está presente nos consoles a bastante tempo e que só agora tá vindo no PC em alguns jogos -> https://www.youtube.com/watch?v=E35aClzXZBI

A partir da versão 1.2, ela também ajuda os HDs e não só SSDs em carregamentos de textura.

# DirectStorage e DirectX 12 Agility


Jogos que utilizam da tecnologia DirectStorage, podem ter suas DLLs atualizadas para a mais recente também, existe relatos de que a atualização dessas DLLs resolvem muitos problemas de stuttering quando o jogo usa uma versão mais antiga. 
Alguns jogos que tiveram melhoria na estabilidade atualizando as DLLs do DStorage são: Monster Hunter: Wilds, GTA V: Enhanced, Final Fantasy VII Rebirth, Diablo IV.


Vá até a pasta do jogo e pesquise por D3D12Core.dll e dstorage.dll, se o jogo tiver as 4 DLLs, substitua todas elas.
Você vai encontrar essas DLLs na pasta do jogo, e a mais recente, aqui no repositório ou no oficial da Microsoft.


# Em resumo
Procure pelas DLLs na pasta do jogo, usando a pesquisa do Windows Explorer, se o jogo tiver as 4, faça um backup delas renomeando para .bak e jogue as novas lá no lugar delas.

**dstorage.dll** e **dstoragecore.dll** são as DLLs para o DirectStorage.

**D3D12Core.dll** e **D3D12SDKLayers.dll** são as DLLs do DirectX 12 Agility.

Se o jogo tiver as 4, substitua todas, caso contrário, substitua apenas as que o jogo possui.


# Downloads
**DLLs atualizadas** -> [Clique aqui](https://github.com/renannmp/dlssinspectorxml/raw/main/DirectStorage/DirectStorage%201.2.4%20%2B%20DirectX%2012%20Agility%201.716.1%20DLLs.7z.7z)

**Repositórios Oficiais**:

Repositório Microsoft DirectStorage -> [Clique aqui](https://www.nuget.org/packages/Microsoft.Direct3D.DirectStorage#versions-body-tab)

Repositório Microsoft DirectX 12 Agility -> [Clique aqui](https://www.nuget.org/packages/Microsoft.Direct3D.D3D12/1.615.0#versions-body-tab)
