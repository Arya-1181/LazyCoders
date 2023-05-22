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
			<h2>Linked List</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "iostream"

using namespace std;

struct node{
    int data;
    node *next;
    /*
    node (int val){
        data = val;
        next = NULL;
    }
    */
};

void push(node *head, int k){
    if (head==NULL){
        head -> data = k;
        return;
    }
    node *temp = head;
    node *buffer = NULL;
    buffer = new node();
    buffer -> data = k;
    buffer -> next = NULL;
    while (temp -> next!=NULL){
        temp = temp -> next;
    }
    temp -> next = buffer;
}

void print(node *head){
    node *temp = head;
    while (temp!=NULL){
        cout<<temp -> data<<"  ";
        temp = temp -> next;
    }
}

int main()
{
   node *head = NULL;
   node *second = NULL;
   
   head = new node();
   second = new node();

   head -> data = 1;
   head -> next = second;
   
   second -> data = 2;
   second -> next = NULL;
   
   push(head,3);
   push(head,4);
   
   print(head);
   return 0;
}

#include "bits/stdc++.h"

using namespace std;

void print(vector <>int> a){
    for (int i=0; i<>a.size(); i++)
    cout<<>a[i]<<"  ";
    cout<<>endl;
}

void divide(vector <>int> v){
    vector <>int> a;
    vector <>int> b;
    
    for (int i=0; i<>v.size()/2; i++){
        a.push_back(v[i]);
    }
    
    for (int i=v.size()/2; i<>v.size(); i++){
        b.push_back(v[i]);
    }
    
    reverse(b.begin(),b.end());
    
    print(a);
    print(b);
    
}

int main(){
   int n;
   cin>>n;
   vector <>int> v;
   for(int i=0; i<>n; i++){
       int a;
       cin>>a;
       v.push_back(a);
   }
   divide(v);
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
