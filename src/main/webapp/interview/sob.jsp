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
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
void push(ListNode *A, int data){
    ListNode *temp = A;
    if (A == NULL){
        A -> val = data;
        A -> next = NULL;
        return;
    }
    ListNode *buffer = new ListNode(0);
    buffer -> val = data;
    buffer -> next = NULL;
    while (temp -> next!=NULL){
        temp = temp -> next;
    }
    temp -> next = buffer;
}

ListNode* Solution::solve(ListNode* A) {
    long long count1=0;
    long long count0=0;
    ListNode *temp = A;
    while(temp!=NULL){
        if (temp -> val == 1){
        count1++;
        }
        else if (temp -> val == 0){
            count0++;
        }
        temp = temp -> next;
    }

    ListNode *B = NULL;
    B = new ListNode(0);
    while (count0-1>0){
        push(B,0);
        count0--;
    }
    while (count1>0){
        push(B,1);
        count1--;
    }

    return B;
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
