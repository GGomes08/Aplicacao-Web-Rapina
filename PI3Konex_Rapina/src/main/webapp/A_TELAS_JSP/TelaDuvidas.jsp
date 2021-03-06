<%-- 
    TELA REFERENTE AO MARCO II

    Document   : Duvidas
    Created on : 5 de mai de 2021, 20:30:54
    Author     : gusta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dúvidas frequentes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="HTML, CSS, JAVASCRIPT">
        <meta name="description" content="Crowd Control">
        <meta name="author" content="konex-group">

        <link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/CSS/duvida.css">
        <script src="https://kit.fontawesome.com/194a95388c.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="../images/icons/logo.jpeg">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <div id="container-landing">
            <section class="menu-bar">
                <div>
                    <img src="${pageContext.request.contextPath}/images/icons/logotipo.png" alt="logo-image" class="logo-icon" />
                </div>
                <div>
                    <c:if test="${sessionScope.cli.tipo_user==2}">
                        <ul>
                            <a href="${pageContext.request.contextPath}/segura/MenuCliente"><img src="${pageContext.request.contextPath}/images/icons/arrow-left.png" alt="arrow-left" /></a>
                        </ul>    
                    </c:if>
                    <c:if test="${sessionScope.esta.tipo_user==3}">
                        <ul>
                            <a href="${pageContext.request.contextPath}/segura/MenuEsta"><img src="${pageContext.request.contextPath}/images/icons/arrow-left.png" alt="arrow-left" /></a>
                        </ul>
                    </c:if>

                    

                </div>
            </section>

            <div class="form-container">
                <div class="triangle-image">
                    <div class="ball-image">
                        <div class="ring-image">
                            <div class="message-image">
                                <div class="espiral-image">
                                    <div class="form-doubt">
                                        <div class="form-content">
                                            <h2>Dúvidas frequentes</h2>
                                            <section class="first-question">
                                                <h3>O que é a visibilidade nos planos?</h3>
                                                <p>
                                                    A visibilidade é o resultado da busca por estabelecimento.
                                                    Se você tem alta visibilidade do seu estabelecimento, será um
                                                    dos primeiros a ser visto pelos consumidores.
                                                </p>
                                            </section>
                                            <section class="second-question">
                                                <h3>Como funciona o controle de aglomeração?</h3>
                                                <p>
                                                    Toda vez que for validado a reserva, será contabilizado a entrada do
                                                    usuário no estabelecimento e quando sair também é contabilizado.

                                                    Por exemplo: Você declara que seu ambiente há 30 mesas para 
                                                    reservas, digamos que há 20 mesas ocupadas. Logo a aglomeração
                                                    terá 20 de 30 o que é 66,7% então é acionado o nível Amarelo. 

                                                    Até 50% é nível Verde, apartir de 50% até 75% é nível amarelo e caso passe de 75% é acionado o nível Vermelho. 
                                                </p>
                                            </section>
                                        </div>

                                        <div class="form-contact">
                                            <div class="form-contact-content">
                                                <h2>Contate-nos</h2>
                                                <form action="${pageContext.request.contextPath}/ControlaDuvidas" method="post">
                                                    <div class="input-field">
                                                        <div class="user-icon">
                                                            <img src="${pageContext.request.contextPath}/images/icons/user-icon.png" alt="icon" />
                                                        </div>
                                                        <input type="text" name="nome" placeholder="Qual é o seu nome?" required />
                                                    </div>
                                                    <div class="input-field">
                                                        <div class="subject-icon">
                                                            <svg width="18" height="17" viewBox="0 0 18 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M15.1802 3.51157L15.1797 3.51211L13.88 4.81178L11.1907 2.12244L12.4903 0.822774L12.4909 0.822231C12.5137 0.799333 12.5409 0.781168 12.5707 0.768774C12.6006 0.75638 12.6327 0.75 12.665 0.75C12.6973 0.75 12.7294 0.75638 12.7593 0.768774C12.7891 0.781168 12.8163 0.799333 12.8391 0.822231L12.8397 0.822774L15.1797 3.16277L15.1802 3.16332C15.2031 3.18617 15.2213 3.21331 15.2337 3.24319C15.2461 3.27307 15.2524 3.3051 15.2524 3.33744C15.2524 3.36979 15.2461 3.40182 15.2337 3.4317C15.2213 3.46158 15.2031 3.48872 15.1802 3.51157ZM16 15.2524H9.81066L12.3107 12.7524H16C16.6858 12.7524 17.25 13.3167 17.25 14.0024C17.25 14.6882 16.6858 15.2524 16 15.2524ZM0.82033 12.4928L9.06071 4.2524L11.7586 6.94315L3.52875 15.173C3.4671 15.2292 3.39987 15.2524 3.34 15.2524H1C0.864213 15.2524 0.75 15.1382 0.75 15.0024V12.6624C0.75 12.6036 0.779377 12.5337 0.82033 12.4928Z" stroke="black" stroke-opacity="0.3" stroke-width="1.5"/>
                                                            </svg>
                                                        </div>
                                                        <input type="text" name="email" placeholder="Digite o seu email" required/>
                                                    </div>
                                                    <div class="textarea-field">
                                                        <textarea name="mensagem" id="block-text" placeholder="Como podemos te ajudar?" rows="10" cols="10" required></textarea>
                                                    </div>
                                                    <div class="submit-block">
                                                        <input type="submit" value="Enviar" />
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
