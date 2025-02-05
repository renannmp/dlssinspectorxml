Atualmente, o app da Nvidia usa uma whitelist para ativar as opções de DLSS Override (Sobreposição de DLSS) nas configurações dos jogos.

Lembre-se de que isso apenas ativa a configuração de override no driver para qualquer jogo, até mesmo para aqueles sem DLSS. Se ativar em um jogo que não tem DLSS, simplesmente não fará nada. Isso **não** adiciona DLSS magicamente a um jogo que não o suporta.  

### Como fazer:  

1. Instale a versão mais recente do Nvidia App e dos drivers.  
2. Acesse a seguinte pasta:  
   **C:\Users(seu usuário)\AppData\Local\NVIDIA Corporation\NVIDIA app\NvBackend**  
3. Faça um backup do arquivo **ApplicationStorage.json**.  
4. Abra o **ApplicationStorage.json** em um editor de texto, como VS Code ou Notepad++. Pode ser útil formatar o JSON para facilitar a edição.  
5. Encontre o jogo onde quer ativar o DLSS Override (use a pesquisa pelo nome do jogo na seção "Gráficos" do Nvidia App).  
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

## EXTRA

Script para fazer o processo automáticamente: [Baixe aqui](https://github.com/renannmp/dlssinspectorxml/releases/download/1.0-Script/NVIDIA.App.Unlock.7z)
para usar, execute o "RunScript.bat" como administrador.
