# Global Streamline DLLs Override

Essa ferramenta faz a substituição das DLLs do Frame Generation, Super Resolution e Ray Reconstruction de forma global no sistema, e não só isso, ela também atualiza as DLLs Streamline (quando suportado pelo jogo) que incluem: NVIDIA Reflex, Multi-Frame-Generation. Com isso, é possivel usar MFG em jogos que até não tinham suporte a ele, mas tinha o Frame Generation 1X.


Roda de forma portátil, ou seja, não requer instalação, ela substitui as DLLs na pasta ProgramData\NVIDIA\NGX, fazendo o driver carregar elas nos jogos.

## Como usar

Baixe a última versão dessa ferramenta (nvidiaDlssGlom.exe) no repositório do desenvolvedor. 

Link -> https://github.com/SimonMacer/AnWave/releases/tag/AnWave-DLSS

Crie uma pasta separada e coloque o executável nela **JUNTO** com as 3 DLLs (nvngx_dlss.dll, nvngx_dlssg.dll e nvngx_dlssd.dll), e **TODAS** as Streamline DLLs (sl.reflex.dll, sl.pcl.dll, sl.nvperf.dll, sl.nis.dll, sl.interposer.dll, sl.deepdvc.dll, sl.common.dll, nvngx_deepdvc.dll).

**Links para download das DLLs:**

DLSS-SR: https://www.techpowerup.com/download/nvidia-dlss-dll/

DLSS-FG: https://www.techpowerup.com/download/nvidia-dlss-3-frame-generation-dll/

DLSS-RR: https://www.techpowerup.com/download/nvidia-dlss-3-ray-reconstruction-dll/

Streamline: [https://github.com/NVIDIA-RTX/Streamline](https://github.com/NVIDIA-RTX/Streamline/releases)

![Screenshot](https://i.imgur.com/HDwGDO2.png)


Com todas as dlls na pasta, execute a ferramenta.

![Screenshot](https://i.imgur.com/cOyV6hG.png)


Confirme se a ferramenta detectou as 3 DLLs vendo a versão delas.

Marque a caixa "Enable NVIDIA Streamline Override Mode"

A caixa **"Let users decide DLSS Overridden by latest available"** serve para que você controle o override pelo NVIDIA Profile Inspector, com ela **DESMARCADA**, todos os jogos terão suas DLLs substituidas pela última, com ela **MARCADA**, você controla quando substituir a DLL pelo Profile Inspector.

A caixa **"Show DLSS Indicator"** ativa o overlay do DLSS no jogo, alterando o registro (o mesmo que faz o DLSS Overlay Toggle)

Minha recomendação é deixar igual ao da screenshot acima, apenas desmarcar o Show DLSS Indicator depois que confirmar que funcionou.


## Qual o ganho?

Com as DLLs substituidas, em jogos que suportam puxar essas DLLs Streamline mais recentes, ganharão: 

Jogos com suporte ao Frame Generation ganharão o suporte ao Multi-Frame-Generation forçando pelo NVIDIA Profile Inspector;

NVIDIA Reflex melhora consideravelmente; 

Melhor tempo de quadro e fluidez com as tecnologias NVIDIA.
