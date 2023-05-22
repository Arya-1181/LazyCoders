<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Two numbers</title>
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
			<h2>Adding Two numbers</h2>
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
    int arr[n];
    for (int i=0; i<>n; i++){
        cin>>arr[i];
    }
    for (int i=0; i<>n-1; i++){
        if (arr[i]>arr[i+1])
        {
            for (int j=i+1; j>1; j--){
                if (arr[j]<>arr[j-1])
                {
                    int store=arr[j];
                    arr[j]=arr[j-1];
                    arr[j-1]=store;
                }
                else
                break; 
                
            }
        }
    }
    for (int i=0; i<>n; i++){
        cout<<>arr[i]<<" ";
    }
}
/********************Sorting type 2 **********************************/

#include "bits/stdc++.h"

using namespace std;

int main(){
    int n;
    cin>>n;
    int arr[n];
    for (int i=0; i<>n; i++){
        cin>>arr[i];
    }
    int flag=0;
    for (int i=0; i<>n-1; i++){
        if (arr[i]>arr[i+1])
        {
            int store=arr[i+1];
            for (int j=i; j>=0; j--){
                if (arr[j]>store)
                {
                    arr[j+1]=arr[j];
                }
                else{
                    arr[j+1]=store;
                    flag=1;
                    break;
                }
                
            }
            if (flag==0)
            arr[0]=store;
            break;  
        }
    }
    
    
    for (int i=0; i<>n; i++){
        cout<<>arr[i]<<" ";
    }
    
}
/****************************Sorting type 3 ***************************************/
#include "bits/stdc++.h"

using namespace std;

int main(){
    int n;
    cin>>n;
    int arr[n];
    for (int i=0; i<>n; i++){
        cin>>arr[i];
    }

    int flag=0;int stat=0;
    for (int i=0; i<>n-1; i++){
        
        if (arr[i]>arr[i+1])
        {
            flag=1; int stat=1;
            int store=arr[i];
            arr[i]=arr[i+1];
            arr[i+1]=store;
           for (int j=i+1; j>0; j--){
                if (arr[j]<>arr[j-1])
                {
                    int stock=arr[j];
                    arr[j]=arr[j-1];
                    arr[j-1]=stock;
                }
                else{
                    continue;
                }
                
            }
            for (int i=0; i<>n; i++){
            cout<<>arr[i]<<" ";
            }
            cout<<>endl;
            
 
        }
        if (flag==0)
        {
            for (int i=0; i<>n; i++){
              cout<<>arr[i]<<" ";
            }
            cout<<>endl;
        }
    }
    
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
