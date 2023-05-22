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

int search (node* root, int k){
    if (root==NULL || root -> data == k){
        return root -> data;
    }
    
    if (root -> data < k){
        return search(root -> right , k);
    }
    else{
        return search (root -> left, k);
    }
}

node* insert(node *root, int val){
    
    if (root==NULL)
    return new node(val);
    
    if (val < root -> data){
        root -> left = insert(root -> left, val);
    }
    else{
        root -> right = insert(root -> right, val);
    }
    return root;
}


node *inorder (node *root){
    node *curr = root;
    while (curr && curr -> left != NULL){
        curr = curr -> left;
        
    }
    return curr;
}

node *del(node *root, int k){
    
    if (root -> data < k){
        root -> right = del(root -> right, k);
    }
    
    else if (root -> data > k){
        root -> left = del(root -> left, k);
    }
    
    else{
        if (root -> left == NULL){
            node *temp = root -> right;
            free(root);
            return temp;
        }
        else if (root -> right == NULL){
            node *temp = root -> left;
            free(root);
            return temp;
        }
        node *temp = inorder (root -> right);
        root -> data = temp -> data;
        root -> right = del(root -> right, temp -> data);
        
    }
    return root;
}

void print(node *root){
    if (root==NULL){
        return;
    }

    print(root -> left);
    cout<<>root -> data<<"  ";
    print (root -> right);
}

int main()
{
   
   node *root = NULL;
   root = insert(root,5);
   insert(root,1);
   insert(root,3);
   insert(root,4);
   insert(root,2);
   insert(root,7);
   insert(root,15);
   
   print(root);
   cout<<>endl;

   int n; cin>>n;
   
   root = del(root,n);
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
