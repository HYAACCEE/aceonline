111111111111111111111111111111111111111111111111
delete from B_Candidate where istdate<trunc(sysdate);
delete from b_Candidate_Cvcertificate where istdate<trunc(sysdate);
delete from b_Candidate_Cveducation where istdate<trunc(sysdate);
delete from b_Candidate_Cvproject where istdate<trunc(sysdate);
delete from b_Candidate_Cvtrain where istdate<trunc(sysdate);
delete from B_Candidate_CVWork where istdate<trunc(sysdate);
delete from B_Candidate_Files where istdate<trunc(sysdate);
delete from b_Candidate_Hccomment where istdate<trunc(sysdate);
delete from BO_Candidate where istdate<trunc(sysdate);
delete from bO_Candidate_Cvcertificate where istdate<trunc(sysdate);
delete from bO_Candidate_Cveducation where istdate<trunc(sysdate);
delete from bO_Candidate_Cvproject where istdate<trunc(sysdate);
delete from bO_Candidate_Cvtrain where istdate<trunc(sysdate);
delete from BO_Candidate_CVWork where istdate<trunc(sysdate);
delete from bO_Candidate_Hccomment where istdate<trunc(sysdate);

delete from B_ACEWork where istdate<trunc(sysdate);
delete from B_ACTION where istdate<trunc(sysdate);
delete from b_Candidate_Collect where istdate<trunc(sysdate);
delete from b_Candidate_Interview where istdate<trunc(sysdate);
delete from B_Candidate_Process where istdate<trunc(sysdate);
delete from B_Candidate_Process_HIS where istdate<trunc(sysdate);
