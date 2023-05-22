<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Almost Sorted</title>
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
			<h2>Find Merge Point of Two Lists</h2>
			<p>Given pointers to the head nodes of linked lists that merge
				together at some point, find the node where the two lists merge. The
				merge point is where both lists point to the same node, i.e. they
				reference the same memory location. It is guaranteed that the two
				head nodes will be different, and neither will be NULL. If the lists
				share a common node, return that node's value.</p>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits /stdc++.h"

using namespace std;

int surfaceArea(vector < vector<int> > A) {
    int res = 0;
    for(int i = 1; i < A.size() -1; i++) {
        for(int j = 1; j < A[0].size()-1; j++) {
            for(int k = 1; k <= A[i][j]; k++){
                if(A[i-1][j] < k) res++;
                if(A[i+1][j] < k) res++;
                if(A[i][j+1] < k) res++;
                if(A[i][j-1] < k) res++;
            }
            res+=2;
        }
     }
    return res;
}

int main() {
    int H;
    int W;
    cin >> H >> W;
    vector< vector<int> > A(H + 2,vector<int>(W + 2, 0));
    for(int A_i = 1;A_i <= H;A_i++){
       for(int A_j = 1;A_j <= W;A_j++){
          cin >> A[A_i][A_j];
       }
    }
    int result = surfaceArea(A);
    cout << result << endl;
    return 0;
}
		
			</code>
  </pre>

		<p>Click the button below to copy the code:</p>

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
