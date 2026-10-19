-- ================================================
-- BỘ TẢI RETDIK
-- ================================================

-- Chữ "RETDIK" nghệ thuật khổ lớn
local retdikBanner = [[

  _____  ______ _______ _____  _____  _____ _  __
 |  __ \|  ____|__   __|  __ \|_   _|/ ____| |/ /
 | |__) | |__     | |  | |  | | | | | |    | ' / 
 |  _  /|  __|    | |  | |  | | | | | |    |  <  
 | | \ \| |____   | |  | |__| |_| |_| |____| . \ 
 |_|  \_\______|  |_|  |_____/|_____|\_____|_|\_\

]]

-- Hiển thị chữ khổ lớn ra Developer Console (F9)
print(retdikBanner)
print("[RETDIK] Đang kết nối và tải script...")

-- Tải và thực thi script chính
local success, err = pcall(function()
    loadstring(game:HttpGet("https://luauforge-antiraw.netlify.app/raw/retdik-v4-M0vFbNDbhicSbEmi86x4LL9"))()
end)

-- Kiểm tra trạng thái thực thi
if success then
    print("[RETDIK] Tải script thành công!")
else
    warn("[RETDIK] Lỗi khi tải script: " .. tostring(err))
end
