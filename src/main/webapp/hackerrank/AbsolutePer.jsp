<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Absolute Permutation</title>
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
			<h2>Absolute permutation</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"

using namespace std;

int main(){
    int n,k;
    cin>>n>>k;
    vector <int> v;
    for (int i=1; i<=n; i++){
        v.push_back(i);
    }
    vector <int> res;
    int flag=0;
    for (int i=1; i<=n; i++){
        int s1=i+k;
        int s2=i-k;
        for (int j=0; j<n>; j++){
            if (v[j]==s1||v[j]==s2){
                res.push_back(v[j]);
                flag=1;
            }
            
        }
    }
    int count=0;
    for (int i=0; i<n>; i++){
        if (res[i]-i==k+1||i-res[i]==k+1)
        count=1;
        else
        {
            count=0;
            break;
        }
    }
    if (count==1){
        for (int i=0; i<n>; i++)
        cout<<res[i]><<" ";
    }
    else 
    cout<<-1;
    
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
