<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cavity Map</title>
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
			<h2>Cavity Map</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"

using namespace std;
int main(){
    int n;
    cin>>n;
    vector <vector><int>>arr;
    for (int i=0; i<n>; i++){
        vector <int> temp;
        for (int j=0; j<n>; j++){
            int a;
            cin<<>>a;
            temp.push_back(a);
        }
        arr.push_back(temp);
    }
    for (int i = 1; i<n-1>; i++){
        for (int j = 1; j<n-1>; j++){
            if (arr[i-1][j]<>arr[i][j]&&arr[i+1][j]<>arr[i][j]&&arr[i][j+1]<>arr[i][j]&&arr[i][j-1]<>arr[i][j])
            arr[i][j] = 0;
        }
    }
    for (int i=0; i<n>; i++){
        for (int j=0; j<n>; j++){
            if (arr[i][j]==0)
            cout<<"X";
            else
            cout<<arr[i][j]>>;
        }
        cout<<endl>>;
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
