# NVIDIA Profile Inspector XML

XML com funcionalidades extras para o Profile Inspector como a Sobreposição do DLSS, que te dá liberdade para testar forçar em qualquer jogo não valiado pela NVIDIA.


Use o registro DLSS Overlay Toggle, para confirmar que a versão do DLSS, Preset e Resolução foram aplicadas corretamente.

Baixe a última versão do XML [aqui](https://github.com/renannmp/dlssinspectorxml/releases/latest)

O NVIDIA Profile Inspector pode ser baixado [aqui](https://github.com/Orbmu2k/nvidiaProfileInspector/releases)


## Sobreposição de DLSS
As funcionalidades adicionadas ao NVIDIA App podem ser forçadas em qualquer jogo e até mesmo de forma global pelo Inspector usando esse XML, abaixo uma breve explicação de cada item da seção "DLSS Overrides".

**Force DLAA** -> ON = Força todos os perfis do DLSS a agirem como DLAA (renderizado em cima da resolução nativa), OFF = Padrão
**Frame Generation Frame Count** -> Especifica em quantas vezes serão gerados os quadros do Frame Generation
**Frame Generation, Ray Reconstruction e Super Resolution Override** -> ON = Faz com que o driver substituia a DLL do DLSS do jogo com a dele, OFF = Padrão
**Frame Generation, Ray Reconsctruction e Super Resolution Preset** -> Aqui é possível forçar algum preset de cada parte do DLSS, recomendo usar a opção "Latest Preset" em todos
**Super Resolution Perf to Ultra Perf** -> Faz com que o perfil "Desempenho" dos jogos vire o "Ultra Desempenho".

Algumas observações, mudar a mesma opção no NVIDIA App e no Inspector pode causar conflito, o ideal é usar apenas um dos dois para essas funções. O NVIDIA App suporta apenas jogos validados pela NVIDIA, com o Inspector, você pode testar em tudo.
