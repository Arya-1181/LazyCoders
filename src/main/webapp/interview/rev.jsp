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
void push (ListNode *head, int k){
    if (head==NULL){
        head -> val;
        head -> next;
        return;
    }
    ListNode *temp = head;
    ListNode *buffer = new ListNode(0);
    buffer -> val = k;
    buffer -> next = NULL;
    while (temp -> next!=NULL){
        temp = temp -> next;
    }
    temp -> next = buffer;
}

ListNode* reverse(ListNode *head){
    ListNode *current = (*head);
    ListNode *after = NULL;
    ListNode *prev = NULL;
    while (current!=NULL){
        after = current -> next;
        current -> next = prev;
        prev = current;
        current = after;
    }
    return prev;
}

ListNode* Solution::reverseBetween(ListNode* A, int B, int C) {
    int count = 1;
    ListNode *temp = A;
    ListNode *result = NULL;

    while (temp!=NULL){
        if (count>=B && count<=C){
            push (result, temp -> val);
        }
        temp = temp -> next;
        count++;
    }
    result = reverse(result);

    temp = head;
    ListNode **start = NULL;
    ListNode **end = NULL;
    int count = 0;
    while (temp!=NULL){
        if (count==B-1){
            
        }
    }
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
