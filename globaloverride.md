# Global Streamline DLLs Override

Essa ferramenta faz a substituição das DLLs do Frame Generation, Super Resolution e Ray Reconstruction de forma global no sistema, e não só isso, ela também atualiza as DLLs Streamline (quando suportado pelo jogo) que incluem: NVIDIA Reflex, Multi-Frame-Generation. Com isso, é possivel usar MFG em jogos que até não tinham suporte a ele, mas tinha o Frame Generation 1X.


Roda de forma portátil, ou seja, não requer instalação, ela substitui as DLLs na pasta ProgramData\NVIDIA\NGX, fazendo o driver carregar elas nos jogos.

## Como usar

Baixe a última versão dessa ferramenta (nvidiaDlssGlom.exe) no repositório do desenvolvedor. 

Link -> https://github.com/SimonMacer/AnWave/releases/tag/AnWave-DLSS

Na nova versão, é possível fazer a ferramenta baixar os arquivos necessários direto dos servidores da NVIDIA, apenas inicie ela e marque "Enable NVIDIA Streamline Override Mode" e clique em "Download from server"

![Screenshot](https://i.imgur.com/qSoSCey.png)

Marque a caixa **"Enable NVIDIA Streamline Override Mode"**

A caixa **"Force Enable DLSS Override on All DLSS Titles"** serve para que você controle o override pelo NVIDIA Profile Inspector, com ela **MARCADA**, todos os jogos terão suas DLLs substituidas pela última, com ela **DESMARCADA**, você controla quando substituir a DLL pelo Profile Inspector.

A caixa **"Show DLSS Indicator"** ativa o overlay do DLSS no jogo, alterando o registro (o mesmo que faz o DLSS Overlay Toggle)

Minha recomendação é deixar igual ao da screenshot acima, apenas desmarcar o Show DLSS Indicator depois que confirmar que funcionou.


## Qual o ganho?

Com as DLLs substituidas, em jogos que suportam puxar essas DLLs Streamline mais recentes, ganharão: 

Jogos com suporte ao Frame Generation ganharão o suporte ao Multi-Frame-Generation forçando pelo NVIDIA Profile Inspector;

NVIDIA Reflex melhora consideravelmente; 

Melhor tempo de quadro e fluidez com as tecnologias NVIDIA.
