-- Minimal version - just shows the content
local originalLoadstring = loadstring

loadstring = function(code)
    print("\n" .. string.rep("-", 40))
    print("LOADSTRING CONTENT:")
    print(tostring(code))
    local hi = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) local function copytoclipboard(txt) if hi then hi(tostring(txt)) end end
    copytoclipboard(tostring(code)) print(string.rep("-", 40) .. "\n")
    writefile("oops.txt", tostring(code))
    
    return originalLoadstring(code)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/riddance-club/script/refs/heads/main/loader.lua"))() 
