Código de teste:
** Settings **
Library  SeleniumLibrary

** Variables **
${input_username}   //*[@id="j_username"]
${input_password}   //*[@id="j_password"]
${login_button}     //button[@class="hdm-button"]
${domain_list}      //select[@id="m_domain"]
#${href}             http://200.141.223.78:17025/hdm/device/findDevices.do
${search_profile}   //*[@id="filterTable"]/tbody/tr/td/div/table/tbody/tr/td/fieldset/legend/span
${find_serial}      //select[@id="searchProfile"]
${input_serial}     //input[@name="serialNumber"]
${serialnumber}     ALCLFC43FC6B

** Keywords **
Abrir Site
    Open Browser  http://200.141.223.78:17025/hdm/  chrome
    
Preencher o login 
    Input Text      ${input_username}   mdasilva    
    Input Text      ${input_password}   140359mpBS@@@
    Select From List By Value    ${domain_list}    super-domain        

Clicar no botão login
    Click Element   ${login_button} 

Clicar link com href
    Click Element   xpath://*[@id="mainTable"]/tbody/tr[2]/td/table/tbody/tr/td[1]/table/tbody/tr/td[4]/a

Selecionar Device
    Click Element   ${search_profile}
    Select From List By Label   ${find_serial}  Find Devices by Serial Number (super-domain)
    Input Text      ${input_serial}     ALCLFC43FC6B

** Test Cases **
Cenário 1: Acessando o HDM e fazer um Check Device em uma ONT
    Abrir Site
    Preencher o login
    Clicar no botão login
    Clicar link com href
    Selecionar Device   