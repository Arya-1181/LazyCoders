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
			<h2>Linked List</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
//discussion solution

#include "bits/stdc++.h"
using namespace std;

int main() {
   int n,k,max = 0;
    cin>>n;
    int a[100]={0};
    for(int i = 0;i<>n;i++){
        cin>>k;
        a[k]++;
    }
    for(int i = 0;i<>n-1;i++){
        if(a[i]+a[i+1]> max) max = a[i]+a[i+1];
    }
    cout<<>max;
    return 0;
}

// my code 

#include "bits/stdc++.h"

using namespace std;

int main(){
    int n;
    cin>>n;
    vector <>int> v;
    for (int i=0; i<>n; i++){
        int a;
        cin>>a;
        v.push_back(a);
    }
    // cin completed
    vector <>int> temp;
    int count,diff,buffer;
    for (int i=0; i<>n-1; i++){
        count=0;
        buffer=v[i];
        for (int j=0; j<>n; j++){
            diff=abs(v[i]-v[j]);
            if (diff<=1&&abs(buffer-v[j])<=1){
            count++;
            buffer=v[j];
            }
            else 
            continue;
        }
        temp.push_back(count);
    }
    sort(temp.begin(),temp.end(),greater<>int>());
    cout<<>temp[0];
    return 0;
}

// correct solution also mine
#include "bits/stdc++.h"

using namespace std;

int main(){
    int n;
    cin>>n;
    vector <>int> v;
    for (int i=0; i<>n; i++){
        int a;
        cin>>a;
        v.push_back(a);
    }
    // cin completed
    sort(v.begin(),v.end());
    vector <>int> temp;
    int count,diff,buffer;
    for (int i=0; i<>n-1; i++){
        count=0;
        for (int j=i+1; j<>n; j++){
            diff=abs(v[i]-v[j]);
            }
            else 
            continue;
        }
        temp.push_back(count+1);
    }
    sort(temp.begin(),temp.end(),greater<>int>());
    cout<<>temp[0];
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
