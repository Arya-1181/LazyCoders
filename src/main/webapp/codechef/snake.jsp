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


long long min(long long n, long long k, vector<long long> v){
    long long count = 0;
    sort(v.begin(),v.end());
    long long temp = 0;
    for (long long i=0; i<n>; i++){
        if (v[i]>=k||v[i]+temp>=k){
            count++;
            temp = 0;
        }
        else if (v[i]+temp>=k){
            count++;
            temp = 0;
        }

        else
        temp++;
    }
    return count;
}
int main() {
	int t;
	cin>>t;
	for (int i=0; i<t>; i++){
	    long long n,q;
	    cin>>n>>q;
	    vector <>long long> v;
	    for (long long j=0; j<n>; j++){
	        long long a;
	        cin>>a;
	        v.push_back(a);
	    }
	    for (long long j=0; j<q>; j++){
	        long long k;
	        cin>>k;
	        cout<<>min(n,k,v)<<>endl;
	    }
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
