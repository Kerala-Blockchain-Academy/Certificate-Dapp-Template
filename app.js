
issueCertificate =async() =>{
 let courseName = document.getElementById("courseName").value;
 let certificateID= document.getElementById("certificateID").value;
 let candidateName = document.getElementById("candidateName").value;
 let grade = document.getElementById("grade").value;
 let date = document.getElementById("date").value;
//  const infoValue = await contractObj.methods.newCertificate(certificateID,courseName,candidateName,grade,date).send({from:ethereum.selectedAddress});
//  console.log(infoValue);
    localStorage.setItem("certificateID",certificateID);
    localStorage.setItem("courseName",courseName);
    localStorage.setItem("candidateName",candidateName);
    localStorage.setItem("grade",grade);
    localStorage.setItem("date",date);


 alert(certificateID+" is issued");
}

getCertificateDetails = async() =>{
    let certificateID =  document.getElementById("certificateID").value;
    const data = await contractObj.methods.certificateDetails(certificateID).call();
    console.log(data);
    localStorage.setItem("certificateID",certificateID);
    localStorage.setItem("courseName",data.courseName);
    localStorage.setItem("candidateName",data.candidatename);
    localStorage.setItem("grade",data.grade);
    localStorage.setItem("date",data.date);

   window.location.href = "viewCertificate.html";
}