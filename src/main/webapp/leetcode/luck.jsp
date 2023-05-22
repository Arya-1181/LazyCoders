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

int month[15];

void updateLeapYear(int year) {
    if(year % 400 == 0) {
        month[2] = 28;
    } else if(year % 100 == 0) {
        month[2] = 29;
    } else if(year % 4 == 0) {
        month[2] = 29;
    } else {
        month[2] = 28;
    }
}

void storeMonth() {
    month[1] = 31;
    month[2] = 28;
    month[3] = 31;
    month[4] = 30;
    month[5] = 31;
    month[6] = 30;
    month[7] = 31;
    month[8] = 31;
    month[9] = 30;
    month[10] = 31;
    month[11] = 30;
    month[12] = 31;
}

int findLuckyDates(int d1, int m1, int y1, int d2, int m2, int y2) {
    storeMonth();

    int result = 0;

    //while(true) {
        long x = d1*1000000; long a=d2* 1000000;
        long y = m1 * 10000; long b=m2* 10000;
        long z = x+y+y1;     long c=a+b+y2;
        for (long i=z; i<=c; i++){ 

        if (z/4==1)
        {
        z=z+1;
        if((z % 4 == 0) || (z % 7 == 0)) {
            result = result + 1;
        }
        else if((d1 == d2) && (m1 == m2) && (y1 == y2)) {
            break;
        }
        }
        else
        {
         if((z % 4 == 0) || (z % 7 == 0)) {
            result = result + 1;
            
        }
        else if((d1 == d2) && (m1 == m2) && (y1 == y2)) {
            break;
        }
        }
        if(d1 > month[m1]) {
            m1 = m1 + 1;
            d1 = 1;
            if(m1 > 12) {
                y1 =  y1 + 1;
                m1 = m1 + 1;
            }
        }
    }
    return result;
}

int main() {
    string str;
    int d1, m1, y1, d2, m2, y2;
    getline(cin, str);
    for(int i = 0; i < str.size(); i++) {
        if(str[i] == '-') {
            str[i] = ' ';
        }
    }
    stringstream ss;
    ss << str;
    ss >> d1 >> m1 >> y1 >> d2 >> m2 >> y2;

    int result = findLuckyDates(d1, m1, y1, d2, m2, y2);
    cout << result << endl;
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
