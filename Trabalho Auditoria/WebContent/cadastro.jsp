<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Prova Tulio</title>
</head>
<body>
<div class="container">
<form action="insere.jsp" method="post">
 <div class="form-group">
 <label>Nome</label>
  <input type="text" class="form-control"  placeholder="Digite seu nome..." name="nome">
 </div>
 
  <div class="form-group">
   <label>E-mail</label>
    <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Digite seu e-mail..." name="email">
    <small  class="form-text text-muted">Nunca vamos compartilhar seu email, com ninguém.</small>
  </div>
  
  <div class="form-group">
 <label>Telefone</label>
 <input type="number" class="form-control" placeholder="Digite seu telefone..." name="telefone">
 </div>
 
 <div class="form-group">
 <label>Endereço</label>
 <input type="text" class="form-control" placeholder="Digite seu endereço..." name="endereco">
 </div>
 
 <div class="form-group">
 <label>Bairro</label>
 <input type="text" class="form-control" placeholder="Digite seu bairro..." name="bairro">
 </div>
 
 <div class="form-group">
 <label>Cidade</label>
 <input type="text" class="form-control" placeholder="Digite sua cidade..." name="cidade">
 </div>
 
 <div class="form-group">
 <label>UF</label>
 <input type="text" class="form-control" placeholder="Digite seu estado..." name="uf">
 </div>
 
  <div class="form-group">
    <label>Senha</label>
    <input type="password" class="form-control"  placeholder="Digite sua senha..." name="senha">
  </div>
  <div class="form-group">
    <label>Senha</label>
    <input type="password" class="form-control"  placeholder="Confirme sua senha..." name="confSenha">
  </div>
  
   <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" name="termo"/>
    <label class="form-check-label" for="exampleCheck1">Li e aceito os <a href="#" data-toggle="modal" data-target="#modalTermo"> Termos de cadastro</a></label>
  </div>
  <button id="btnEnviar" type="submit" class="btn btn-primary">Cadastrar-se</button>
  <a class="btn btn-danger" href="index.jsp">Voltar</a>
</form>

 <!-- The Modal -->
<div class="modal" id="modalTermo">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Termo de cadastro</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan magna nisi, et feugiat risus venenatis commodo. Praesent nulla neque, auctor eget elementum at, faucibus in tellus. Phasellus vitae turpis metus. Curabitur non odio egestas, ornare enim sed, sodales est. Nullam at aliquam lorem, vitae sollicitudin odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut consectetur finibus nunc, id blandit erat eleifend ut. Nulla molestie metus nec velit dictum efficitur. Fusce sit amet ligula gravida ex convallis aliquet id eget diam. Aenean mattis tellus vitae mauris ultricies venenatis a non tortor. Quisque a suscipit nisl.

Donec non dui id urna vestibulum posuere. Vivamus eget sem pulvinar, maximus quam et, luctus nisl.</p>

<p> Aenean non eros in odio mattis placerat. Quisque vel turpis sit amet est tempus semper ac et velit. Donec et tellus justo. Donec at massa id ipsum dictum sollicitudin eu sed erat. Vestibulum nec nibh libero. Aenean vel dolor dolor. Integer at erat molestie, condimentum ligula sed, gravida nunc.</p>

<p>Aenean at gravida nisi, non euismod nulla. Maecenas elementum quis lectus eu lobortis. Ut ac lobortis magna. Sed quis dapibus ligula, mollis tristique velit. Donec augue eros, porttitor sit amet lorem a, ultricies consectetur nisl. Mauris tempus odio augue, congue venenatis nisl convallis ut. Aliquam et consequat nisl. Etiam ac velit sit amet urna lobortis venenatis a condimentum purus. Fusce ut placerat felis, et lacinia eros. Ut ac ex mauris. Vivamus id lectus ut sem gravida facilisis id nec enim. Pellentesque rutrum tincidunt gravida. Duis eget dolor tortor. Vivamus ornare vehicula congue.</P>

<p>Donec dictum mi ligula. Phasellus tempor justo ex, quis vehicula ante dictum id. Ut pretium lorem lacus, et ultricies elit porttitor et. Vivamus aliquet dolor nec blandit tempus. Morbi suscipit tempor libero nec maximus. Morbi eget odio pulvinar, vulputate risus in, pulvinar erat. Donec vitae mattis arcu. Nam ut diam pellentesque, tempor orci ac, aliquam magna. Maecenas eget nunc pretium, posuere leo et, posuere eros. Nulla et augue fringilla, porttitor neque vitae, feugiat arcu. Nullam efficitur sed orci quis suscipit. Mauris quis euismod tortor, sit amet euismod orci. Nullam condimentum tincidunt lacinia. Praesent pulvinar justo libero, vel maximus odio accumsan sit amet. Phasellus eu urna lacus.

Nullam condimentum leo ipsum, vel pellentesque turpis pharetra et. Suspendisse tristique dignissim tincidunt. Aenean accumsan ornare justo quis auctor. Fusce porta eleifend eros non tempus. Quisque consectetur scelerisque lorem ac faucibus. Nunc volutpat eros mauris, at molestie enim vestibulum ac. Donec eu augue sit amet nunc tincidunt aliquam nec feugiat est. Nam a efficitur nulla. Fusce sed ullamcorper sem, vitae tincidunt nisi.</p>

<p>Nunc non justo dolor. Pellentesque a odio et augue efficitur iaculis. Suspendisse porttitor, purus non pretium euismod, ex neque convallis nibh, eu ornare velit tortor sed sapien. Nulla facilisi. Proin vitae nibh neque. Ut pretium pulvinar lobortis. Integer semper nisl quis bibendum vestibulum. Sed elementum dignissim orci non efficitur. Quisque scelerisque, eros sed mattis luctus, mauris justo convallis nunc, at lacinia nisl purus id turpis. Vivamus finibus placerat felis, et mattis arcu efficitur at. Nulla mattis in orci nec facilisis. Nunc convallis, sem at ornare tristique, dui quam tempus eros, vitae venenatis nulla urna eget neque.

Morbi eu viverra mi. Sed vel erat eu ipsum cursus fermentum. Mauris imperdiet dignissim neque a viverra. Nunc a blandit mauris. Morbi luctus ultricies volutpat. Cras quis massa eget urna luctus gravida. Maecenas nunc justo, dapibus quis lorem eu, pharetra tincidunt mauris. In hac habitasse platea dictumst. Nulla volutpat dictum posuere.</p>

<p>Pellentesque fermentum nisl quis sem vestibulum fringilla. Sed non nisi nisi. Donec maximus mi in condimentum sodales. Nulla vitae leo iaculis, consequat massa quis, faucibus lectus. Vestibulum ipsum lectus, laoreet sed ullamcorper sed, laoreet sit amet dui. Donec imperdiet quis sem in iaculis. Phasellus eu ipsum rhoncus, rhoncus leo ut, ornare neque. Praesent nec eros et justo cursus condimentum. Fusce sollicitudin semper ligula, nec rhoncus lectus fermentum sit amet. Aliquam metus erat, imperdiet ut risus in, condimentum bibendum lectus. Donec maximus, velit eget vehicula varius, libero dolor interdum erat, vel mattis massa nunc vitae sapien. Quisque dignissim efficitur mauris non dictum. Quisque facilisis, sem sit amet tincidunt tristique, enim arcu convallis erat, id ornare diam purus in nisi.</p>

      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
      </div>

    </div>
  </div>
</div>
</div>
</body>
</html>