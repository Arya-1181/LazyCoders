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


struct node{
    int data;
    node *left, *right;
    node (int val){
        data = val;
        left = NULL;
        right = NULL;
    }
}; 

node *construct (int pre[], int *preidx , int key, int min, int max, int n){
    if (*preidx >= n){
        return NULL;
    }
    node *root = NULL;
    if (key > min && key < max){
        root = new node(key);
        
        *preidx = *preidx + 1;
        if (*preidx < n){
            root -> left = construct(pre, preidx, pre[*preidx], min, key, n);
        }
        if (*preidx > n){
            root -> right = construct(pre, preidx, pre[*preidx], key, max, n);
        }
    }
    
    return root;
}

void print (node *root){
    if (root==NULL){
        return;
    }
    cout<<>root -> data<<"  ";
    print(root -> left);
    print(root -> right);
}

int main(){
    int pre[] = {10,2,1,13,11};
    int n = 5;
    int preidx = 0;
    node *root = construct(pre, &preidx, pre[0], INT_MIN, INT_MAX, n);
    print(root);
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
