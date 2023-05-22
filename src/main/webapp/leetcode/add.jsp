<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Two numbers</title>
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
			<h2>Adding Two numbers</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"
using namespace std;

class Solution {
public:
    
    void push (ListNode *head, int k){
        if (head==NULL){
            head -> val = k;
            head -> next = NULL;
            return;
        }
        ListNode *temp = head;
        ListNode *buffer = new ListNode();
        buffer -> val = k;
        buffer -> next = NULL;
        while (temp -> next!=NULL){
            temp = temp -> next;
        }
        temp -> next = buffer;
    }
    
    ListNode* reverse(ListNode *head){
        ListNode *current = head;
        ListNode *after = NULL;
        ListNode *before = NULL;
        ListNode *beforemore = NULL;
        while (current!=NULL){
            after = current -> next;
            current -> next = before;
            beforemore = before;
            before = current;
            current = after;
        }
        return before;
    }
    
    ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        int sum1 = l1 -> val;
        l1 = l1 -> next;
        int p = 1;
        while (l1!=NULL){
            sum1 += (pow(10,p)* l1 -> val);
            l1 = l1 -> next;
            p++;
        }
        
        int sum2 = l2 -> val;
        l2 = l2 -> next;
        int p2 = 1;
        while (l2!=NULL){
            sum2 += (pow(10,p2)* l2 -> val);
            l2 = l2 -> next;
            p2++;
        }
        ListNode *head = NULL;
        head = new ListNode();
        int sum = sum1 + sum2;
        int num = sum;
        string s = to_string(num);
        int len = s.length()-1;
        while (len>=0){
            int den = pow(10,len);
            push(head,num/den);
            num = num % den;
            len--;
        }
        int count=0;
        ListNode *temp = reverse(head -> next);        
        return temp;
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
