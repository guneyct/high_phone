Config.Languages["en"] = {
    ["notifications"] = {
        -- Bank
        ["selftransfer"] = "Kendine para gönderemezsin!",
        ["selfrequest"] = "Kendinden para isteyemezsin!",
        ["receivedmoney"] = "<strong>{senderId}</strong> tarafından <strong>{amount}$</strong> tutarında transfer aldın! Sebep: <strong>{reason}</strong>",
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> senden <strong>{amount}$</strong> tutarında para istedi! Sebep: <strong>{reason}</strong>",
        ["receivernonexistant"] = "Bu kimliğe sahip kullanıcı mevcut değil!",
        ["notenoughmoney"] = "Bu işlemi yapmak için yeterli paranız yok!",
        ["requestdoesntexist"] = "İstek mevcut değil!",
        ["requestcooldown"] = "Bu kadar hızlı istek gönderemezsiniz!",
        ["transfercooldown"] = "Bu kadar hızlı transfer isteği gönderemezsiniz!",
        ["playernotonline"] = "Bu kimliğe sahip oyuncu çevrimiçi değil!",
        ["playernotonlineanymore"] = "Oyuncunun sunucuyla bağlantısı kesildi!",
        -- Phone
        ["userbusy"] = "Kişi meşgul!",
        ["usernotavailable"] = "Kişiye ulaşılamıyor!",
        ["noavailableunits"] = "Aramayı cevaplayacak uygun birim yok!",
        -- Twitter/mail
        ["accountdoesntexist"] = "E-posta adresi kayıtlı değil!",
        ["emailtaken"] = "E-posta zaten alınmış!",
        ["usernametaken"] = "Kullanıcı adı zaten alınmış!",
        ["userdoesntexist"] = "Kullanıcı mevcut değil!",
        ["wrongpassword"] = "Yanlış şifre!",
        ["wrongresetcode"] = "Yanlış kod!",
        -- Dark chat
        ["invitedoesntexist"] = "Davet kodu mevcut değil!",
        ["alreadyingroup"] = "Halihazırda grubun içerisindesin!",
        ["bannedfromgroup"] = "Bu gruptan yasaklandınız!",
        ["groupmemberlimitreached"] = "Grup üye sayısı limiti aşıldı!",
        ["member_joined"] = "<strong>{memberName}</strong> gruba katıldı",
        ["member_left"] = "<strong>{memberName}</strong> gruptan ayrıldı",
        ["member_banned"] = "<strong>{memberName}</strong> gruptan yasaklandı",
        ["member_kicked"] = "<strong>{memberName}</strong> gruptan atıldı",
    },
    -- Other
    ["open_phone"] = "Telefonu Aç",
    ["deleted_user"] = "Silinmiş Kullanıcı",
    ["unknown"] = "Bilinmiyor",
    ["unknown_caller"] = "Bilinmeyen Arayan",
    ["newtweetwebhook"] = {
        ["title"] = "📢 New Tweet from {senderTwitterName} ({senderName} [**{senderId}**])!",
        ["replying"] = "Replying to @{tweeterName}",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["tweetreportwebhook"] = {
        ["title"] = "📢 Tweet with ID {tweetId} posted by {tweeterName} was reported by {reporterTwitterName} ({reporterName} [**{reporterId}**])!",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["newmailwebhook"] = {
        ["title"] = "📧 New Mail from **{senderMailAddress}** ({senderName} [**{senderId}**])!",
        ["description"] = "To **{recipients}**\nSubject: **{subject}**\nContent: **{content}**",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["newadwebhook"] = {
        ["title"] = "📢 New Advertisment from **{senderFullname}** ({senderName} **{senderId}**)!",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["newtransactionwebhook"] = {
        ["title"] = "💸 **New transaction**",
        ["description"] = "From player **{senderName}** [**{senderId}**] to **{receiverName}** [**{receiverId}**]\nTransaction reason: **{reason}**\nAmount: **{amount} €**",
        ["footer"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version")
    },
    ["twitterresetmail"] = {
        ["senderAddress"] = "noreply@twitter.com",
        ["senderName"] = "Twitter",
        ["senderPhoto"] = "media/icons/twitter.png",
        ["subject"] = "Hesap sıfırlama",
        ["content"] = "Merhaba,<br><br>Çalınmış hesabının bilgilerini bulduk! Hesabının şifresini sıfırlaman için gerekli olan kod burada!<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. Tüm hakları saklıdır.</div>"
    }
}