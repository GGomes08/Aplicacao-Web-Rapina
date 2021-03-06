<%-- 
    TELA REFERENTE AO MARCO II

    Document   : TelaAlteraDados
    Created on : 2 de mai de 2021, 20:43:09
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/CSS/altDados.css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/icons/logotipo.png">
        <title>Alterar Dados</title>

        <style>
            .erroInput{
                border: 1px solid red;
            }
        </style>
    </head>
    <body>
        <div class="todo">
            <div class="bloco">
                <!--FORMULARIO-->
                <form action="${pageContext.request.contextPath}/AtualizaDados">
                    <div class="link">
                        <a href="${pageContext.request.contextPath}/segura/MenuCliente"><svg width="13" height="25" viewBox="0 0 13 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path opacity="1" d="M10.4231 24.9999C10.1564 25.0008 9.89279 24.9419 9.65177 24.8276C9.41076 24.7133 9.19843 24.5464 9.03038 24.3392L0.40619 13.626C0.143569 13.3065 0 12.9057 0 12.4921C0 12.0786 0.143569 11.6778 0.40619 11.3583L9.33392 0.645033C9.637 0.280394 10.0725 0.0510867 10.5447 0.00755554C11.0168 -0.0359756 11.4869 0.109836 11.8515 0.412911C12.2162 0.715987 12.4455 1.1515 12.489 1.62365C12.5325 2.09579 12.3867 2.56589 12.0837 2.93053L4.10227 12.5011L11.8158 22.0716C12.0342 22.3337 12.1729 22.6528 12.2155 22.9913C12.2581 23.3297 12.2029 23.6733 12.0564 23.9814C11.9099 24.2894 11.6782 24.5491 11.3888 24.7296C11.0993 24.9101 10.7642 25.0039 10.4231 24.9999Z" fill="#4361ee"/>
                            </svg>
                            <h3>Voltar ao menu</h3>
                        </a>
                    </div>

                    <div class="toposvg">
                        <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path opacity="0.4" d="M9 0C6.243 0 4 2.243 4 5C4 7.757 6.243 10 9 10C11.757 10 14 7.757 14 5C14 2.243 11.757 0 9 0ZM9 8C7.346 8 6 6.654 6 5C6 3.346 7.346 2 9 2C10.654 2 12 3.346 12 5C12 6.654 10.654 8 9 8ZM18 19V18C18 14.141 14.859 11 11 11H7C3.14 11 0 14.141 0 18V19H2V18C2 15.243 4.243 13 7 13H11C13.757 13 16 15.243 16 18V19H18Z" fill="black"/>
                        </svg>
                    </div>     
                    <!--NOME-->
                    <input type="text" id="nome" name="nome" placeholder="Digite seu nome" value="${cli.nome}" class="topotext ${not empty erroNome ? 'erroInput' : '' }">

                    <div class="margin"></div>

                    <div class="toposvg">
                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g opacity="0.4">
                        <path d="M1 5V3C1 2.46957 1.21071 1.96086 1.58579 1.58579C1.96086 1.21071 2.46957 1 3 1H5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M1 13V15C1 15.5304 1.21071 16.0391 1.58579 16.4142C1.96086 16.7893 2.46957 17 3 17H5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M13 1H15C15.5304 1 16.0391 1.21071 16.4142 1.58579C16.7893 1.96086 17 2.46957 17 3V5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M13 17H15C15.5304 17 16.0391 16.7893 16.4142 16.4142C16.7893 16.0391 17 15.5304 17 15V13" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M6 7H6.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M12 7H12.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M6.5 12C6.82588 12.3326 7.21485 12.5968 7.64413 12.7772C8.07341 12.9576 8.53436 13.0505 9 13.0505C9.46564 13.0505 9.92659 12.9576 10.3559 12.7772C10.7852 12.5968 11.1741 12.3326 11.5 12" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </g>
                        </svg>                
                    </div>  
                    <!--CPF-->
                    <input type="text" id="cpf" name="cpf" placeholder="Informe seu CPF" value="${cli.cpf}" class="topotext ${not empty erroCpf ? 'erroInput' : '' }">

                    <div class="svg">
                        <svg width="20" height="16" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path opacity="0.4" d="M20 2C20 0.9 19.1 0 18 0H2C0.9 0 0 0.9 0 2V14C0 15.1 0.9 16 2 16H18C19.1 16 20 15.1 20 14V2ZM18 2L10 7L2 2H18ZM18 14H2V4L10 9L18 4V14Z" fill="black"/>
                        </svg>                               
                    </div>
                    <!--EMAIL-->
                    <input type="text" id="email" name="email" placeholder="Email para login" value="${cli.email}" class="text ${not empty erroEmail ? 'erroInput' : '' }">

                    <div class="genero">
                        <p id="pergunta">Qual ?? o seu g??nero?</p>
                        <div class="radio">
                            <label for="Masculino">
                                <!--GEN MASCULINO-->
                                <input type="radio" id="Masculino" name="genero" value="Masculino">
                                <p>Masculino</p>
                            </label>
                            <div class="marginRadio"></div>
                            <label for="Feminino">
                                <!--GEN FEMININO-->
                                <input type="radio" id="Feminino" name="genero" value="Feminino">
                                <p>Feminino</p>
                            </label>
                        </div>
                    </div>

                    <!--DATA NASCIMENTO-->
                    <input type="text" id="data" name="dataNasc" placeholder="Qual ?? a sua data de nascimento?" value="${cli.data_nascimento}" class="data ${not empty erroDataNasc ? 'erroInput' : '' }">

                    <div class="svgdata">
                        <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g opacity="0.4">
                        <path d="M17 3H5C2.79086 3 1 4.79086 1 7V17C1 19.2091 2.79086 21 5 21H17C19.2091 21 21 19.2091 21 17V7C21 4.79086 19.2091 3 17 3Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M7 1V5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M15 1V5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M1 9H21" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </g>
                        </svg>      
                    </div>

                    <div class="svg">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path opacity="0.4" d="M15 5H20V15H15V17C15 17.2652 15.1054 17.5196 15.2929 17.7071C15.4804 17.8946 15.7348 18 16 18H18V20H15.5C14.95 20 14 19.55 14 19C14 19.55 13.05 20 12.5 20H10V18H12C12.2652 18 12.5196 17.8946 12.7071 17.7071C12.8946 17.5196 13 17.2652 13 17V3C13 2.73478 12.8946 2.48043 12.7071 2.29289C12.5196 2.10536 12.2652 2 12 2H10V0H12.5C13.05 0 14 0.45 14 1C14 0.45 14.95 0 15.5 0H18V2H16C15.7348 2 15.4804 2.10536 15.2929 2.29289C15.1054 2.48043 15 2.73478 15 3V5ZM0 5H11V7H2V13H11V15H0V5ZM18 13V7H15V13H18ZM6.5 10C6.5 9.60218 6.34196 9.22064 6.06066 8.93934C5.77936 8.65804 5.39782 8.5 5 8.5C4.60218 8.5 4.22064 8.65804 3.93934 8.93934C3.65804 9.22064 3.5 9.60218 3.5 10C3.5 10.3978 3.65804 10.7794 3.93934 11.0607C4.22064 11.342 4.60218 11.5 5 11.5C5.39782 11.5 5.77936 11.342 6.06066 11.0607C6.34196 10.7794 6.5 10.3978 6.5 10ZM11 8.89C10.39 8.33 9.44 8.38 8.88 9C8.32 9.6 8.37 10.55 9 11.11C9.55 11.63 10.43 11.63 11 11.11V8.89Z" fill="black"/>
                        </svg>                
                    </div>      

                    <!--SENHA ANTIGA-->
                    <input type="password" id="senha" name="senha" placeholder="Digite a senha antiga" class="data ${not empty erroSenha ? 'erroInput' : '' }">

                    <div class="margin"></div>

                    <div class="svg">
                        <svg width="18" height="21" viewBox="0 0 18 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path opacity="0.4" d="M15 7H17C17.2652 7 17.5196 7.10536 17.7071 7.29289C17.8946 7.48043 18 7.73478 18 8V20C18 20.2652 17.8946 20.5196 17.7071 20.7071C17.5196 20.8946 17.2652 21 17 21H1C0.734784 21 0.48043 20.8946 0.292893 20.7071C0.105357 20.5196 0 20.2652 0 20V8C0 7.73478 0.105357 7.48043 0.292893 7.29289C0.48043 7.10536 0.734784 7 1 7H3V6C3 4.4087 3.63214 2.88258 4.75736 1.75736C5.88258 0.632141 7.4087 0 9 0C10.5913 0 12.1174 0.632141 13.2426 1.75736C14.3679 2.88258 15 4.4087 15 6V7ZM2 9V19H16V9H2ZM8 13H10V15H8V13ZM4 13H6V15H4V13ZM12 13H14V15H12V13ZM13 7V6C13 4.93913 12.5786 3.92172 11.8284 3.17157C11.0783 2.42143 10.0609 2 9 2C7.93913 2 6.92172 2.42143 6.17157 3.17157C5.42143 3.92172 5 4.93913 5 6V7H13Z" fill="black"/>
                        </svg>                   
                    </div>

                    <!--NOVA SENHA-->
                    <input type="password" id="newsenha" name="newsenha" placeholder="Digite a nova senha" class="text ${not empty erroSenha ? 'erroInput' : '' }">

                    <!--BOTAO DE ATUALIZAR-->
                    <div class="cadastrar">
                        <button  type="Submit"> Atualizar dados</button>  
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>