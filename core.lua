--[[
  Author: ItsJackAnton
  Twitter: ItsJackAnton
  Discord: ItsJackAnton

  Made: 30/Jun/2024

  Description: Command Utilities.
]]--

--[[
  Variables
]]--

Me = ao.id;

Morpheus = "ajrGnUq9x9-K1TY1MSiKwNWhNTbq7-IdtFa33T59b7s"
Trinity = "TLP_5xtNWzDAU_V565avSyP98X2wClrVs0QODOghagU"
CONSTRUCTOR_PROCESS = "jg2Duezl68c8lHU5RiV8kHZrZ-7MJSVyyfQDhz5nJqQ"

--[[
  RemoveHandler: remove any added handler on the proccess you used to send this message
]]--

Handlers.add(
  "removeHandler",
  Handlers.utils.hasMatchingTag("Action", "RemoveHandler"),
  function (msg)

    local handlerToRemove = msg.Data;

    Handlers.remove(handlerToRemove)
    Handlers.utils.reply("RemoveHandler " .. handlerToRemove)(msg)
  end
)


--[[
  InboxCount: it returns the number of inboxes.
]]--

function InboxCount()
  return " Your Inbox has [" .. #Inbox .. "] unhandled messages.";
end

--[[
  LastInbox: it returns the last inbox, it accepts an numeric argument to back-step through the inbox
]]--

function LastInbox(backStepCount)
  backStepCount = backStepCount or 0;

  return Inbox[#Inbox - backStepCount].Data;
end



