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

// Global variable causes memory leak
void gethead(node *head){
    if (head!=NULL){
        node *temp = head;
        head = head -> next;
        
        free (temp);
    }
} 
// Goes wrong if return value not assigned
node *gothead(node *head){
    if (head!=NULL){
        node *temp = head;
        head = head -> next;
        
        free (temp);
    }
    return head;
}
//Best method
void gettinghead(node **head){
    if (*head!=NULL){
        node *temp = *head;
        (*head) = (*head) -> next;
        
        free (temp);
    }
}
/* whole code 
#include "iostream"

using namespace std;

struct node{
    public:
    int data;
    node *next;
};

int length(node *head){
    node *temp=NULL;
    temp = new node();
    temp = head;
    int count=0;
    while (temp!=0){
        temp = temp -> next;
        count++;
    }
    return count;
}

int getcount(node *head){
    node *temp=NULL;
    temp = head;
    if (temp==NULL)
    return 0;
    
    else 
    return 1 + getcount(temp -> next);
}
// Global variable causes memory leak
void gethead(node *head){
    if (head!=NULL){
        node *temp = head;
        head = head -> next;
        
        free (temp);
    }
} 
// Goes wrong if return value not assigned
node *gothead(node *head){
    if (head!=NULL){
        node *temp = head;
        head = head -> next;
        
        free (temp);
    }
    return head;
}
//Best method
void gettinghead(node **head){
    if (*head!=NULL){
        node *temp = *head;
        (*head) = (*head) -> next;
        
        free (temp);
    }
}

int main()
{
   node *head=NULL;
   node *second=NULL;
   node *third=NULL;
   
   head = new node();
   second = new node();
   third = new node();
   
   head -> data = 1;
   head -> next = second;
   
   second -> data = 2;
   second -> next = third;
   
   third -> data = 3;
   third -> next = NULL;
   
   node *temp=head;

    while (temp!=NULL){
       cout<<>temp -> data<<" ";
       temp = temp -> next;
    }
    cout<<>endl<<>length(head)<<>endl<<>getcount(head);
   return 0;
}
*/


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
