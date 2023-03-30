function validateSignUp() {

    var branchname = document.signUp.branchname.value;
    var branchmanager = document.signUp.branchmanager.value;
    var email2 = document.signUp.email2.value;
    var password = document.signUp.password.value;
    var cnfrpassword = document.signUp.cnfrpassword.value;


    const regName = /^[a-z A-Z]+$/i;
    const regMName = /^[a-z A-Z]+$/i;

    if (branchname == "" || branchname == null) {
        window.alert("Please Enter Branch Name!!");
        branchname.focus();
        return false;
    }
    if (!regName.test(branchname)) {
        window.alert("Branch Name should not contain special characters or numbers!!");
        branchname.focus();
        return false;
    }
    if (branchmanager == "" || branchmanager == null) {
        window.alert("Please Enter Branch Manager Name!!");
        branchmanager.focus();
        return false;
    }
    if (!regMName.test(branchmanager)) {
        window.alert("Branch Manager Name should not contain special characters or numbers!!");
        branchmanager.focus();
        return false;
    }
    if (email2 == "" || email2 == null) {
        window.alert("Please Enter Email!!");
        return false;
    }
    if (password == "" || password == null) {
        window.alert("Please Enter Password!!");
        password.focus();
        return false;
    }
    if (password.length < 6) {
        window.alert("Password should be atleast 6 characters!!");
        password.focus();
        return false;
    }
    if (cnfrpassword == "" || cnfrpassword == null) {
        window.alert("Please Enter Confirm Password!!");
        cnfrpassword.focus();
        return false;
    }
    if (cnfrpassword != password) {
        window.alert("Password and Confirm Password should be same!!");
        cnfrpasssword.focus();
        return false;
    }
    else {
        window.alert("Registration Successful!!");

        return true;
    }

}