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
}

node *reverse(node *a){
    node *current = a;
    node *prev = NULL;
    node *after = NULL;
    while (current!=NULL){
        after = current -> next;
        current -> next = prev;
        prev = current;
        current = after;
    }
    return prev;
}


long num1 (node *temp1){
    long sum = temp1 -> data;
    temp1 = temp1 -> next;
    int p = 1;
    while (temp1!=NULL){
        sum += (pow(10,p) * temp1 -> data);
        temp1 = temp1 -> next;
        p++;
    }
    return sum;
}

long num2 (node *temp2){
    long sum = temp2 -> data;
    temp2 = temp2 -> next;
    int p = 1;
    while (temp2!=NULL){
        sum += (pow(10,p) * temp2 -> data);
        temp2 = temp2 -> next;
        p++;
    }
    return sum;
}

void convert(string s){
    for (int i=0; i<>s.length(); i++)
    cout<<>s[i]<<" -> ";
}

int main(){
    // first list
     node *head = NULL;
     node *second = NULL;
     node *third = NULL;

     head = new node();
     second = new node();
     third = new node();

     
     node *head1 = NULL;
     node *second1 = NULL;
     node *third1 = NULL;

     head1 = new node();
     second1 = new node();
     third1 = new node();

     head -> data = 1;
     head -> next = second;
     
     second -> data = 2;
     second -> next = third;
     
     third -> data = 3;
     third -> next = NULL;
     

     
     head1 -> data = 4;
     head1 -> next = second1;
     
     second1 -> data = 5;
     second1 -> next = third1;
     
     third1 -> data = 6;
     third1 -> next = NULL;

     
     node *temp1 = reverse(head);
     node *temp2 = reverse(head1);
     
     long sum = num1(temp1) + num2(temp2);
     string s = to_string(sum);

     convert(s);
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
