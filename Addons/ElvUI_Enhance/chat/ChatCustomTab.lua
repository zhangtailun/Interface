local tostring = tostring
local GetNumSubgroupMembers = GetNumSubgroupMembers
local GetNumGroupMembers = GetNumGroupMembers
local IsInRaid = IsInRaid
local IsInGuild = IsInGuild
local IsInGroup = IsInGroup
local IsInInstance = IsInInstance
local CanEditOfficerNote = CanEditOfficerNote
local LE_PARTY_CATEGORY_INSTANCE = LE_PARTY_CATEGORY_INSTANCE
local ChatEdit_UpdateHeader = ChatEdit_UpdateHeader


function ChatEdit_CustomTabPressed(self) 
if strsub(tostring(self:GetText()), 1, 1) == "/" then return end 
   if  (self:GetAttribute("chatType") == "SAY")  then 
      if (GetNumSubgroupMembers()>0) then 
         self:SetAttribute("chatType", "PARTY"); 
         ChatEdit_UpdateHeader(self); 
      elseif (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance()) then 
         self:SetAttribute("chatType", "INSTANCE_CHAT"); 
         ChatEdit_UpdateHeader(self); 
      elseif (GetNumGroupMembers()>0 and IsInRaid()) then 
         self:SetAttribute("chatType", "RAID"); 
         ChatEdit_UpdateHeader(self); 
      elseif (IsInGuild()) then 
         self:SetAttribute("chatType", "GUILD"); 
         ChatEdit_UpdateHeader(self); 
      elseif (CanEditOfficerNote()) then 
         self:SetAttribute("chatType", "OFFICER"); 
         ChatEdit_UpdateHeader(self); 
      else 
         return; 
      end 
   elseif (self:GetAttribute("chatType") == "PARTY") then 
         if (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance())  then 
         self:SetAttribute("chatType", "INSTANCE_CHAT"); 
              ChatEdit_UpdateHeader(self); 
        elseif (GetNumGroupMembers()>0 and IsInRaid() ) then 
              self:SetAttribute("chatType", "RAID"); 
              ChatEdit_UpdateHeader(self); 
        elseif (IsInGuild()) then 
              self:SetAttribute("chatType", "GUILD"); 
              ChatEdit_UpdateHeader(self); 
         elseif (CanEditOfficerNote()) then 
              self:SetAttribute("chatType", "OFFICER"); 
              ChatEdit_UpdateHeader(self); 
      else 
         self:SetAttribute("chatType", "SAY"); 
         ChatEdit_UpdateHeader(self); 
      end         
   elseif (self:GetAttribute("chatType") == "INSTANCE_CHAT") then 
      if (IsInGuild()) then 
         self:SetAttribute("chatType", "GUILD"); 
         ChatEdit_UpdateHeader(self); 
      elseif (CanEditOfficerNote()) then 
         self:SetAttribute("chatType", "OFFICER"); 
         ChatEdit_UpdateHeader(self); 
      else 
         self:SetAttribute("chatType", "SAY"); 
         ChatEdit_UpdateHeader(self); 
      end 
   elseif (self:GetAttribute("chatType") == "RAID") then 
      if (IsInGuild) then 
         self:SetAttribute("chatType", "GUILD"); 
         ChatEdit_UpdateHeader(self); 
      elseif (CanEditOfficerNote()) then 
         self:SetAttribute("chatType", "OFFICER"); 
         ChatEdit_UpdateHeader(self); 
      else 
         self:SetAttribute("chatType", "SAY"); 
         ChatEdit_UpdateHeader(self); 
      end 
   elseif (self:GetAttribute("chatType") == "GUILD") then 
      if (CanEditOfficerNote()) then 
         self:SetAttribute("chatType", "OFFICER"); 
         ChatEdit_UpdateHeader(self); 
      else 
          self:SetAttribute("chatType", "SAY"); 
          ChatEdit_UpdateHeader(self); 
      end 
   elseif (self:GetAttribute("chatType") == "OFFICER") then 
       self:SetAttribute("chatType", "SAY"); 
       ChatEdit_UpdateHeader(self); 
   elseif (self:GetAttribute("chatType") == "CHANNEL") then 
      if (GetNumSubgroupMembers()>0) then 
         self:SetAttribute("chatType", "PARTY"); 
         ChatEdit_UpdateHeader(self); 
      elseif (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance())  then 
         self:SetAttribute("chatType", "INSTANCE_CHAT"); 
         ChatEdit_UpdateHeader(self); 
      elseif (GetNumGroupMembers()>0 and IsInRaid() ) then 
         self:SetAttribute("chatType", "RAID"); 
         ChatEdit_UpdateHeader(self); 
      elseif (IsInGuild()) then 
         self:SetAttribute("chatType", "GUILD"); 
         ChatEdit_UpdateHeader(self); 
      elseif (CanEditOfficerNote()) then 
         self:SetAttribute("chatType", "OFFICER"); 
         ChatEdit_UpdateHeader(self); 
      else 
         self:SetAttribute("chatType", "SAY"); 
         ChatEdit_UpdateHeader(self); 
      end 
   end 
end 