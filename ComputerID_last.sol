pragma solidity ^0.5.0;

contract  ComputerID{
    
   
   uint User_ID;
   uint USER_OK = 100;
   uint USER_NOT_OK = 200;
   string Computer_ID;
   string ISP_Detail;
   string Firewall_Name;
   string VPN_Name;
   
    
   function SetUserInfo(uint _User_ID) public view returns(string memory){
       
       
       
       if (_User_ID < USER_OK){
           return "Not Authorized";
       }
       else if (_User_ID > USER_NOT_OK){
           return "Wrong ID";
       }
       else {
           return "Allow to install new H/W";
       }
   }
   
   
    function SetUserInfo(string memory _Computer_ID, string memory _ISP_Detail,string memory _Firewall_Name,
   string memory _VPN_Name) public {
      // User_ID = _User_ID;
       Computer_ID = _Computer_ID;
       Firewall_Name = _Firewall_Name;
       VPN_Name = _VPN_Name;
       ISP_Detail = _ISP_Detail;
       
       
   }
   
   
   function GetUserInfo() public view returns (string memory, string memory,string memory,string memory) {
return (Computer_ID, ISP_Detail, Firewall_Name, VPN_Name);
   }
}