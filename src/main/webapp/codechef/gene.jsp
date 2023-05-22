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

#include <bits/stdc++.h>

using namespace std;

int genes(){
    int n; int k; int arr[n];
    
    for (int i=0; i<>n; i++)
    {
        if (i==n-1)
        {
            if (arr[i]=='A')
        {
            if (arr[0]=='A')
            cout<<"A";
            else if (arr[0]=='B')
            cout<<"B";
            else if (arr[0]=='C')
            cout<<"C";
            else if (arr[0]=='D')
            cout<<"D";
        }
        
        else if (arr[i]=='B')
        {
            if (arr[0]=='A')
            cout<<"B";
            else if (arr[0]=='B')
            cout<<"A";
            else if (arr[0]=='C')
            cout<<"D";
            else if (arr[0]=='D')
            cout<<"C";
        }
        
        else if (arr[i]=='C')
        {
            if (arr[0]=='A')
            cout<<"C";
            else if (arr[0]=='B')
            cout<<"D";
            else if (arr[0]=='C')
            cout<<"A";
            else if (arr[0]=='D')
            cout<<"B";
        }
        
        else if (arr[i]=='D')
        {
            if (arr[0]=='A')
            cout<<"D";
            else if (arr[0]=='B')
            cout<<"C";
            else if (arr[0]=='C')
            cout<<"B";
            else if (arr[0]=='D')
            cout<<"D";
        }
        
        }
        
        
        else{
        if (arr[i]=='A')
        {
            if (arr[i+1]=='A')
            cout<<"A";
            else if (arr[i+1]=='B')
            cout<<"B";
            else if (arr[i+1]=='C')
            cout<<"C";
            else if (arr[i+1]=='D')
            cout<<"D";
        }
        
        else if (arr[i]=='B')
        {
            if (arr[i+1]=='A')
            cout<<"B";
            else if (arr[i+1]=='B')
            cout<<"A";
            else if (arr[i+1]=='C')
            cout<<"D";
            else if (arr[i+1]=='D')
            cout<<"C";
        }
        
        else if (arr[i]=='C')
        {
            if (arr[i+1]=='A')
            cout<<"C";
            else if (arr[i+1]=='B')
            cout<<"D";
            else if (arr[i+1]=='C')
            cout<<"A";
            else if (arr[i+1]=='D')
            cout<<"B";
        }
        
        else if (arr[i]=='D')
        {
            if (arr[i+1]=='A')
            cout<<"D";
            else if (arr[i+1]=='B')
            cout<<"C";
            else if (arr[i+1]=='C')
            cout<<"B";
            else if (arr[i+1]=='D')
            cout<<"D";
        }
        }
        
    }
    
    return 0;
}

int main()
{
    int n; int arr[n];
    cin>>n;
    for (int i=0; i<>n; i++)
    {
        cin>>arr[i];
    }
    genes();
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
