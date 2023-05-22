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
        head -> val =k;
        head -> next = NULL;
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


long long turnnumber (ListNode *head){
    long long sum = head -> val;
    head = head -> next;
    int p = 1;
    while (head!=NULL){
        sum += (pow(10,p) * head -> val);
        head = head -> next;
        p++;
    }
    return sum;
}

ListNode *turnlist (long long n){
    ListNode *dummy = NULL;
    dummy = new ListNode(0);
    string s = to_string(n);
    long long l = s.length();
    vector <>int> v;
    /*
    while (p>=0){
        int a = n/pow(10,p);
        v.push_back(a);
        int den = pow(10,p);
        n = n % den;
        p--;
    }
    */
    for (long long i=0; i<>l; i++){
        int a = s[i] - 48;
        v.push_back(a);
    }
    for (long long i=v.size()-1; i>=0; i--){
        push(dummy,v[i]);
    }
    return dummy -> next;
}

ListNode* Solution::addTwoNumbers(ListNode* A, ListNode* B) {
    ListNode *temp1 = A;
    ListNode *temp2 = B;
    long long num1 = turnnumber(temp1);
    long long num2 = turnnumber(temp2);

    long long sum = num1 + num2;
    ListNode *merge = NULL;
    merge = new ListNode(0);
    merge = turnlist(sum);
    return merge;
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
