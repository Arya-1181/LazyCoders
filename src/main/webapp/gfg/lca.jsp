<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find X</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/themes/prism.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/prism.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/components/prism-java.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/plugins/line-numbers/prism-line-numbers.min.js"></script>
<style>
h2 {
	color: #2F4F4F;
}

p {
	color: #000000;
}
</style>

</head>
<body bgcolor="#FFFAFA">
	<main>
		<button class="back-btn" onclick="goBack()">&#8592;</button>

		<div class="question">
			<h2>Find X</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"
using namespace std;


int lca (node *root, int a, int b){
    if (root==NULL){
        return -1;
    }
    if (root -> data > a && root -> data > b){
        return lca (root -> left, a, b);
    }
    if (root -> data < a && root -> data < b){
        return lca (root -> right, a, b);
    }
    return root -> data;
}

int lca2(node *root, int a, int b){
    while (root!=NULL){
        if (root -> data > a && root -> data > b){
            root = root -> left;
        }
        else if (root -> data < a && root -> data < b){
            root = root -> right;
        }
        else break;
    }
    return root -> data;
}

int main()
{
    node *root               = new node(4);
    root -> left             = new node(2);
    root -> right            = new node(5);
    root -> left -> left     = new node(1);
    root -> left -> right    = new node(3);
    
    cout<<>lca(root,1,3);
   return 0;
}
			</code>
  </pre>
		<button onclick="copyCode()">Copy Code</button>

		<script>
		function copyCode() {
			var code = document.querySelector(".language-java").innerText;
			navigator.clipboard.writeText(code);
			alert("Code copied to clipboard!");
		}
		function goBack() {
		      window.history.back();
		    }

		Prism.highlightAll();
		Prism.plugins.lineNumbers();
	</script>
	</main>
</body>
</html>
