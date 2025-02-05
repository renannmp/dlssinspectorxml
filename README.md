# NVIDIA Profile Inspector XML

XML com funcionalidades extras para o Profile Inspector como a Sobreposição do DLSS, que te dá liberdade para testar forçar em qualquer jogo não validado pela NVIDIA.

Use o registro DLSS Overlay Toggle, para confirmar que a versão do DLSS, Preset e Resolução foram aplicadas corretamente.

Baixe a última versão do XML [aqui](https://github.com/renannmp/dlssinspectorxml/releases/latest)

O NVIDIA Profile Inspector pode ser baixado [aqui](https://github.com/Orbmu2k/nvidiaProfileInspector/releases)


## Sobreposição de DLSS
As funcionalidades adicionadas ao NVIDIA App podem ser forçadas em qualquer jogo e até mesmo de forma global pelo Inspector usando esse XML, abaixo uma breve explicação de cada item da seção "DLSS Overrides".

**NOTA:** SR = Super Resolution | RR = Ray Reconstruction | FG = Frame Generation

**DLSS-FG - Multi-Frame-Generation Count** -> Especifica em quantas vezes serão gerados os quadros do Frame Generation

**DLSS-FG, DLSS-RR e DLSS - DLL Override** -> ON = Faz com que o driver substituia a DLL do DLSS do jogo com a dele, OFF = Padrão

**DLSS-FG, DLSS-RR e DLSS - Force Preset Letter** -> Aqui é possível forçar algum preset de cada parte do DLSS, recomendo usar a opção "Latest Preset" em todos

**DLSS-RR e DLSS - Forced Quality Level** -> Possibilita forçar e fixar os modos do Ray Reconstruction e Super Resolution, mesmo que o jogo não suporte.

**DLSS e DLSS-RR - Forced Scaling Ratio** -> Customiza a porcentagem de escalonamento do DLSS, só funciona em drivers mais antigos **(Antes do 571)**. Para ativar a funcionalidade, coloque o Force Profile Mode em Custom e escolha a opção do Scaling Factor que deseja.

Algumas observações, mudar a mesma opção no NVIDIA App e no Inspector pode causar conflito, o ideal é usar apenas um dos dois para essas funções. O NVIDIA App suporta apenas jogos validados pela NVIDIA, com o Inspector, você pode testar em tudo.

## Prévia
![XML Screenshot](https://github.com/renannmp/dlssinspectorxml/blob/main/Screenshot.png)
