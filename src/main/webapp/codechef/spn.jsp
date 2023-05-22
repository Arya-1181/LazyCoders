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


bool check(int a){
    for (int i=2; i<a>; i++){
        if (a%i==0 && a>9){
            int b = a/i;
            int flag=0;
            for (int j=2; j<i>; j++){
                if (i%j==0){
                   flag=1;
                   break;
                }
            }
            for (int j=2; j<b>; j++){
                if (b%j==0){
                   flag=1;
                   break;
                }
            }
            if (flag==0)
                return true;
        }
    }
    return false;
}

string min(int n){
    for (int i=1; i<n;> i++){
        int b = n - i;
        bool x = check(i);
        bool y = check(b);
        if (x==true && y==true)
        return "YES";
    }
    return "NO";
}
int main() {
	int n;
	cin>>n;
	for (int i=0; i<n;> i++){
	    int a;
	    cin>>a;
	    cout<<>min(a)<<>endl;
	}
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
