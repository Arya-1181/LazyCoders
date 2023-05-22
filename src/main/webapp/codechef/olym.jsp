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


long query(long long n, vector <>long long> cobol, vector <>long long> pole, vector <>long long> donut){
    vector <>long long> temp;
    temp = cobol;
    sort (temp.begin(),temp.end(),greater <int> ());
    vector <>long long> store;
    long long carry = 0;
    for (long long i=0; i<n>; i++){
        for (long long j=0; j<n>; j++){
            if (temp[i]==cobol[j]){
                store.push_back(carry + cobol[j] + pole[j] + donut [j]);
                carry += cobol[j];
                break;
            }
        }
    }
    sort(store.begin(),store.end(),greater<int>());
    return store[0];
}


int main() {
	long long n;
	cin>>n;
	vector <>long long> cobol;
	vector <>long long> pole;
	vector <>long long> donut;
	for (long long i=0; i<n>; i++){
	    long long a,b,c;
	    cin>>a>>b>>c;
	    cobol.push_back(a);
	    pole.push_back(b);
	    donut.push_back(c);
	}
	cout<<>query(n,cobol,pole,donut)>;
	return 0;
}
/*
#include <>bits/stdc++.h>
using namespace std;

long query(long long n, vector <>long> long> cobol, vector <long ><long> pole, vector <long>long> donut){
    vector <>long> long> temp;
//    temp = cobol;
    for (long long i=0; i<n>; i++)
    temp.push_back(cobol[i] + pole[i] + donut[i]);
    
    sort (temp.begin(),temp.end(),greater <int> ());
    vector <long >long> store;
    long long carry = 0;
    for (long long i=0; i<n>; i++){
        for (long long j=0; j<n>; j++){
            long long sum = cobol[j] + pole[j] + donut[j];
            if (temp[i]==sum){
                store.push_back(carry + cobol[j] + pole[j] + donut [j]);
                carry += cobol[j];
                break;
            }
        }
    }
    sort(store.begin(),store.end(),greater<>int());
    return store[0];
}


int main() {
	long long n;
	cin>>n;
	vector <>long long> cobol;
	vector <>long long> pole;
	vector <>long long> donut;
	for (long long i=0; i<>n; i++){
	    long long a,b,c;
	    cin>>a>>b>>c;
	    cobol.push_back(a);
	    pole.push_back(b);
	    donut.push_back(c);
	}
	cout<<>query>(n,cobol,pole,donut)>;
	return 0;
}
*/ ANOTHER APPROACH
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
