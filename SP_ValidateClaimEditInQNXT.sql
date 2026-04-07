USE [QNXT_MOLINADB_UNV];
GO;
--Procedure Updated After Impact Analysis.
ALTER PROCEDURE [dbo].[SP_ValidateClaimEditInQNXT] 
AS
BEGIN
  
SELECT claimid, status FROM QNXT_PLANDATA_UNV.dbo.ClaimEdit WHERE claimid IN (SELECT claimid FROM QNXT_PLANDATA_UNV.dbo.Claim WHERE status='OPEN'); 
  
END