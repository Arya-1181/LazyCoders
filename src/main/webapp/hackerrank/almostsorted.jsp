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
			<h2>Almost Sorted</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include <bits/stdc++.h>

using namespace std;

int main(){
    vector <int> v;
    int n;
    cin>>n;
    for (int i=0; i<n; i++){
        int a;
        cin>>a;
        v.push_back(a);
    }
    if (is_sorted(v.begin(),v.end()))
    cout<<"yes";
    else {
        vector <int> copy;
        copy=v;
        int flag=0;
        int s1,s2;
        for (int i=0; i<n-1; i++){
            if (v[i]>v[i+1]){
                for (int j=i+1; j<n-1; j++){
                    if (v[j]>v[j+1]){
                        int temp=v[i];
                        v[i]=v[j+1];
                        v[j+1]=temp;
                        s2=j+1;
                        flag=1;
                        break;
                    }
                }
            }
            if (flag==1){
            s1=i;
            break;
            }
        }

        
    }
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
