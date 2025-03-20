## Método Principal

Utilize um novo script que pode ser obtido [aqui](https://files.sshnuke.net/SearchReplaceNvidiaApp.exe) e você pode encontrar o script pra ler todo o código [aqui](https://gist.github.com/rajkosto/6bb60346d8a7f7f4e21566618e44020a). Adicione o jogo no NVIDIA App e depois rode o script, terá que fazer o processo toda vez que adicionar um jogo ao NVIDIA App.

## Método Alternativo

Utilize um script que pode ser obtido [aqui](https://gist.github.com/JPersson77/91a5c53af55104a2bfc5c9be32118203/archive/96aa9bb060e2b038e8d1853aa962f0ac529ba754.zip) e você pode encontrar o script pra ler todo o código [aqui](https://gist.github.com/JPersson77/91a5c53af55104a2bfc5c9be32118203#file-nvappappapp-ps1). Adicione o jogo no NVIDIA App e depois rode o script, terá que fazer o processo toda vez que adicionar um jogo ao NVIDIA App.

## Manualmente

Atualmente, o app da Nvidia usa uma whitelist para ativar as opções de DLSS Override (Sobreposição de DLSS) nas configurações dos jogos.

Lembre-se de que isso apenas ativa a configuração de override no driver para qualquer jogo, até mesmo para aqueles sem DLSS. Se ativar em um jogo que não tem DLSS, simplesmente não fará nada. Isso **não** adiciona DLSS magicamente a um jogo que não o suporta.  

### Como fazer:  

1. Instale a versão mais recente do Nvidia App e dos drivers.  
2. Acesse a seguinte pasta:  
   **C:\Users(seu usuário)\AppData\Local\NVIDIA Corporation\NVIDIA app\NvBackend**  
3. Faça um backup do arquivo **ApplicationStorage.json**.  
4. Abra o **ApplicationStorage.json** em um editor de texto, como VS Code ou Notepad++. Pode ser útil formatar o JSON para facilitar a edição.  
5. Encontre o jogo onde quer ativar o DLSS Override (use a pesquisa pelo nome do jogo na seção "Graphics" do Nvidia App).  
6. Localize as seguintes linhas na seção **Application** do jogo no arquivo:  

   ```json
   "Disable_FG_Override": true,
   "Disable_RR_Override": true,
   "Disable_SR_Override": true,
   "Disable_RR_Model_Override": true,
   "Disable_SR_Model_Override": true
   ```  

7. Altere **true** para **false** nas opções que deseja ativar.  
8. Salve as alterações.  
9. Clique com o botão direito no **ApplicationStorage.json**, vá em **Propriedades** e marque como **Somente leitura**.  
10. Reinicie o PC.  

Agora você pode usar o **DLSS Override** em um jogo que tenha DLSS, mas não esteja na whitelist da NVIDIA.  

**Observação:** Como o arquivo ficou "somente leitura", se quiser adicionar outro jogo depois, precisará remover essa restrição, editar novamente e repetir o processo.
