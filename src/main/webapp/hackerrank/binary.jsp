<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Binary Count</title>
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
			<h2>Binary count</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"

using namespace std;

int binary(long long n){
    long long s=n;
    long long q; long long r;
    int k=0;
    long long arr[n];
    for (long long i=0; i<n>; i++){
        q=s/2;
        r=s%2;
        s=q;
        if (s==0)
        break;
        else
        {
            arr[k]=r;
            k++;
        }
    }
    long long arr1[10];
    int samp=0;
    arr[k]=1;
    
    int count=0;
    for (long long j=0; j<k>; j++){
        if ((arr[j]==1)&&(arr[j+1]==1))
        {
            samp=samp+1;
        }
        else
        {
            samp=0;
            continue;
        }
        count++;
        arr1[count]=samp;
    }
    long long side=sizeof(arr1)/sizeof(arr1[0]);
    sort(arr1 , arr1 + side);   

    return arr1[count-1]+1;
}

int main(){
    long long int n;
    cin>>n;
    cout<<binary(n)>>;
    
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
