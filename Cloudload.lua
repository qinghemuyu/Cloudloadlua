local text="1";--设置加载验证密码/ set  password
local name=nil;
local pdzt = false;
local pdzt1 = true;
local url="https://qinemax.coding.net/p/coding-code-guide/d/coding-code-guide/git/raw/master/V5-PAT-test2.lua?download=false"
--https://qinemax.coding.net/p/coding-code-guide/d/coding-code-guide/git/raw/master/v5-load.lua?download=false
local buttonload = gui.Window("load", "Cloudload", 100, 200, 250, 280)
local pwdass = gui.Editbox( buttonload, "menu.pwd", "请输入加载密码/password" )
local pwdyanz = gui.Button( buttonload, "load", function() 
    if pwdass:GetValue() == text then
        name="1111v5_load"
        http.Get(
            url,
            function(body)
                print(name)
                file.Write(name .. ".lua", body)
                pdzt=true;
                end)
                callbacks.Register( "Draw", function()
                    if pdzt1 then
                        if pdzt then
                            print( ''..name..'.lualoading' )
                            LoadScript( ''..name..'.lua' ) 
                            pdzt1=false;
                        end
                    end
                end )
                   

    else 
        print("pwd err")
    end 
end)
