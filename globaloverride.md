# Global Streamline DLLs Override

Essa ferramenta faz a substituição das DLLs do Frame Generation, Super Resolution e Ray Reconstruction de forma global no sistema, e não só isso, ela também atualiza as DLLs Streamline (quando suportado pelo jogo) que incluem: NVIDIA Reflex, Multi-Frame-Generation. Com isso, é possivel usar MFG em jogos que até não tinham suporte a ele, mas tinha o Frame Generation 1X.


Roda de forma portátil, ou seja, não requer instalação, ela substitui as DLLs na pasta ProgramData\NVIDIA\NGX, fazendo o driver carregar elas nos jogos.

## Como usar

Baixe a última versão dessa ferramenta (nvidiaDlssGlom.exe) no repositório do desenvolvedor -> https://github.com/SimonMacer/AnWave/releases/tag/AnWave-DLSS

Baixe também a última versão do NVIDIA Streamline SDK -> https://github.com/NVIDIA-RTX/Streamline/releases/latest

Vá até a pasta streamline-sdk-v2.10.0\bin\x64 pegue todas as DLLs dentro dela, somente as DLLs dessa pasta, de forma alguma pegue as da pasta "development"

<img width="623" height="322" alt="image" src="https://github.com/user-attachments/assets/32ef7aac-b30a-4c51-888b-09aa7e9887f1" />

E coloque junto ao executável do nividaDlssGlom.exe


![Screenshot](https://i.imgur.com/qSoSCey.png)

Marque a caixa **"Enable NVIDIA Streamline Override Mode"**

A caixa **"Force Enable DLSS Override on All DLSS Titles"** serve para que você controle o override pelo NVIDIA Profile Inspector, com ela **MARCADA**, todos os jogos terão suas DLLs substituidas pela última, com ela **DESMARCADA**, você controla quando substituir a DLL pelo Profile Inspector.

A caixa **"Show DLSS Indicator"** ativa o overlay do DLSS no jogo, alterando o registro (o mesmo que faz o DLSS Overlay Toggle)

Minha recomendação é deixar igual ao da screenshot acima, apenas desmarcar o Show DLSS Indicator depois que confirmar que funcionou.

Clique em "Update" e pronto.
