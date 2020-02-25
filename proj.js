function edit(){
	var id=document.getElementById("cid").value
	console.log("id is "+id)
	console.log("mydata.jsp?cid="+id)
	document.myform.action="mydata.jsp?cid="+id
    document.myform.submit()
}

function validation1()
{
	var name=document.myform.name.value;
	if(name==''||name==null)
	{
	alert('customer name should not be blank');
	//document.myForm.name.focus();
	return false;
	}
	 if (!/^[a-zA-Z]*$/g.test(document.myform.name.value)) {
	        alert("User name should be alphabets");
	        document.myform.cname.focus();
	        return false;
	    }
	var dob=document.myform.birth_date.value;
	 if(dob=='' ||dob==null)
		{
		alert('dob should not be blank');
		//document.myForm.name.focus();
		return false;
		}
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var email=document.myform.email.value;
    if(email==null||email=="")
    	{
    	alert("email should not be blank");
    	return false;
    	}
    if (reg.test(email) == false) 
    {
        alert('Invalid Email Address');
        return false;
    }
  
   	var pwd=document.myform.psw.value;
   	 if(pwd==null||pwd=="")
    	{
    	alert("password should not be blank");
    	return false;
    	}
   	 re = /[!@#$%^&*()_+]/;
    if(!re.test(pwd)) {
      alert("Error: Password must contain special characters!");
      login.psw.focus();
      return false;
    }
      re = /[A-Za-z0-9]{6,9}/;
      if(!re.test(pwd)) {
        alert("Error: Password must contain 6 alphanumerics");
        login.psw.focus();
        return false;
      }
	var phoneno=/^\d{10}$/;
	var phone=document.myform.phone.value;
	if(phone==null||phone=="")
	{
	alert("phone no should not be blank");
 	return false;
	}
	if(phone.match(phoneno))
		{
		return true;
		}
	else
		{
		alert("enter 10 numbers");
		return false;
		}
	 var add1=document.myform.address.value;
	 if(add1==null||add1=="")
		 {
		 alert("address should not be blank");
		 return false;
		 }
	 if(add1.length>100)
		 {
		 alert("address cannot be more than 100 characters");
		 document.myform.address.focus();
		 return false;
		 }
	 var gen=document.myform.gender.value;
	 if(gen==null||gen=='')
		 {
		 alert("select gender");
		 return false;
		 }
	}
