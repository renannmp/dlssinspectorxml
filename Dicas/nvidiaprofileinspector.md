## NVIDIA Profile Inspector Flags

As funcionalidades adicionadas ao NVIDIA App podem ser **forçadas em qualquer jogo mesmo que não ofereça suporte no NVIDIA App**, bom para quem quer testar configurações neles. 

**Use o campo de pesquisa do NVIDIA Profile Inspector caso não consiga encontrar alguma.**

**NOTA:** SR = Super Resolution | RR = Ray Reconstruction | FG = Frame Generation | MFG = Multi-Frame Generation | NR = Neural Rendering

**DLSS-NR, DLSS-FG, DLSS-RR e DLSS - DLL Override** -> ON = Faz com que o driver substituia a DLL do DLSS do jogo com a dele.  
**DLSS-NR, DLSS-FG, DLSS-RR e DLSS - Forced Preset Letter** -> Aqui é possível forçar algum preset de cada parte do DLSS.

**DLSS-RR e DLSS - Forced Quality Level** -> Possibilita forçar e fixar os modos de qualidade do Ray Reconstruction e Super Resolution, quando o jogo tem DLSS mas não mostra as opções no menu.  
**DLSS e DLSS-RR - Forced Scaling Ratio** -> Customiza a porcentagem de escalonamento do DLSS. Para ativar a funcionalidade, coloque o "Forced Quality Level" em "Custom" e escolha a opção do Scaling Ratio que deseja. 

**DLSS-FG - Forced Mode** -> Escolhe o modo do Frame Generation, Desligado, Fixado ou Dinâmico.  
**DLSS-MFG - Dynamic Frame Generation Count** -> Se escolheu o modo Dinâmico, aqui você escolhe o valor máximo que o multiplicador pode chegar.  
**DLSS-MFG - Fixed Frame Generation Count** -> Se escolheu o modo Fixado, aqui escolhe o valor do multiplicador fixo.  
**DLSS-MFG - Target Dynamic Frame Rate** -> Ainda se escolheu o modo Dinâmico, aqui escolhe o Alvo desejado de Framerate, "Max Refresh Rate" escolhe com base na taxa de atualização do monitor, ou escolha um alvo de FPS desejado.  

**Smooth Motion - Enable** -> Força o Smooth Motion ligado no perfil do jogo, mesmo que não suporte, testei com até mesmo softwares de vídeo e ele dobrou o framerate em filmes.   

**Sharpening - Ignore Film Grain** -> É o ajuste do denoising do filtro de nitidez antigo da NVIDIA, que prefiro mais que o novo, infelizmente esse filtro não está mais acessível no NVIDIA App nem no Control Panel antigo, mas por aqui da pra ativar normalmente, recomendo valor 0.27.  
**Sharpening - Value** -> Essa é a flag que controla a força do filtro de nitidez, recomendo entre 0.05 até 0.15. Configure essas flags por perfil de jogo caso prefira.  
**Sharpening Filter - Enabled** -> On ativa o filtro, Off desativa.  

**rBAR - Enable** -> Essa flag força o Resizable Bar ligado para o jogo, boa parte dos jogos se beneficiam disso. Se forçar no perfil global, os jogos que foram testados pela NVIDIA e apresentaram problemas com rBAR ficarão desabilitados por padrão no perfil do jogo (ex: Battlefield 6) que tem prioridade em cima do perfil global, esse seria o caminho inverso ao padrão do driver que é habilitar apenas para jogos aprovados.  
**rBAR - Size Limit** -> A maioria dos jogos aprovados pela NVIDIA usam esse valor em 1GB, **alguns jogos podem** se beneficiar em aumentar isso para o valor total da VRAM instalada na máquina.  

## Recomendações para o perfil Global:  
Todos os DLSS DLL Override -> On  
DLSS - Forced Model Preset Profile -> Custom  
NVIDIA Ansel - Enabled (modo foto da NVIDIA) -> Off

**RTX 40-50:**  
DLSS - Forced Preset Letter -> Preset M  
DLSS-FG - Forced Preset Letter -> Preset B  
DLSS-RR - Forced Preset Letter -> Usar preset recomendado

**RTX 20-30:**  
DLSS - Forced Preset Letter -> Preset K    
DLSS-RR - Forced Preset Letter -> Usar preset recomendado  

**Monitores com G-SYNC/Variable Refresh Rate/Adaptive Sync:**  
Vertical Sync -> Force On  
Maximum Pre-rendered Frames -> 1  
Ultra Low-Latency - Enabled -> On

**OPCIONAL - RivaTuner Statistics Server (RTSS):** Se tiver o RTSS instalado na máquina, nas configurações do RTSS mude o **"Enable framerate limiter"** para **"NVIDIA reflex"** e desative o **"Enable passive waiting"**, também ative o **"Use Microsoft Detours API Hooking"**, recomendo também alterar o **"Frametime calculation point"** para **"Frame presentation"**, como na imagem abaixo. O NVIDIA reflex tem prioridade e sobrepõe configurações de baixa latência do NVIDIA App e NVIDIA Profile Inspector quando forçado pelo RTSS ou disponível dentro do jogo.    
<img width="387" height="619" alt="HFAqzVuXkAAQY26" src="https://github.com/user-attachments/assets/45ccf940-22ca-431f-8684-dd0be2937631" />  

Depois de configurado o RTSS dessa forma volte ao menu inicial do RTSS, clique com o botão direito na caixa "Framerate Limit" e escolha "VRR cap"  
