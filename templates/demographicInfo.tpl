<!DOCTYPE html>
<html>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Max" >
    <title>{{title}}</title>
    % include('templates/header.tpl')
    <script>
      // this script is reponsible for engaging the wait screen during playback
      $(document).ready(function(){
        $("#demographics").submit(function(){
          $("#playback").show();
          $("#content").hide();
          $("#footer").hide();
        });
      });
    </script>

    <style>
      .input-group-addon {
        width: 150px;
      }
      .input-group {
        width: 100%;
      }
    </style>
  </head>

<!-- this template contains the text input fields for the demographic user info.
When creating custom forms stick to this structure and add or remove the custom fields.
Don't change the form attributes "action" and "method"-->

  <body>
    <div id="playback"></div>
    <div class="container" id="content">
      <div class="row">
        <h3>Please fill in the following fields before we start:<br><br></h3>
      </div>

      <form id="demographics" action="/save_demographics" method="post">
        <div class="input-group input-group-lg">
          <span class="input-group-addon" id="sizing-addon2">First name:</span>
          <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First name" required/>
        </div>
        <br>
        <div class="input-group input-group-lg">
          <span class="input-group-addon" id="sizing-addon2">Last name:</span>
          <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last name" required/>
        </div>
        <br>
        <div class="input-group input-group-lg">
          <span class="input-group-addon" id="sizing-addon2">Age:</span>
          <input type="number" class="form-control" name="age" placeholder="Age" min="1" max="100" required/>
        </div>
        <br>
        <div class="form-group">
          <textarea class="form-control" rows="5" id="comment" name="comment" placeholder="Comments"></textarea>
        </div>
        <div class="col-lg-2">
          <button type="submit" class="btn-lg btn-success">OK</button>
        </div>
      </form>

      <div class="container" id="footer">
        % include('templates/footer.tpl')
      </div>
    </div>

  </body>

</html>
