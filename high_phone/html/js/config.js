Config = {};
Locales = {};
// Do not touch above code!
Config.Language = "en"

Config.TimeUpdateInterval = 1000 // In miliseconds
Config.TimeType = "real" // Change to "in-game" if you want in-game time displayed on the phone.
Config.TimeFormat = 1 // Put 1 for 12 hour time format. 2 for 24 hour time format.
Config.DateFormat = "%d-%m-%y" // Date format, %y is year, %m is month, %d is day.
Config.CallingTime = 30 // How much time to dial until the call self cancels.
Config.SaveUploadedPhotos = true // Save uploaded photos to the database or not? [Non-uploaded photos will not be saved either way!]
Config.OffNotificationPosition = "bottom-right" // The position of big notifications when the phone is closed. Available: top-right, top-left, bottom-right, bottom-left
Config.MinAudioSyncVolume = 0.15 // [MAX 1.0] Minimum volume to sync the sound with others [not worth syncing if the sounds are turned off, useless stress on the server's performance]

// Dark chat app
Config.DarkMemberLimit = 1000 // A limit for members able to join the group. [Can be set up in the group creation screen]

// Bank app
Config.Currency = "$" // Currency symbol used in bank app, etc.
Config.CurrencyPosition = 2 // Put 1 to put the currency symbol in the beginning, and put 2 to put the currency symbol in the end
Config.BankPurposeRequired = true // Make purpose optional or necessary? If set to false then its optional.

// Camera app
Config.EnableImageAirdrop = true // Enable airdropping [sharing] images to near players?
Config.AirdropImageCooldown = 2000 // in ms, 1 second = 1000 ms

// Contacts app
Config.ShareContactCooldown = 2000 // in ms, 1 second = 1000 ms

// Messages app
Config.LocationCooldown = 2000 // in ms, 1 second = 1000 ms
Config.AttachmentLimit = 2 // Attachments in messages limit
Config.MaxGroupMembers = 10 // Max contacts that can be added into a group

// Phone app - dialing screen configuration
Config.AutoSymbol = true // Automatically put a symbol to format the phone number or not?
Config.Symbol = "-" // Dash in this case is used to format phone numbers. You can change the number format in sv_config.lua
Config.SymbolPosition = 3 // After which number should the dash be put in the dialing screen?
// Config.SymbolPosition = [3, 5, 6] // Example array symbol positions. [After which numbers should the dash be put in the dialing screen?] Remove the // if you want to use multiple numbers for symbols.

// Twitter app
Config.TwitterMinNicknameLength = 6; // Minimum character amount for the nickname.
Config.TwitterMinPasswordLength = 6; // Minimum character amount for the password.

// Mail app
Config.RecipientMailAddressRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+$/; // Allowed to use characters and the format of an email address, change only if you know what you're doing.
Config.MailAddressRegex = /^[a-zA-Z0-9._-]+$/g; // Allowed to use characters in an email address, change only if you know what you're doing.
Config.MailMinNameLength = 6; // Minimum character amount for the name.
Config.MailMinPasswordLength = 6; // Minimum character amount for the password.

// Enable editing/deleting/reporting ads/tweets?
Config.EditingAds = true;
Config.DeletingAds = true;
Config.DeletingTweets = true;
Config.ReportingTweets = true;

// Enabled screens on bank app
Config.BankScreens = { // Do not change index names, only the values.
    Request: true, // Money request screen
    Invoices: true, // Invoices screen [money requests show up there too]
    Transfer: true // Money transfer screen
}

// Enable HTML code in messages/posts/ads?
Config.EnableHTMLDarkchat = false;
Config.EnableHTMLMessages = false;
Config.EnableHTMLTweets = false;
Config.EnableHTMLAds = false;

Config.DefaultImageSrc = 'media/default.png'; // Default unknown contact image/twitter default avatar.
Config.Sounds = {
    Folder: "media/sounds/", // All sounds can either be an MP3, OGG, WAV, AAC or other Howler.JS supported audio format.
    // Just change to "" if you don't want any sounds for that particular part
    NewTweet: "twitter.ogg", // File name with the format
    NewMessage: "notification.ogg", // File name with the format
    NewMail: "notification.ogg", // File name with the format
    NewDarkMessage: "notification.ogg", // File name with the format
    NewAd: "notification.ogg", // File name with the format
    Photo: "picture.ogg", // File name with the format
    Calling: "dialing.ogg" // File name with the format
}
Config.Ringtones = {
    "default": { // Do not rename the default index
        src: "media/sounds/ringtone.ogg", // File source/URL
        name: "Varsayılan", // Song title
        author: "iPhone" // Song author,
    },
    "marimba": {
        src: "media/sounds/marimba.ogg", // File source/URL
        name: "Marimba", // Song title
        author: "iPhone" // Song author
    }
}
Config.Backgrounds = [
    {light: "media/bg.png", dark: "media/darkbg.png"},
    {light: "https://i.imgur.com/4UGj1bn.jpg", dark: "https://i.imgur.com/D0hmRFn.jpg"},
    {light: "https://i.imgur.com/6qrvClJ.jpg", dark: "https://i.imgur.com/efkOcHw.jpg"},
    {light: "https://i.imgur.com/Zoi3eqH.jpg", dark: "https://i.imgur.com/alel8lS.jpg"},
    {light: "https://i.imgur.com/gv4mK4f.jpg", dark: "https://i.imgur.com/jAvHMiY.jpg"}
]
Config.DefaultBackground = "media/bg.png" // Either link or directory of the background
Config.DefaultLockbackground = "media/bg.png" // Either link or directory of the background
Config.ImageUploadingType = "DiscordWebhooks" // Set to "DiscordWebhooks" if you want to use discord's webhook image uploading.
Config.ImageUploading = { // Do not change index names, only the values.
    Imgur: {
        Url: "https://api.imgur.com/3/image", // Change this only if you want to change the image uploading website, if you change this you might need to change the field and headers.
        Field: "image", // Field to send the image binary in.
        // Do not change these above if you don't know what you're doing, just change the Client-ID below.
        Headers: {"Authorization": "Client-ID bfa6bb1b5d07882"} // A tutorial how to find the ID can be found in our phone documentation! This is needed to be able to upload images from phone's gallery to Imgur.
    }, 
    DiscordWebhooks: {
        Url: "https://discord.com/api/webhooks/1002245919896502413/n4BIPy9PNqUXMhUdXjNrQSZIrviohpYlNOw3_V2SaPwWKhyvRMHFoBidb2yrsoLoLzww", // Change this to your own discord webhook link.
        Content: "Image uploaded **in-game** by **{0}** [**{1}**]" // {0} is the player name, {1} is the player ID
    }
}
Config.Notifications = {
    NewMessage: {length: 2000}, // in ms, 1 second = 1000 ms
    NewMail: {length: 2000}, // in ms, 1 second = 1000 ms
    NewDarkMessage: {length: 2000}, // in ms, 1 second = 1000 ms
    NewTweet: {length: 2000}, // in ms, 1 second = 1000 ms
    NewTweetReply: {length: 2000}, // in ms, 1 second = 1000 ms
    NewAd: {length: 2000}, // in ms, 1 second = 1000 ms
    MissedCall: {length: 2000}, // in ms, 1 second = 1000 ms
    Error: {length: 2000}, // in ms, 1 second = 1000 ms
    Success: {length: 2000}, // in ms, 1 second = 1000 ms
}
Config.DefaultSettings = {
    volume: 100, // Default volume, 0-100
    brightness: 100, // Default brightness, 0-100
    size: 50, // Default size, 0-100
    airplane_mode: false, // false - turned off by default, true - turned on by default.
    anonymous_calls: false, // false - turned off by default, true - turned on by default.
    airdrop: true, // false - turned off by default, true - turned on by default.
    group_messaging: true, // false - turned off by default, true - turned on by default.
    darkmode: false, // false - turned off by default, true - turned on by default.
}
Config.SystemNotifications = {
    icon: "fas fa-cog", // Notification icon
    color: "#fff" // Notification icon color
}

/* YOU CAN TRANSLATE LABELS, CHANGE ICONS, COLORS, AND ALL OTHER THINGS OF HOME SCREEN APPS RIGHT HERE!
   ONLY 4 OR LESS APPLICATIONS ON THE BOTTOM IS RECOMMENDED, MORE THAN THAT WILL/MIGHT CAUSE VISUAL BUGS!
   !! DO NOT CHANGE THE APPLICATION NAMES, IF YOU DO IT WILL BREAK MANY FUNCTIONS, POSSIBLY MAKING THE SCRIPT UNUSABLE UNTIL YOU CHANGE IT BACK ONLY CHANGE THE LABELS */
Config.Applications = {
    "Phone": {
        label: "Phone", // App label, name used in notifications/shown on the home screen, etc.
        icon: "fas fa-phone-alt", // A fontawesome icon name.
        icon_color: "#fff", // Color of the fontawesome icon.
        icon_image: "", // You can put an image name that is in media/icons folder.
        background: ["#67ff81", "#01b41f"], // This can either be an array with two items ["color1", "color2"] or just a string "color", if its an array it'll be a gradient.
        bottom: true, // Put the app to the bottom box of the screen, set false to keep it on the home screen top.
        downloadable: false, // Add the app to home screen automatically and hide it from app store, set false to put it in app store and to not install this app automatically.
        notifications: {
            icon: "fas fa-phone-alt", // Notification icon
            color: "#fff" // Notification icon color
        }
    },
    "Messages": {
        label: "Mesajlar",
        icon: "fas fa-comment",
        icon_color: "#fff",
        icon_image: "", 
        background: ["#67ff81", "#01b41f"],
        bottom: true,
        downloadable: false,
        notifications: {
            icon: "fas fa-comment",
            color: "#fff"
        }
    },
    "Contacts": {
        label: "Kişiler",
        icon: "fas fa-user-friends",
        icon_color: "#000",
        icon_image: "contacts.png", 
        background: ["#dbdbdb", "#999999"],
        bottom: true,
        downloadable: false,
        notifications: {
            icon: "fas fa-address-book",
            color: "#fff"
        }
    },
    "Settings": {
        label: "Ayarlar",
        icon: "fas fa-cog",
        icon_color: "#fff",
        icon_image: "settings.png", 
        background: "#4a4a4a",
        bottom: true,
        downloadable: false,
        notifications: {
            icon: "fas fa-cog",
            color: "#fff"
        }
    },
    "Twitter": {
        label: "Twitter",
        description: "Canlı haberler, spor ve sohbet",
        icon: "fab fa-twitter",
        icon_color: "#fff",
        icon_image: "",
        background: ["#24a5f0", "#1d87c4"],
        bottom: false,
        downloadable: true,
        downloadTime: 5000, // in miliseconds, 1000 ms = 1 second
        category: "social",
        notifications: {
            icon: "fab fa-twitter",
            color: "#22aef0"
        }
    },
    "Bank": {
        label: "Banka",
        icon: "fas fa-university",
        icon_color: "#fff",
        icon_image: "", 
        background: "rgba(151, 197, 229)",
        bottom: false,
        downloadable: false,
        notifications: {
            icon: "fas fa-university",
            color: "#4194D0"
        }
    },
    "Appstore": {
        label: "App Store",
        icon: "fab fa-app-store",
        icon_color: "#fff",
        icon_image: "", 
        background: ["#1ac7fb", "#1d71f2"],
        bottom: false,
        downloadable: false,
        notifications: {
            icon: "fab fa-app-store-ios",
            color: "#fff"
        }
    },
    "Mail": {
        label: "Mail",
        description: "Herkese posta gönder!",
        icon: "fas fa-envelope",
        icon_color: "#fff",
        icon_image: "", 
        background: ["#388bff", "#4fc1ff"],
        bottom: false,
        downloadable: true,
        downloadTime: 2000, // in miliseconds, 1000 ms = 1 second
        category: "",
        notifications: {
            icon: "fas fa-envelope",
            color: "#ffb83b"
        }
    },
    "Ads": {
        label: "İlan Merkezi",
        description: "İş ve bireysel ilanlar",
        icon: "fas fa-ad",
        icon_color: "#edce60",
        icon_image: "", 
        background: "#fff",
        bottom: false,
        downloadable: true,
        downloadTime: 3000, // in miliseconds, 1000 ms = 1 second
        category: "",
        notifications: {
            icon: "fas fa-ad",
            color: "#edce60"
        }
    },
    "Gallery": {
        label: "Galeri",
        icon: "",
        icon_color: "#000",
        icon_image: "photos.png", 
        background: ["#dedede", "#919191"],
        bottom: false,
        downloadable: false,
        notifications: {
            icon: "fas fa-image",
            color: "#fff"
        }
    },
    "Camera": {
        label: "Kamera",
        icon: "fas fa-camera",
        icon_color: "#2a2a2a",
        icon_image: "", 
        background: ["#dedede", "#919191"],
        bottom: false,
        downloadable: false,
        notifications: {
            icon: "fas fa-camera",
            color: "#fff"
        }
    },
    "Notes": {
        label: "Notlar",
        icon: "fas fa-pen",
        icon_color: "#000",
        icon_image: "notes.png",
        background: "#fff",
        bottom: false,
        downloadable: false,
        notifications: {
            icon: "fas fa-pen",
            color: "#fff"
        }
    },
    "Darkchat": {
        label: "Dark Chat",
        description: "Anonim sohbet grupları",
        icon: "fas fa-user-secret",
        icon_color: "#f1f1f1",
        icon_image: "",
        icon_size: "1.1vw",
        background: "#424242",
        bottom: false,
        downloadable: true,
        downloadTime: 3000, // in miliseconds, 1000 ms = 1 second
        category: "",
        notifications: {
            icon: "fas fa-user-secret",
            color: "#7221da"
        }
    },
    "Garage": {
        label: "Garaj",
        description: "Vale ve garaj bilgisi",
        icon: "fas fa-car",
        icon_color: "#000",
        icon_image: "garages.png",
        background: "#fff",
        bottom: false,
        downloadable: true,
        downloadTime: 3000, // in miliseconds, 1000 ms = 1 second
        notifications: {
            icon: "fas fa-car",
            color: "#fff"
        }
    },
}

// App store configuration
Config.AppstoreFeaturedApp = "Twitter"; // App index name from Config.Applications
Config.AppstoreCategories = {
    "default": { // Do not change this category index name, keep it default
        label: "Tüm Uygulamalar",
        default: true,
    },
    "social": {
        label: "Sosyal",
        default: false,
    }
}