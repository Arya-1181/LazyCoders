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

class node{
    public:
    int data;
    node *left, *right;
    node(int val){
        data = val;
        left = NULL;
        right = NULL;
    }
};
// First Approach
bool checkcurr (node *root, int min, int max);

bool check(node *root){
    return (checkcurr (root, INT_MIN, INT_MAX));
}

bool checkcurr(node *root, int min, int max){
    
    if (root==NULL){
        return true;
    }
    
    if (root -> data > min || root -> data < max){
        return false;
    }
    
    return (checkcurr (root -> left, min, root -> data - 1) && 
            checkcurr (root -> right, root -> data + 1, max));
}
// BEST Approach
bool check2(node *root, node *l = NULL, node *r = NULL){
    
    if (root==NULL){
        return true;
    }
    
    if (l!=NULL && root -> data <= l -> data){
        return false;
    }
    
    if (r!=NULL && root -> data >= r -> data){
        return false;
    }
    
    return check2(root -> left, l, root) && check2(root -> right, root, r);
}

int main()
{
    node *root               = new node(4);
    root -> left             = new node(2);
    root -> right            = new node(5);
    root -> left -> left     = new node(1);
    root -> left -> right    = new node(3);
    
    cout<<>check2(root,NULL,NULL);
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
