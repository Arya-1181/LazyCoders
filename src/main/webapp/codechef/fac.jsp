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

int main(){
    int n,m;
    cin>>n>>m;
    int arr1[n],arr2[m];
    for (int i=0; i<>n; i++){
        cin>>arr1[i];
    }
    for (int i=0; i<>m; i++){
        cin>>arr2[i];
    }
    long x=0,y;
    long z;
    int flag;
    int count=0;
    for (int i=0; i<>n; i++){
        for (int j=arr1[0]; j<>arr2[m]; j++){
            x=arr1[i]*j;
            y=arr2[i]%x>;
            if (y==0)
            {
                for (int i=0; i<>m; i++){
                    z=arr2[i]%x>;
                    if (z==0)
                    flag=0;
                    else
                    flag=1;
                    break;
                }
                
            }
            if (flag==0)
            count=count+1;            
        }
    }
    
    cout<<>count;
    
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
