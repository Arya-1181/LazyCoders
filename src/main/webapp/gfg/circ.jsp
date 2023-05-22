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
    node *next;
};

void print(node *head){
    node *temp = head;
    while (temp!=NULL){
        cout<<>temp -> data<<"  ";
        temp = temp -> next;
    }
    cout<<>endl;
}

void printcircular(node **head){
    node *current = *head;

    do {
        cout<<>current -> data<<"  ";
        current = current -> next;
    }
    while (current!=NULL && current!=*head);
    cout<<>endl;
}

void addinfront(node *last, int k){
    if (last==NULL)
    return;
    
    node *temp = new node();
    
    temp -> data = k;
    temp -> next = last -> next;
    last -> next = temp;
    last = temp;
}

void addatlast(node *last, int k){
    node *temp = new node();
    
    temp -> data = k;
    temp -> next = last -> next;
    last -> next = temp;
    last = temp;
}

void addafter(node *head, int p, int k){
    node *temp = head;
    node *buffer = new node ();
    buffer -> data = k;
    
    while (temp -> data != p){
        temp = temp -> next;
    }
    
    buffer -> next = temp -> next;
    temp -> next = buffer;
}

void addafterpos(node *head, int pos, int k){
    node *temp = head;
    node *buffer = new node();
    
    buffer -> data = k;
    int count = 1;
    
    while (count<>pos){
        temp = temp -> next;
        count++;
    }
    buffer -> next = temp -> next;
    temp -> next = buffer;
}

int main(){
    node *head = NULL;
    node *second = NULL;
    node *third = NULL;
    node *fourth = NULL;
    node *fifth = NULL;
    node *sixth = NULL;
    node *seventh = NULL;
    node *eighth = NULL;
    node *ninth = NULL;
    node *tenth = NULL;
    
    head = new node();
    second = new node();
    third = new node();
    fourth = new node();
    fifth = new node();
    sixth = new node();
    seventh = new node();
    eighth = new node();
    ninth = new node();
    tenth = new node();
    
    head -> data = 1;
    head -> next = second;
    
    second -> data = 2;
    second -> next = third;
    
    third -> data = 3;
    third -> next = fourth;
    
    fourth -> data = 4;
    fourth -> next = fifth;
    
    fifth -> data = 5;
    fifth -> next = sixth;
    
    sixth -> data = 6;
    sixth -> next = seventh;
    
    seventh -> data = 7;
    seventh -> next = eighth;
    
    eighth -> data = 8;
    eighth -> next = ninth;
    
    ninth -> data = 9;
    ninth -> next = tenth;
    
    tenth -> data = 10;
    tenth -> next = head;
    
    printcircular(&head)>;

    addinfront(tenth,15);
    
    printcircular(&head)>;
    
    addatlast(tenth,20);
    
    printcircular(&head)>;
    
    addafter(head,5,500);
    
    printcircular(&head)>;
    
    addafterpos(head,4,1000);
    
    printcircular(&head)>;
    
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
