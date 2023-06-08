<!DOCTYPE html>
<html>
<head>
  <title>C++ IDE</title>
  <link rel="stylesheet" href="lib/codemirror.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #f1f1f1;
    }

    h1 {
      text-align: center;
      color: #333;
    }

    .code-container {
      margin: 20px auto;
      max-width: 800px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .code-editor {
      height: 400px;
    }

    .button-container {
      text-align: center;
      margin-bottom: 20px;
    }

    .button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .button:hover {
      background-color: #45a049;
    }

    .output-container {
      background-color: #f9f9f9;
      padding: 20px;
      border-top: 1px solid #ddd;
      white-space: pre-wrap;
    }
  </style>
  <script src="lib/codemirror.js"></script>
  <script src="lib/mode/clike/clike.js"></script>
  <script>
    function compile() {
      var code = editor.getValue();

      var xhr = new XMLHttpRequest();
      xhr.open("POST", "compile", true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
      xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
          var output = document.getElementById("output");
          output.textContent = xhr.responseText;
        }
      };
      xhr.send("code=" + encodeURIComponent(code));
    }

    var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
      mode: "text/x-c++src",
      lineNumbers: true,
      theme: "default"
    });
  </script>
</head>
<body>
  <h1>C++ IDE</h1>
  <div class="code-container">
    <textarea id="code" name="code"></textarea>
  </div>
  <div class="button-container">
    <button class="button" onclick="compile()">Compile</button>
  </div>
  <pre id="output" class="output-container"></pre>
</body>
</html>
