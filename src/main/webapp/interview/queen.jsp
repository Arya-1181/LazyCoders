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
#include "bits/stdc++.h"
using namespace std;

class chess{
    public :
    int n,k,q1,q2;
    int rk,ck;
    int ceast=0;
    void east(int q2,int n){
        for (int i=q2+1; i<=n; i++){
            if (i==ck)
            break;
            else
            ceast++;
        }
    }
    int cwest=0;
    void west(int q2,int n){
        for (int i=q2-1; i>=1; i--){
            if (i==ck)
            break;
            else
            cwest++;
        }
    }
    int cnorth=0;
    void north(int q1, int n){
        for (int i=q1+1; i<=n; i++){
            if (i==rk)
            break;
            else;
            cnorth++;
        }
    }
    int csouth=0;
    void south(int q1, int n){
        for (int i=q1-1; i>=1; i--){
            if (i==rk)
            break;
            else 
            csouth++;
        }
    }
    
    int sum1(){
        int tot=cnorth+csouth+ceast+cwest;
        return tot;
    }
    
    
    int cnortheast=0;
    void northeast(int q1,int q2,int n){
        for (int i=q1+1; i<=n; i++){
            if (i==rk)
            break;
            else
            cnortheast++;
        }
        for (int i=q2+1; i<=n; i++){
            if (i==ck)
            break;
            else
            cnortheast++;
        }
        cnortheast=cnortheast/2;
    }
    int cnorthwest=0;
    void northwest(int q1, int q2, int n){
        for (int i=q1+1; i<=n; i++){
            if (i==rk)
            break;
            else
            cnorthwest++;
        }
        for (int i=q2-1; i>=1; i--){
            if (i==ck)
            break;
            else
            cnorthwest++;
        }
        
        cnorthwest=cnorthwest/2;
    }
    int csouthwest=0;
    void southwest(int q1, int q2, int n){
        for (int i=q1-1; i>=1; i--){
            if (i==rk)
            break;
            else
            csouthwest++;
        }
        for (int i=q2-1; i>=1; i--){
            if (i==ck)
            break;
            else
            csouthwest++;
        }
        csouthwest=csouthwest/2;
    }
    int csoutheast;
    void southeast(int q1,int q2,int n){
        for (int i=q2+1; i<=n; i++){
            if (i==ck)
            break;
            else
            csoutheast++;
        }
        for (int i=q1-1; i>=1; i--){
            if (i==rk)
            break;
            else
            csoutheast++;
        }
        csoutheast=csoutheast/2;
    }
    int sum(){
        int total=cnorth+csouth+ceast+cwest+cnortheast+cnorthwest+csoutheast+csouthwest;
        return total;
    }
};    
    int main(){
        
        int n,k,q1,q2;
        int rk,ck;
        cin>>n>>k>>q1>>q2>>rk>>ck;
        chess o;
        o.east(q2,n);
        o.west(q2,n);
        o.north(q1,n);
        o.south(q1,n);
        o.northeast(q1,q2,n);
        o.northwest(q1,q2,n);
        o.southeast(q1,q2,n);
        o.southwest(q1,q2,n);        
        cout<<>o.sum()<<>endl;
        cout<<>o.sum1();
        
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
