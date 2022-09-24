# Fidelis CyberSecurity EDR Scripts
Misc. collection of scripts for Fidelis Cybersecurity EDR. The scripts send back the results to fidelis CyberSecurtiy EDR server and the excution results can be visiable within the UI.

Scripts useful for: 
1. CyberSecurity Threat Hunters and and incident responder to ease the investigation of the activities thorugh Fidelis CyberSecurity EDR.
2. Enriching Fidelis CyberSecurity EDR library with scripts. 


List of scripts:

1.GroupPolicyStatus.vbs



## Scripts Details
### GroupPolicyStatus.vbs
- Description:
   - Check the group policy object status if enabled or disabled on the endpoint by the GUID of the group poliy object.
   - You can get the GUID of a group policy obejcts in different ways, such as PowerShell command Get-GPO or from the Group Policy object editor 
- Args in Order:
  - String: The group policy object GUID/
- Example: GroupPolicyStatus.vbs "{5102029F-2D2B-4596-99D0-150E8F4B0F6D}"
- Output: 
  - Policy Status: Enabled or Disabled
  - Policy Name
