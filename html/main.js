function dragElement(_0x372ab4, _0x17e2b4) {
  var _0x1a35e2 = 0,
    _0x2855bd = 0,
    _0x5cfee2 = 0,
    _0x55cb37 = 0,
    _0x3bc765 = 0
  _0x372ab4
    ? (_0x372ab4.onmousedown = _0xd183e8)
    : (_0x372ab4.onmousedown = _0xd183e8)
  function _0xd183e8(_0x1e6830) {
    _0x1e6830 = _0x1e6830 || window.event
    _0x1e6830.preventDefault()
    _0x3bc765 = (ESX.Phone.settings.size.value + 50) / 100
    _0x1a35e2 = _0x1e6830.clientX - _0x17e2b4.getBoundingClientRect().left
    _0x2855bd = _0x1e6830.clientY - _0x17e2b4.getBoundingClientRect().top
    _0x5cfee2 = _0x17e2b4.getBoundingClientRect().width * _0x3bc765
    _0x55cb37 = _0x17e2b4.getBoundingClientRect().height * _0x3bc765
    scaling = 1 / _0x3bc765
    lastPosX = _0x1e6830.clientX - _0x5cfee2 - (_0x1a35e2 - _0x5cfee2)
    lastPosY = _0x1e6830.clientY - _0x55cb37 - (_0x2855bd - _0x55cb37)
    document.onmouseup = _0x9bce95
    document.onmousemove = _0x313a44
  }
  function _0x313a44(_0x21a3d3) {
    if (!ESX.Phone.open) {
      return
    }
    _0x21a3d3 = _0x21a3d3 || window.event
    _0x21a3d3.preventDefault()
    _0x17e2b4.style.transition = 'none'
    let _0x4655e6 =
      _0x21a3d3.clientX - _0x5cfee2 - (_0x1a35e2 - _0x5cfee2) - lastPosX,
      _0x18abb7 =
        _0x21a3d3.clientY - _0x55cb37 - (_0x2855bd - _0x55cb37) - lastPosY
    let _0x26e4b2 = lastPosY + _0x18abb7 * scaling,
      _0x105220 = lastPosX + _0x4655e6 * scaling
    _0x17e2b4.style.bottom = ''
    _0x17e2b4.style.right = ''
    _0x17e2b4.style.top = _0x26e4b2 + 'px'
    _0x17e2b4.style.left = _0x105220 + 'px'
  }
  function _0x9bce95() {
    document.onmouseup = null
    document.onmousemove = null
    let _0x31a84c =
      window.innerWidth -
      _0x17e2b4.offsetLeft * _0x3bc765 -
      _0x17e2b4.offsetWidth * _0x3bc765,
      _0x4e98c2 =
        window.innerHeight -
        _0x17e2b4.offsetTop * _0x3bc765 -
        _0x17e2b4.offsetHeight * _0x3bc765
    _0x17e2b4.style.bottom = (_0x4e98c2 / window.innerHeight) * 100 + '%'
    _0x17e2b4.style.right = (_0x31a84c / window.innerWidth) * 100 + '%'
    _0x17e2b4.style.top = ''
    _0x17e2b4.style.left = ''
    const _0x403741 = {
      bottom: _0x17e2b4.style.bottom,
      right: _0x17e2b4.style.right,
    }
    ESX.Phone.settings.position.value = _0x403741
    updateSettingsThisTime = true
    setTimeout(() => {
      _0x17e2b4.style.transition = ''
    }, 0)
  }
}
ESX = {}
ESX.Phone = {}
ESX.Phone.functions = {}
ESX.Phone.resourceName = "high_phone"
ESX.Phone.playerId = 0
ESX.Phone.playerName = ''
ESX.Phone.number = ''
ESX.Phone.identifier = ''
ESX.Phone.fullname = ''
ESX.Phone.locked = true
ESX.Phone.frozen = false
ESX.Phone.hasPhone = false
ESX.Phone.currentApp = ''
ESX.Phone.currentLockApp = ''
ESX.Phone.twitterLogged = false
ESX.Phone.twitterData = {}
ESX.Phone.appsLoaded = false
ESX.Phone.currentDarkGroup = {}
ESX.Phone.darkchatData = {}
ESX.Phone.darkchatGroups = []
ESX.Phone.frontCamera = false
ESX.Phone.currentCameraMode = 'photo'
ESX.Phone.flashlight = false
ESX.Phone.currentCard = ''
ESX.Phone.open = false
ESX.Phone.micMuted = false
ESX.Phone.downloading = {}
ESX.Phone.ringtones = {}
ESX.Phone.playingSounds = {}
ESX.Phone.calls = []
ESX.Phone.mailData = {}
ESX.Phone.mail = []
ESX.Phone.vehicles = []
ESX.Phone.currentVeh = {}
ESX.Phone.currentMailCategory = 'inbox'
ESX.Phone.bankData = {}
ESX.Phone.notes = []
ESX.Phone.currentNote = {}
ESX.Phone.invoices = []
ESX.Phone.moneyRequests = []
ESX.Phone.currentSettingsScreen = ''
ESX.Phone.currentCallCategory = 'all'
ESX.Phone.currentAppstoreCategory = 'default'
ESX.Phone.adsCategories = {}
ESX.Phone.currentAdsCategory = ''
ESX.Phone.incomingCalls = {}
ESX.Phone.jobIncomingCalls = {}
ESX.Phone.currentCall = {}
ESX.Phone.currentMailConversation = {}
ESX.Phone.currentChat = {}
ESX.Phone.currentContact = {}
ESX.Phone.currentNotification = ''
ESX.Phone.currentOffNotification = ''
ESX.Phone.currentImage = 0
ESX.Phone.gallery = []
ESX.Phone.ads = []
ESX.Phone.tweets = []
ESX.Phone.chats = []
ESX.Phone.contacts = []
const _0x55d935 = {}
_0x55d935.type = 'slider'
_0x55d935.value = Config.DefaultSettings.volume
const _0x1668e3 = {}
_0x1668e3.type = 'checkbox'
_0x1668e3.value = Config.DefaultSettings.airplane_mode
const _0x32bc31 = {}
_0x32bc31.type = 'checkbox'
_0x32bc31.value = Config.DefaultSettings.anonymous_calls
const _0x2bdabe = {}
_0x2bdabe.type = 'checkbox'
_0x2bdabe.value = Config.DefaultSettings.airdrop
const _0x16a0cb = {}
_0x16a0cb.type = 'checkbox'
_0x16a0cb.value = Config.DefaultSettings.group_messaging
const _0x2be130 = {}
_0x2be130.type = 'slider'
_0x2be130.value = Config.DefaultSettings.brightness
const _0x5f2c03 = {}
_0x5f2c03.type = 'slider'
_0x5f2c03.value = Config.DefaultSettings.size
const _0x1d89c7 = {}
_0x1d89c7.type = 'invisible'
_0x1d89c7.value = {}
const _0x13e6a9 = {}
_0x13e6a9.type = 'invisible'
_0x13e6a9.value = []
const _0x56292e = {}
_0x56292e.type = 'invisible'
_0x56292e.value = true
const _0x4acdf3 = {}
_0x4acdf3.type = 'invisible'
_0x4acdf3.value = true
const _0xe366f7 = {}
_0xe366f7.type = 'invisible'
_0xe366f7.value = true
const _0xc67e2e = {}
_0xc67e2e.type = 'url'
_0xc67e2e.value = ''
const _0x1b902a = {}
_0x1b902a.type = 'url'
_0x1b902a.value = ''
const _0x28d42c = {}
_0x28d42c.type = 'url'
_0x28d42c.value = ''
const _0xe2d988 = {}
_0xe2d988.type = 'checkbox'
_0xe2d988.value = Config.DefaultSettings.darkmode
const _0x1c1673 = {}
_0x1c1673.sounds = _0x55d935
_0x1c1673.airplane = _0x1668e3
_0x1c1673.anonymous = _0x32bc31
_0x1c1673.airdrop = _0x2bdabe
_0x1c1673.group_messaging = _0x16a0cb
_0x1c1673.brightness = _0x2be130
_0x1c1673.size = _0x5f2c03
_0x1c1673.position = _0x1d89c7
_0x1c1673.downloadedapps = _0x13e6a9
_0x1c1673.twtnotifications = _0x56292e
_0x1c1673.mailnotifications = _0x4acdf3
_0x1c1673.adsnotifications = _0xe366f7
_0x1c1673.background = _0xc67e2e
_0x1c1673.lockbackground = _0x1b902a
_0x1c1673.ringtone = _0x28d42c
_0x1c1673.darkmode = _0xe2d988
ESX.Phone.settings = _0x1c1673
ESX.Phone.functions.addButton = function (_0x772aff, _0x3d39dc) {
  $(_0x772aff).on('click', function (_0x18f3f3) {
    _0x18f3f3.preventDefault()
    _0x3d39dc(this, _0x18f3f3)
  })
}
ESX.Phone.functions.addDynamicButton = function (_0x381498, _0x5bc52) {
  $(document).on('click', _0x381498, function (_0x1150c8) {
    _0x1150c8.preventDefault()
    _0x5bc52(this, _0x1150c8)
  })
}
ESX.Phone.functions.smoothTextTransition = function (_0x9bc9e2, _0x3b1587) {
  let _0x421cf8 = document.querySelector(_0x9bc9e2)
  _0x421cf8.style.setProperty('--new-text', '"' + _0x3b1587 + '"')
  setTimeout(() => {
    _0x421cf8.classList.add('transition')
    let _0x1da03b = (_0x382ec3) => {
      if (_0x382ec3.propertyName != 'color') {
        return
      }
      _0x421cf8.removeEventListener('transitionend', _0x1da03b)
      _0x421cf8.innerHTML = _0x3b1587
      _0x421cf8.classList.add('no-transition')
      _0x421cf8.classList.remove('transition')
      setTimeout(() => {
        _0x421cf8.classList.remove('no-transition')
      }, 0)
    }
    _0x421cf8.addEventListener('transitionend', _0x1da03b)
  }, 0)
}
ESX.Phone.functions.copyToClipboard = function (_0x4dfa1d) {
  const _0x387266 = document.querySelector('body')
  const _0x4695c0 = document.createElement('textarea')
  _0x4695c0.setAttribute('data-disabled', 'true')
  _0x387266.appendChild(_0x4695c0)
  _0x4695c0.value = _0x4dfa1d
  _0x4695c0.select()
  document.execCommand('copy')
  _0x4695c0.blur()
  _0x387266.removeChild(_0x4695c0)
}
$(document).on(
  'focus',
  'input:not([type="range"]):not([type="checkbox"]), textarea:not([data-disabled="true"])',
  function (_0x1c017a) {
    const _0x2fb6e1 = { disableInput: true }
    $.post(
      'http://' + ESX.Phone.resourceName + '/inputFocus',
      JSON.stringify(_0x2fb6e1)
    )
  }
)
$(document).on(
  'focusout',
  'input:not([type="range"]):not([type="checkbox"]), textarea:not([data-disabled="true"])',
  function (_0x58e8ba) {
    const _0x2ad844 = { disableInput: false }
    $.post(
      'http://' + ESX.Phone.resourceName + '/inputFocus',
      JSON.stringify(_0x2ad844)
    )
  }
)
var currentContext
ESX.Phone.functions.addContextMenu = function (
  _0x3fea7e,
  _0x3f9449,
  _0x1cb49c
) {
  $(_0x3fea7e).contextmenu(function (_0x17ffc2) {
    contextFunction(this, _0x17ffc2, _0x3fea7e, _0x3f9449, _0x1cb49c)
  })
}
function contextFunction(
  _0x560db3,
  _0x2eff3b,
  _0x295e82,
  _0x1550c1,
  _0xf460bd
) {
  _0x2eff3b.preventDefault()
  _0x2eff3b.stopPropagation()
  currentContext = _0x295e82
  var _0x1493d4 = document.querySelector('.screen'),
    _0x47a8c0 = $('#contextmenu')
  _0x47a8c0.html('').attr('class', _0x1550c1 ? 'dark' : '')
  let _0x2c50a1 = (ESX.Phone.settings.size.value + 50) / 100,
    _0x3321af = $('body > .main').offset()
  var _0x55a7ad =
    ((_0x2eff3b.clientX - _0x3321af.left * _0x2c50a1) /
      (_0x1493d4.getBoundingClientRect().width * _0x2c50a1)) *
    100,
    _0x878219 =
      ((_0x2eff3b.clientY - _0x3321af.top * _0x2c50a1) /
        (_0x1493d4.getBoundingClientRect().height * _0x2c50a1)) *
      100 -
      2.5
  if (_0x55a7ad > 65) {
    _0x47a8c0.addClass('right')
    setTimeout(() => {
      let _0x57ab65 = (_0x47a8c0.width() / $('.screen').width()) * 100
      _0x55a7ad -= _0x57ab65 + 11
      if (_0x878219 > 80) {
        let _0xe447e1 = (_0x47a8c0.height() / $('.screen').height()) * 100
        _0x878219 -= _0xe447e1 + 7
      }
      _0x47a8c0
        .css({
          top: _0x878219 + '%',
          left: _0x55a7ad + '%',
        })
        .fadeIn(150)
    }, 0)
  } else {
    if (_0x47a8c0.hasClass('right')) {
      _0x47a8c0.removeClass('right')
    }
    setTimeout(() => {
      _0x55a7ad -= 14
      if (_0x878219 > 80) {
        let _0x35a840 = (_0x47a8c0.height() / $('.screen').height()) * 100
        _0x878219 -= _0x35a840 + 7
      }
      _0x47a8c0
        .css({
          top: _0x878219 + '%',
          left: _0x55a7ad + '%',
        })
        .fadeIn(150)
    }, 0)
  }
  return _0xf460bd(_0x560db3), false
}
function contextElementFunction(
  _0x3378a4,
  _0x46616a,
  _0x2c4967,
  _0x268dbf,
  _0x1f21a0
) {
  _0x46616a.preventDefault()
  _0x46616a.stopPropagation()
  if (currentContext == _0x2c4967) {
    $('#contextmenu').fadeOut(150)
    currentContext = null
    return
  }
  currentContext = _0x2c4967
  var _0x9bbbf8 = $('#contextmenu'),
    _0x1a3c29 = document.querySelector('.screen')
  _0x9bbbf8.html('').attr('class', _0x268dbf ? 'dark none' : 'none')
  var _0x4dd5ea =
    (($(_0x3378a4).offset().left - $('body > .main').offset().left) /
      _0x1a3c29.getBoundingClientRect().width) *
    100,
    _0x4c6035 =
      (($(_0x3378a4).offset().top - $('body > .main').offset().top) /
        _0x1a3c29.getBoundingClientRect().height) *
      100
  if (_0x4dd5ea > 65) {
    _0x9bbbf8.addClass('right')
    setTimeout(() => {
      let _0x13b735 = (_0x9bbbf8.width() / $('.screen').width()) * 100
      _0x4dd5ea -= _0x13b735 + 8
      if (_0x4c6035 > 80) {
        let _0x2d89e6 = (_0x9bbbf8.height() / $('.screen').height()) * 100
        _0x4c6035 -= _0x2d89e6 + 7
      }
      _0x9bbbf8
        .css({
          top: _0x4c6035 + '%',
          left: _0x4dd5ea + '%',
        })
        .fadeIn(150)
    }, 0)
  } else {
    if (_0x9bbbf8.hasClass('right')) {
      _0x9bbbf8.removeClass('right')
    }
    setTimeout(() => {
      _0x4dd5ea -= 14
      if (_0x4c6035 > 80) {
        let _0x3e25d6 = (_0x9bbbf8.height() / $('.screen').height()) * 100
        _0x4c6035 -= _0x3e25d6 + 7
      }
      _0x9bbbf8
        .css({
          top: _0x4c6035 + '%',
          left: _0x4dd5ea + '%',
        })
        .fadeIn(150)
    }, 0)
  }
  return _0x1f21a0(_0x3378a4), false
}
ESX.Phone.functions.addDynamicContextMenu = function (
  _0x45672f,
  _0x315679,
  _0x30ac24
) {
  $(document).on('contextmenu', _0x45672f, function (_0x222485) {
    contextFunction(this, _0x222485, _0x45672f, _0x315679, _0x30ac24)
  })
}
var contextCallbacks = {}
ESX.Phone.functions.addButtonToContext = function (
  _0x37f5a1,
  _0x5b7bb1,
  _0x667ba0,
  _0x369485
) {
  let _0x2aec50 = Math.floor(Math.random() * 10000)
  contextCallbacks[_0x2aec50] = _0x369485
  $('#contextmenu').append(
    '<div class="contextbutton ' +
    (_0x667ba0 ? 'hover-' + _0x667ba0 : '') +
    '" data-id="' +
    _0x2aec50 +
    '">\n        <i class="' +
    (_0x37f5a1 ? _0x37f5a1 : '') +
    ' icon"></i>\n        <p class="title">' +
    _0x5b7bb1 +
    '</p>\n    </div>'
  )
}
ESX.Phone.functions.addDynamicButton(
  '#contextmenu .contextbutton',
  function (_0x436e0b) {
    let _0x42de44 = $(_0x436e0b).data('id')
    contextCallbacks[_0x42de44]()
    contextCallbacks = {}
  }
)
$(document).click(function (_0x4a809f) {
  $('#contextmenu').fadeOut(150)
  currentContext = null
})
ESX.Phone.functions.addDeleteSlider = function (_0x517ee4, _0x1bb45c) {
  $(document).on('mousedown', _0x517ee4, function (_0x47052a) {
    _0x47052a = _0x47052a || window.event
    let _0x5b47bb = this,
      _0x1bd719 = $(_0x5b47bb)
    _0x47052a.preventDefault()
    let _0x1b9cb6 = 1 / ((ESX.Phone.settings.size.value + 50) / 100)
    let _0x1853b8 = _0x1bd719.width(),
      _0x33ec02 = _0x1bd719.children('.delete').width(),
      _0xd7299d = _0x47052a.clientX + _0x33ec02
    document.onmouseup = _0x519962
    document.onmousemove = _0x364f77
    _0x1bd719.children('.delete').addClass('no-transition')
    function _0x364f77(_0x473db2) {
      _0x473db2 = _0x473db2 || window.event
      _0x473db2.preventDefault()
      pos1 = _0xd7299d - _0x473db2.clientX
      if (pos1 * _0x1b9cb6 < _0x1853b8) {
        _0x1bd719.children('.delete').css('width', pos1 * _0x1b9cb6 + 'px')
      } else {
        _0x1bd719.children('.delete').css('width', _0x1853b8 + 'px')
      }
    }
    function _0x519962() {
      _0x1bd719.children('.delete').removeClass('no-transition')
      setTimeout(() => {
        document.onmouseup = null
        document.onmousemove = null
        let _0x3cf1fc =
          (_0x1bd719.children('.delete').width() /
            document.querySelector('.screen').clientWidth) *
          100
        if (_0x3cf1fc > 30 && _0x3cf1fc < 70) {
          _0x1bd719.children('.delete').css('width', '30%')
        } else {
          _0x3cf1fc < 30
            ? _0x1bd719.children('.delete').css('width', '')
            : (_0x1bd719
              .children('.delete')
              .addClass('faster')
              .css('width', '100%'),
              _0x1bd719.css('height', '0%'),
              _0x1bb45c(_0x5b47bb))
        }
      }, 0)
    }
  })
}
dragElement(
  document.getElementsByClassName('dragger')[0],
  document.getElementsByClassName('main')[0]
)
ESX.Phone.functions.hasPhone = function () {
  return new Promise((_0x415b2e) => {
    $.post(
      'http://' + ESX.Phone.resourceName + '/hasPhone',
      JSON.stringify({}),
      function (_0x5da47a) {
        _0x415b2e(_0x5da47a)
      }
    ).fail(function () {
      _0x415b2e(false)
    })
  })
}
ESX.Phone.functions.addImageSelector = function (
  _0x21fc3c,
  _0x5d5e1b,
  _0x45a321
) {
  ESX.Phone.functions.addDynamicButton(
    _0x21fc3c,
    function (_0x5cdaee, _0x3e19b6) {
      contextElementFunction(
        _0x5cdaee,
        _0x3e19b6,
        _0x5cdaee,
        _0x45a321,
        function () {
          ESX.Phone.functions.addButtonToContext(
            'far fa-camera',
            Locales[Config.Language].take_photo,
            false,
            function () {
              ESX.Phone.functions.openTakePhoto(function (_0x1431ac) {
                if (typeof _0x5d5e1b != 'function') {
                  $(_0x5d5e1b).val(_0x1431ac)
                } else {
                  _0x5d5e1b(_0x1431ac)
                }
              })
            }
          ),
            ESX.Phone.functions.addButtonToContext(
              'far fa-image',
              Locales[Config.Language].select_gallery,
              false,
              function () {
                ESX.Phone.functions.openPhotoSelector(function (_0x7e29e5) {
                  if (typeof _0x5d5e1b != 'function') {
                    $(_0x5d5e1b).val(_0x7e29e5)
                  } else {
                    _0x5d5e1b(_0x7e29e5)
                  }
                })
              }
            )
        }
      )
    }
  )
}
ESX.Phone.functions.getSetting = function (_0x531220) {
  return ESX.Phone.settings[_0x531220].value
}
ESX.Phone.functions.hasApp = function (_0x55715d) {
  let _0x362b0c = Config.Applications[_0x55715d].downloadable
    ? ESX.Phone.settings.downloadedapps.value.find(
      (_0x5f2729) => _0x55715d == _0x5f2729
    )
    : true
  return _0x362b0c
}
ESX.Phone.functions.hideApps = function () {
  $('.bottombox').css('transform', '')
  const _0x19297e = {
    opacity: '',
    transform: '',
  }
  $('.mainapps').css(_0x19297e)
}
ESX.Phone.functions.showApps = function (_0x63313a) {
  ESX.Phone.currentApp == '' && !_0x63313a
    ? ($('.mainapps').css({
      opacity: '1.0',
      transform: 'scale3d(1.0, 1.0, 1)',
    }),
      $('.bottombox').css('transform', 'translate3d(0, 0, 0)'),
      setTimeout(() => {
        $('.bottombox').css('backdrop-filter', 'blur(1vw)')
      }, 250))
    : ($('.mainapps').addClass('no-transition').css({
      opacity: '1.0',
      transform: 'scale3d(1.0, 1.0, 1)',
    }),
      $('.bottombox').addClass('no-transition').css({
        transform: 'translate3d(0, 0, 0)',
        'backdrop-filter': 'blur(1vw)',
      }),
      setTimeout(() => {
        $('.mainapps, .bottombox').removeClass('no-transition')
      }, 5))
}
ESX.Phone.functions.setupApps = function () {
  if (ESX.Phone.appsLoaded) {
    return
  }
  ESX.Phone.appsLoaded = true
  $('.bottomapps').html('')
  $('.mainapps').html('')
  for (const _0xdacec0 in Config.Applications) {
    let _0x47bee4 = Config.Applications[_0xdacec0]
    if (typeof _0x47bee4.notifCount != 'number') {
      _0x47bee4.notifCount = 0
    }
    if (_0x47bee4.downloadable) {
      continue
    }
    let _0xa35ccb = '',
      _0x21a494 =
        typeof _0x47bee4.background == 'object'
          ? 'background: linear-gradient(to bottom, ' +
          _0x47bee4.background[0] +
          ', ' +
          _0x47bee4.background[1] +
          ')'
          : 'background: ' + _0x47bee4.background,
      _0x56327f = _0x47bee4.notifCount > 0 ? _0x47bee4.notifCount : ''
    if (_0x47bee4.bottom) {
      if (_0x47bee4.icon_image == '') {
        _0xa35ccb =
          '<div class="app" data-app="' +
          _0xdacec0 +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="' +
          _0x21a494 +
          '"><i class="' +
          _0x47bee4.icon +
          '" style="color: ' +
          _0x47bee4.icon_color +
          ';' +
          (_0x47bee4.icon_size ? 'font-size: ' + _0x47bee4.icon_size : '') +
          '"></i></div></div><div class="notifications"><span>' +
          _0x56327f +
          '</span></div></div></div>'
      } else {
        _0xa35ccb =
          '<div class="app" data-app="' +
          _0xdacec0 +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="background: url(media/icons/' +
          _0x47bee4.icon_image +
          ');"></div></div><div class="notifications"><span>' +
          _0x56327f +
          '</span></div></div></div>'
      }
      $('.bottomapps').append(_0xa35ccb)
      $('#' + _0xdacec0)
        .detach()
        .appendTo(
          '.home .app[data-app="' + _0xdacec0 + '"] > .app-wrapper > .inner'
        )
    } else {
      if (_0x47bee4.icon_image == '') {
        _0xa35ccb =
          '<div class="app" data-app="' +
          _0xdacec0 +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="' +
          _0x21a494 +
          '"><i class="' +
          _0x47bee4.icon +
          '" style="color: ' +
          _0x47bee4.icon_color +
          ';' +
          (_0x47bee4.icon_size ? 'font-size: ' + _0x47bee4.icon_size : '') +
          '"></i></div></div><div class="notifications"><span>' +
          _0x56327f +
          '</span></div></div><p class="name">' +
          _0x47bee4.label +
          '</p></div>'
      } else {
        _0xa35ccb =
          '<div class="app" data-app="' +
          _0xdacec0 +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="background: url(media/icons/' +
          _0x47bee4.icon_image +
          ');"></div></div><div class="notifications"><span>' +
          _0x56327f +
          '</span></div></div><p class="name">' +
          _0x47bee4.label +
          '</p></div>'
      }
      $('.mainapps').append(_0xa35ccb)
      $('#' + _0xdacec0)
        .detach()
        .appendTo(
          '.home .app[data-app="' + _0xdacec0 + '"] > .app-wrapper > .inner'
        )
    }
  }
  ESX.Phone.settings.downloadedapps.value.forEach((_0x43463a) => {
    let _0x211d77 = Config.Applications[_0x43463a]
    if (typeof _0x211d77.notifCount != 'number') {
      _0x211d77.notifCount = 0
    }
    let _0x5f5a84 = '',
      _0x15ba58 =
        typeof _0x211d77.background == 'object'
          ? 'background: linear-gradient(to bottom, ' +
          _0x211d77.background[0] +
          ', ' +
          _0x211d77.background[1] +
          ')'
          : 'background: ' + _0x211d77.background,
      _0xf0bc89 = _0x211d77.notifCount > 0 ? _0x211d77.notifCount : ''
    if (_0x211d77.bottom) {
      if (_0x211d77.icon_image == '') {
        _0x5f5a84 =
          '<div class="app" data-app="' +
          _0x43463a +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="' +
          _0x15ba58 +
          '"><i class="' +
          _0x211d77.icon +
          '" style="color: ' +
          _0x211d77.icon_color +
          ';' +
          (_0x211d77.icon_size ? 'font-size: ' + _0x211d77.icon_size : '') +
          '"></i></div></div><div class="notifications"><span>' +
          _0xf0bc89 +
          '</span></div></div></div>'
      } else {
        _0x5f5a84 =
          '<div class="app" data-app="' +
          _0x43463a +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="background: url(media/icons/' +
          _0x211d77.icon_image +
          ');"></div></div><div class="notifications"><span>' +
          _0xf0bc89 +
          '</span></div></div></div>'
      }
      $('.bottomapps').append(_0x5f5a84)
      $('#' + _0x43463a)
        .detach()
        .appendTo(
          '.home .app[data-app="' + _0x43463a + '"] > .app-wrapper > .inner'
        )
    } else {
      if (_0x211d77.icon_image == '') {
        _0x5f5a84 =
          '<div class="app" data-app="' +
          _0x43463a +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="' +
          _0x15ba58 +
          '"><i class="' +
          _0x211d77.icon +
          '" style="color: ' +
          _0x211d77.icon_color +
          ';' +
          (_0x211d77.icon_size ? 'font-size: ' + _0x211d77.icon_size : '') +
          '"></i></div></div><div class="notifications"><span>' +
          _0xf0bc89 +
          '</span></div></div><p class="name">' +
          _0x211d77.label +
          '</p></div>'
      } else {
        _0x5f5a84 =
          '<div class="app" data-app="' +
          _0x43463a +
          '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="background: url(media/icons/' +
          _0x211d77.icon_image +
          ');"></div></div><div class="notifications"><span>' +
          _0xf0bc89 +
          '</span></div></div><p class="name">' +
          _0x211d77.label +
          '</p></div>'
      }
      $('.mainapps').append(_0x5f5a84)
      $('#' + _0x43463a)
        .detach()
        .appendTo(
          '.home .app[data-app="' + _0x43463a + '"] > .app-wrapper > .inner'
        )
    }
  })
}
ESX.Phone.functions.addDynamicButton(
  '.app-icon',
  function (_0x5a3c6b, _0x42d126) {
    let _0x7fd3bf = $(_0x5a3c6b).closest('.app').data('app')
    ESX.Phone.functions.openApp(_0x7fd3bf)
  }
)
var currentAirdrop
ESX.Phone.functions.newAirdrop = function (
  _0x417f36,
  _0x1c39fe,
  _0x55285a,
  _0x2e9ad4
) {
  if (currentAirdrop) {
    return
  }
  if (!ESX.Phone.settings.airdrop.value) {
    return
  }
  $('.airdrop').addClass('open')
  currentAirdrop = {
    type: _0x417f36,
    data: JSON.parse(_0x2e9ad4),
  }
  if (_0x417f36 == 'contact') {
    let _0x2697d7 = currentAirdrop.data
    $('.airdrop .description').html(
      Locales[Config.Language].shared_contact.formatText(_0x1c39fe, _0x55285a)
    )
    let _0x39402e = _0x2697d7.name.charAt(0).toUpperCase()
    $('.airdrop .content').html(
      '<div class="contact">\n            <div class="avatar">' +
      _0x39402e +
      '</div>\n            ' +
      (_0x2697d7.photo != ''
        ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
        _0x2697d7.photo +
        '">'
        : '') +
      '\n            <div class="details">\n                <p class="name">' +
      _0x2697d7.name +
      '</p>\n                <p class="number">' +
      _0x2697d7.number +
      '</p>\n            </div>\n        </div>'
    )
  } else {
    _0x417f36 == 'image' &&
      ($('.airdrop .content').html(
        '<img src="' + currentAirdrop.data.image + '" class="image-preview">'
      ),
        $('.airdrop .description').html(
          Locales[Config.Language].shared_image.formatText(_0x1c39fe, _0x55285a)
        ))
  }
}
ESX.Phone.functions.addDynamicButton(
  '.airdrop .image-preview',
  function (_0x6df868) {
    let _0x5246f3 = $(_0x6df868).attr('src')
    ESX.Phone.functions.previewImage(_0x5246f3)
  }
)
ESX.Phone.functions.addDynamicButton(
  '.airdrop .buttons > *',
  function (_0x3bd42d) {
    let _0x52ff3f = $(_0x3bd42d).data('action')
    if (_0x52ff3f == 'decline') {
      ESX.Phone.functions.closeAirdrop()
    } else {
      if (_0x52ff3f == 'accept') {
        if (currentAirdrop.type == 'contact') {
          let _0x275892 = currentAirdrop.data
          if (_0x275892.number == ESX.Phone.number) {
            return (
              ESX.Phone.functions.closeAirdrop(),
              ESX.Phone.functions.sendNotification(
                Config.SystemNotifications.icon,
                Config.SystemNotifications.color,
                Locales[Config.Language].notifications.system,
                '<strong>' +
                Locales[Config.Language].notifications.error +
                '</strong><br>' +
                Locales[Config.Language].notifications
                  .cannotcreatecontactyourself,
                Config.Notifications.Error.length
              )
            )
          }
          if (
            ESX.Phone.functions.getContact(_0x275892.number) !=
            Locales[Config.Language].unknown
          ) {
            return (
              ESX.Phone.functions.closeAirdrop(),
              ESX.Phone.functions.sendNotification(
                Config.SystemNotifications.icon,
                Config.SystemNotifications.color,
                Locales[Config.Language].notifications.system,
                '<strong>' +
                Locales[Config.Language].notifications.error +
                '</strong><br>' +
                Locales[Config.Language].notifications.contactalreadyexists,
                Config.Notifications.Error.length
              )
            )
          }
          ESX.Phone.contacts.push({
            id: -1,
            owner: ESX.Phone.identifier,
            name: _0x275892.name,
            number: _0x275892.number,
            photo: _0x275892.photo,
            tag: _0x275892.tag,
            calls: [],
          })
          let _0x22ff77 = ESX.Phone.contacts.length - 1
          ESX.Phone.functions.updateContacts(ESX.Phone.contacts)
          const _0x5369dc = {
            name: _0x275892.name,
            number: _0x275892.number,
            photo: _0x275892.photo,
            tag: _0x275892.tag,
          }
          $.post(
            'http://' + ESX.Phone.resourceName + '/createContact',
            JSON.stringify(_0x5369dc),
            function (_0x39ad3d) {
              if (ESX.Phone.currentContact.number == _0x275892.number) {
                ESX.Phone.currentContact.id = _0x39ad3d
              }
              ESX.Phone.contacts[_0x22ff77].id = _0x39ad3d
              ESX.Phone.functions.updateContacts(ESX.Phone.contacts)
            }
          )
          ESX.Phone.functions.closeAirdrop()
        } else {
          if (currentAirdrop.type == 'image') {
            ESX.Phone.gallery.push({
              src: currentAirdrop.data.image,
              date: Date.now(),
              url: currentAirdrop.data.image,
            })
            if (Config.SaveUploadedPhotos) {
              $.post(
                'http://' + ESX.Phone.resourceName + '/savePhoto',
                JSON.stringify({
                  url: currentAirdrop.data.image,
                  src: currentAirdrop.data.image,
                  date: Date.now(),
                })
              )
            }
            ESX.Phone.functions.updateGallery()
            ESX.Phone.functions.closeAirdrop()
          }
        }
      }
    }
  }
)
ESX.Phone.functions.closeAirdrop = function () {
  $('.airdrop').addClass('closing')
  setTimeout(() => {
    $('.airdrop').removeClass('closing').removeClass('open')
  }, 200)
  currentAirdrop = undefined
}
ESX.Phone.functions.updateApp = function (_0x5b1276, _0x2d9021) {
  if (_0x2d9021 == 'notifications') {
    let _0x239fac = Config.Applications[_0x5b1276].notifCount,
      _0x493df5 = $(
        '.home .app[data-app="' +
        _0x5b1276 +
        '"] > .app-wrapper > .notifications > span'
      )
    if (_0x493df5.text() == '') {
      $(
        '.home .app[data-app="' +
        _0x5b1276 +
        '"] > .app-wrapper > .notifications'
      ).css('opacity', '0.0')
    }
    _0x239fac > 0
      ? ($(
        '.home .app[data-app="' +
        _0x5b1276 +
        '"] > .app-wrapper > .notifications'
      ).css('width', _0x493df5.width() + 'px'),
        _0x493df5.stop(true, true).fadeOut(150, function () {
          _0x493df5.text(_0x239fac).fadeIn(150)
          $(
            '.home .app[data-app="' +
            _0x5b1276 +
            '"] > .app-wrapper > .notifications'
          )
            .css('width', _0x493df5.width() + 'px')
            .css('opacity', '1.0')
        }))
      : _0x493df5.text('')
  }
}
ESX.Phone.functions.updatePlayerSettings = function (
  _0x402269,
  _0x2482fa,
  _0x330d66,
  _0x588cb5
) {
  ESX.Phone.fullname = _0x402269
  ESX.Phone.playerId = _0x2482fa
  ESX.Phone.playerName = _0x330d66
  ESX.Phone.playerJob = _0x588cb5
  $('#settings-myname').html(_0x402269)
  $('#settings-myinfo').html(
    Locales[Config.Language].playerinfo.formatText(ESX.Phone.number, _0x2482fa)
  )
  let _0x2fbce1 = ''
  _0x402269.split(' ').forEach((_0x4c19fa) => {
    _0x2fbce1 += _0x4c19fa.charAt(0).toUpperCase()
  })
  $('#settings-myletter').html(_0x2fbce1)
}
ESX.Phone.functions.addDynamicButton(
  '.settings .setting.clickable',
  function (_0x51cf99) {
    let _0x52876f = $(_0x51cf99).data('setting')
    $('.settings > .header > .right').fadeIn(150)
    ESX.Phone.currentSettingsScreen = _0x52876f
    let _0x5a9dae = ''
    $('.settings .backgrounds .url-check').hide()
    $('.settings .backgroundlist > *').each(function () {
      $(this).removeClass('active')
    })
    switch (_0x52876f) {
      case 'background':
        $('.settings > .main').css('left', '-100%'),
          $('.settings > .backgrounds').css('right', '0%'),
          $('#lockbackground').hide(),
          $('#background').show(),
          ESX.Phone.functions.smoothTextTransition(
            '.settings > .header .title',
            Locales[Config.Language].html.backgrounds_title
          ),
          (_0x5a9dae = ESX.Phone.settings[_0x52876f].value)
        if (
          Config.Backgrounds.find((_0x1f65b4) => _0x1f65b4.light == _0x5a9dae)
        ) {
          $(
            '.settings .backgroundlist > .bg[data-bg="' + _0x5a9dae + '"]'
          ).addClass('active')
        } else {
          if (
            Config.Backgrounds.find(
              (_0x485473) => _0x485473.light == Config.DefaultBackground
            )
          ) {
            $(
              '.settings .backgroundlist > .bg[data-bg="' +
              Config.DefaultBackground +
              '"]'
            ).addClass('active')
          }
        }
        break
      case 'lockbackground':
        $('.settings > .main').css('left', '-100%'),
          $('.settings > .backgrounds').css('right', '0%'),
          $('#background').hide(),
          $('#lockbackground').show(),
          ESX.Phone.functions.smoothTextTransition(
            '.settings > .header .title',
            Locales[Config.Language].html.backgrounds_title
          ),
          (_0x5a9dae = ESX.Phone.settings[_0x52876f].value)
        if (
          Config.Backgrounds.find((_0x8c1f6a) => _0x8c1f6a.light == _0x5a9dae)
        ) {
          $(
            '.settings .backgroundlist > .bg[data-bg="' + _0x5a9dae + '"]'
          ).addClass('active')
        } else {
          if (
            Config.Backgrounds.find(
              (_0x513cf8) => _0x513cf8.light == Config.DefaultLockbackground
            )
          ) {
            $(
              '.settings .backgroundlist > .bg[data-bg="' +
              Config.DefaultLockbackground +
              '"]'
            ).addClass('active')
          }
        }
        break
      case 'ringtone':
        $('.settings > .main').css('left', '-100%'),
          $('.settings > .ringtones').css('right', '0%'),
          ESX.Phone.functions.smoothTextTransition(
            '.settings > .header .title',
            Locales[Config.Language].html.ringtones_title
          )
        break
    }
  }
)
ESX.Phone.functions.addDynamicButton(
  '.settings .backgroundlist > .bg',
  function (_0x6967d7) {
    let _0xdfef9c = ''
    if (ESX.Phone.currentSettingsScreen == 'background') {
      _0xdfef9c =
        ESX.Phone.settings.background.value != ''
          ? ESX.Phone.settings.background.value
          : Config.DefaultBackground
    } else {
      if (ESX.Phone.currentSettingsScreen == 'lockbackground') {
        _0xdfef9c =
          ESX.Phone.settings.lockbackground.value != ''
            ? ESX.Phone.settings.lockbackground.value
            : Config.DefaultLockbackground
      }
    }
    let _0x16228c = $(_0x6967d7).data('bg')
    if (_0xdfef9c == _0x16228c) {
      return
    }
    if (Config.Backgrounds.find((_0x166b3d) => _0x166b3d.light == _0xdfef9c)) {
      $(
        '.settings .backgroundlist > .bg[data-bg="' + _0xdfef9c + '"]'
      ).removeClass('active')
    }
    $(_0x6967d7).addClass('active')
    ESX.Phone.functions.setSetting(
      ESX.Phone.currentSettingsScreen,
      _0x16228c,
      true,
      'url'
    )
  }
)
ESX.Phone.functions.addButton('#closesetting', function () {
  $('.settings > .header > .right').fadeOut(150)
  ESX.Phone.functions.smoothTextTransition(
    '.settings > .header .title',
    Locales[Config.Language].html.settings_title
  )
  switch (ESX.Phone.currentSettingsScreen) {
    case 'background':
      $('.settings > .main').css('left', '0%'),
        $('.settings > .backgrounds').css('right', '-100%')
      break
    case 'lockbackground':
      $('.settings > .main').css('left', '0%'),
        $('.settings > .backgrounds').css('right', '-100%')
      break
    case 'ringtone':
      $('.settings > .main').css('left', '0%'),
        $('.settings > .ringtones').css('right', '-100%')
      if (currentPlayingRingtone) {
        ESX.Phone.ringtones[currentPlayingRingtone].interval &&
          (clearInterval(ESX.Phone.ringtones[currentPlayingRingtone].interval),
            (ESX.Phone.ringtones[currentPlayingRingtone].interval = undefined),
            $(
              '.ringtone[data-id="' +
              currentPlayingRingtone +
              '"] > .progress > div'
            ).css('width', '0%'))
        $(
          '.ringtone[data-id="' +
          currentPlayingRingtone +
          '"] > .play-pause > *'
        ).attr('class', 'fas fa-play')
        ESX.Phone.ringtones[currentPlayingRingtone].stop()
        currentPlayingRingtone = undefined
        return
      }
      break
  }
})
ESX.Phone.functions.resetSettings = function () {
  $('.settings > .header .title').html(
    Locales[Config.Language].html.settings_title
  )
  $('.settings > .header > .right').hide()
  $('.settings > .main').addClass('no-transition').css('left', '0%')
  $('.settings > .backgrounds').addClass('no-transition').css('right', '-100%')
  $('.settings > .ringtones').addClass('no-transition').css('right', '-100%')
  setTimeout(() => {
    $('.settings > .main').removeClass('no-transition')
    $('.settings > .backgrounds').removeClass('no-transition')
    $('.settings > .ringtones').removeClass('no-transition')
  }, 5)
  ESX.Phone.currentSettingsScreen = ''
}
ESX.Phone.functions.getCurrentBackground = function (_0x4158cf) {
  let _0x107ba3 = Config.Backgrounds.find(
    (_0x5ee089) => _0x5ee089.light == _0x4158cf || _0x5ee089.dark == _0x4158cf
  )
  if (_0x107ba3) {
    if (!ESX.Phone.settings.darkmode.value) {
      return _0x107ba3.light
    }
    return _0x107ba3.dark
  } else {
    return _0x4158cf
  }
}
ESX.Phone.functions.setSetting = function (
  _0x37fefb,
  _0x46196b,
  _0x1b77d2,
  _0x46906c
) {
  const _0x4d1f3f = {
    type: _0x46906c,
    value: _0x46196b,
  }
  if (!ESX.Phone.settings[_0x37fefb]) {
    ESX.Phone.settings[_0x37fefb] = _0x4d1f3f
  }
  ESX.Phone.settings[_0x37fefb].value = _0x46196b
  if (_0x1b77d2) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/updateSettings',
      JSON.stringify({ settings: ESX.Phone.settings })
    )
  }
  let _0x44791f
  switch (_0x37fefb) {
    case 'airplane':
      const _0x7b71dd = {}
        ; (_0x7b71dd.toggle = _0x46196b),
          $.post(
            'http://' + ESX.Phone.resourceName + '/updateAirplane',
            JSON.stringify(_0x7b71dd)
          ),
          (_0x44791f = _0x46196b ? 'fas fa-plane' : 'fas fa-wifi'),
          $('#wifi').attr('class', _0x44791f),
          $('#signal').css('opacity', _0x46196b ? '0.0' : '1.0')
      break
    case 'size':
      let _0x4beeb8 = (_0x46196b + 50) / 100
      $('body > .main').css('zoom', _0x4beeb8)
      break
    case 'brightness':
      let _0x24940b = 1 - ESX.Phone.settings.brightness.value / 100
      $('.blackscreen').css('opacity', _0x24940b)
      break
    case 'position':
      if (_0x46196b.right) {
        $('body > .main').css('right', _0x46196b.right)
      }
      break
    case 'downloadedapps':
      ESX.Phone.functions.updateDownloads(_0x46196b)
      break
    case 'twtnotifications':
      ; (_0x44791f = _0x46196b ? 'fas fa-bell-on' : 'fas fa-bell-slash'),
        $('#twitter-notifications .icon').attr('class', _0x44791f + ' icon')
      break
    case 'mailnotifications':
      $(
        '.mail > .header .avatar .container .button[data-action="notifications"] .icon'
      ).attr(
        'class',
        (_0x46196b ? 'fas fa-bell-slash' : 'fas fa-bell-on') + ' icon'
      ),
        $(
          '.mail > .header .avatar .container .button[data-action="notifications"] .title'
        ).html(
          _0x46196b
            ? Locales[Config.Language].html.disable_notifications
            : Locales[Config.Language].html.enable_notifications
        )
    case 'adsnotifications':
      ; (_0x44791f = _0x46196b ? 'fas fa-bell' : 'fas fa-bell-slash'),
        $('#ads-notifications .icon').attr('class', _0x44791f + ' icon')
      break
    case 'background':
      if (_0x46196b != '') {
        $('body > .main > .screen').css(
          'background',
          'url(' + ESX.Phone.functions.getCurrentBackground(_0x46196b) + ')'
        )
      } else {
        $('body > .main > .screen').css(
          'background',
          'url(' +
          ESX.Phone.functions.getCurrentBackground(Config.DefaultBackground) +
          ')'
        )
      }
      break
    case 'lockbackground':
      if (_0x46196b != '') {
        $('#lockscreen > .bg').css(
          'background',
          'url(' + ESX.Phone.functions.getCurrentBackground(_0x46196b) + ')'
        )
      } else {
        $('#lockscreen > .bg').css(
          'background',
          'url(' +
          ESX.Phone.functions.getCurrentBackground(
            Config.DefaultLockbackground
          ) +
          ')'
        )
      }
      break
    case 'ringtone':
      $('.ringtone > .download > *').attr('class', 'fas fa-long-arrow-alt-down')
      if (_0x46196b != '') {
        $('.ringtone[data-id="' + _0x46196b + '"] > .download > *').attr(
          'class',
          'fas fa-check'
        )
      } else {
        $('.ringtone[data-id="default"] > .download > *').attr(
          'class',
          'fas fa-check'
        )
      }
      break
    case 'darkmode':
      if (_0x46196b) {
        $('body').addClass('dark-mode')
      } else {
        $('body').removeClass('dark-mode')
      }
      if (ESX.Phone.settings.background.value != '') {
        $('body > .main > .screen').css(
          'background',
          'url(' +
          ESX.Phone.functions.getCurrentBackground(
            ESX.Phone.settings.background.value
          ) +
          ')'
        )
      } else {
        $('body > .main > .screen').css(
          'background',
          'url(' +
          ESX.Phone.functions.getCurrentBackground(Config.DefaultBackground) +
          ')'
        )
      }
      if (ESX.Phone.settings.lockbackground.value != '') {
        $('body > .main > .screen').css(
          'background',
          'url(' +
          ESX.Phone.functions.getCurrentBackground(
            ESX.Phone.settings.lockbackground.value
          ) +
          ')'
        )
      } else {
        $('#lockscreen > .bg').css(
          'background',
          'url(' +
          ESX.Phone.functions.getCurrentBackground(
            Config.DefaultLockbackground
          ) +
          ')'
        )
      }
      break
  }
}
Config.Backgrounds.forEach((_0x5a4429) => {
  $('.settings .backgroundlist').append(
    '<div class="bg" data-bg="' +
    _0x5a4429.light +
    '">\n        <img src="' +
    _0x5a4429.dark +
    '">\n        <img src="' +
    _0x5a4429.light +
    '">\n        <i class="fas fa-adjust icon"></i>\n    </div>'
  )
})
for (const index in Config.Ringtones) {
  let ringtone = Config.Ringtones[index]
  ESX.Phone.ringtones[index] = new Howl({
    src: ringtone.src,
    volume: ESX.Phone.settings.sounds.value / 100,
    preload: true,
    onload: function () {
      $('.ringtone[data-id="' + index + '"] > .length').html(
        this['_duration'].toFixed(0) + ' s'
      )
    },
    onend: function () {
      currentPlayingRingtone = undefined
      ESX.Phone.ringtones[index].interval &&
        (clearInterval(ESX.Phone.ringtones[index].interval),
          (ESX.Phone.ringtones[index].interval = undefined))
      $('.ringtone[data-id="' + index + '"] > .progress > div').css(
        'width',
        '0%'
      )
      $('.ringtone[data-id="' + index + '"] > .play-pause > *').attr(
        'class',
        'fas fa-play'
      )
    },
  })
  $('.settings > .ringtones').append(
    '<div class="ringtone" data-id="' +
    index +
    '">\n        <div class="play-pause">\n            <i class="fas fa-play"></i>\n        </div>\n        <div class="info">\n            <p class="title">' +
    ringtone.name +
    '</p>\n            <p class="description">' +
    ringtone.author +
    '</p>\n        </div>\n        <p class="length">' +
    ESX.Phone.ringtones[index]['_duration'] +
    '</p>\n        <div class="download">\n            <i class="fas fa-long-arrow-alt-down"></i>\n        </div>\n        <div class="progress">\n            <div></div>\n        </div>\n    </div>'
  )
}
var currentPlayingRingtone
ESX.Phone.functions.addDynamicButton(
  '.settings > .ringtones > * > .play-pause',
  function (_0x1b21d3) {
    let _0x3d9ef2 = $(_0x1b21d3).parent().data('id')
    if (
      currentPlayingRingtone &&
      ESX.Phone.ringtones[currentPlayingRingtone].interval
    ) {
      clearInterval(ESX.Phone.ringtones[currentPlayingRingtone].interval)
      ESX.Phone.ringtones[currentPlayingRingtone].interval = undefined
      $(
        '.ringtone[data-id="' + currentPlayingRingtone + '"] > .progress > div'
      ).css('width', '0%')
    }
    if (currentPlayingRingtone && currentPlayingRingtone != _0x3d9ef2) {
      $(
        '.ringtone[data-id="' + currentPlayingRingtone + '"] > .play-pause > *'
      ).attr('class', 'fas fa-play')
      ESX.Phone.ringtones[currentPlayingRingtone].stop()
    } else {
      if (currentPlayingRingtone == _0x3d9ef2) {
        $('.ringtone[data-id="' + _0x3d9ef2 + '"] > .play-pause > *').attr(
          'class',
          'fas fa-play'
        )
        ESX.Phone.ringtones[_0x3d9ef2].stop()
        currentPlayingRingtone = undefined
        return
      }
    }
    let _0x35edc8 = 0
    ESX.Phone.ringtones[_0x3d9ef2].interval = setInterval(() => {
      _0x35edc8 += 10
      let _0x3ccaf3 =
        (_0x35edc8 / 1000 / ESX.Phone.ringtones[_0x3d9ef2]['_duration']) * 100
      $('.ringtone[data-id="' + _0x3d9ef2 + '"] > .progress > div').css(
        'width',
        _0x3ccaf3 + '%'
      )
    }, 10)
    $('.ringtone[data-id="' + _0x3d9ef2 + '"] > .play-pause > *').attr(
      'class',
      'fas fa-stop'
    )
    ESX.Phone.ringtones[_0x3d9ef2].volume(ESX.Phone.settings.sounds.value / 100)
    ESX.Phone.ringtones[_0x3d9ef2].play()
    currentPlayingRingtone = _0x3d9ef2
  }
)
ESX.Phone.functions.addDynamicButton(
  '.settings > .ringtones > * > .download',
  function (_0x378061) {
    let _0x3048a5 = $(_0x378061).parent().data('id')
    if (ESX.Phone.settings.ringtone.value == _0x3048a5) {
      return
    }
    if (ESX.Phone.settings.ringtone.value != _0x3048a5) {
      ESX.Phone.settings.ringtone.value != ''
        ? $(
          '.ringtone[data-id="' +
          ESX.Phone.settings.ringtone.value +
          '"] > .download > *'
        ).attr('class', 'fas fa-long-arrow-alt-down')
        : $('.ringtone[data-id="default"] > .download > *').attr(
          'class',
          'fas fa-long-arrow-alt-down'
        )
      ESX.Phone.functions.setSetting('ringtone', _0x3048a5, true, 'url')
    }
  }
)
ESX.Phone.functions.initializeSettings = function () {
  for (let _0x24eb21 in ESX.Phone.settings) {
    let _0x52680a = ESX.Phone.settings[_0x24eb21]
    if (_0x52680a.type == 'checkbox') {
      $(document).on('change', '#' + _0x24eb21, function () {
        setTimeout(() => {
          ESX.Phone.functions.setSetting(
            _0x24eb21,
            this.checked,
            true,
            _0x52680a.type
          )
        }, 0)
      })
    } else {
      if (_0x52680a.type == 'slider') {
        $(document).on('change input', '#' + _0x24eb21, function () {
          $('#' + _0x24eb21).css(
            'background',
            'linear-gradient(to right, rgb(4, 163, 255) 0%, rgb(4, 163, 255) ' +
            this.value +
            '%, #e6e6e63a ' +
            this.value +
            '%, #e6e6e63a 100%)'
          )
        }),
          $(document).on('change', '#' + _0x24eb21, function () {
            ESX.Phone.functions.setSetting(
              _0x24eb21,
              parseInt($('#' + _0x24eb21).val()),
              true,
              _0x52680a.type
            )
          })
      } else {
        _0x52680a.type == 'url' &&
          $(document).on('input', '#' + _0x24eb21, async function () {
            let _0x363aa7 = $('#' + _0x24eb21).val()
            if (
              _0x363aa7 != '' &&
              _0x363aa7.match(/\.(jpeg|jpg|gif|png)$/) == null
            ) {
              return $('#' + _0x24eb21)
                .parent()
                .find('.url-check')
                .attr('class', 'fas fa-times url-check')
                .show()
            }
            _0x363aa7 =
              _0x363aa7 == '' || _0x363aa7.indexOf('http') > -1
                ? _0x363aa7
                : 'http://' + _0x363aa7
            let _0x59c3b3 = await ESX.Phone.functions.urlExists(_0x363aa7)
            if (!_0x59c3b3) {
              return $('#' + _0x24eb21)
                .parent()
                .find('.url-check')
                .attr('class', 'fas fa-times url-check')
                .show()
            }
            ESX.Phone.functions.setSetting(
              _0x24eb21,
              _0x363aa7,
              true,
              _0x52680a.type
            )
            if (_0x363aa7 != '') {
              $('#' + _0x24eb21)
                .parent()
                .find('.url-check')
                .attr('class', 'fas fa-check url-check')
                .show()
            } else {
              $('#' + _0x24eb21)
                .parent()
                .find('.url-check')
                .hide()
            }
          })
      }
    }
  }
}
ESX.Phone.functions.reloadSettings = function () {
  for (let _0x3214b5 in ESX.Phone.settings) {
    let _0x27b0f5 = ESX.Phone.settings[_0x3214b5]
    if (_0x27b0f5.type == 'checkbox') {
      $('#' + _0x3214b5).prop('checked', _0x27b0f5.value)
    } else {
      if (_0x27b0f5.type == 'slider') {
        $('#' + _0x3214b5).val(_0x27b0f5.value),
          $('#' + _0x3214b5).css(
            'background',
            'linear-gradient(to right, rgb(4, 163, 255) 0%, rgb(4, 163, 255) ' +
            _0x27b0f5.value +
            '%, #e6e6e63a ' +
            _0x27b0f5.value +
            '%, #e6e6e63a 100%)'
          )
      } else {
        if (_0x27b0f5.type == 'url') {
          $('#' + _0x3214b5).val(_0x27b0f5.value)
        }
      }
    }
    ESX.Phone.functions.setSetting(_0x3214b5, _0x27b0f5.value)
  }
}
ESX.Phone.functions.openApp = function (_0xd7f200, _0x15d11a) {
  if (ESX.Phone.currentApp != '') {
    return
  }
  var _0x14edcf = document.querySelector('.screen').getBoundingClientRect()
  let _0xa2d21b = $('.home .app[data-app="' + _0xd7f200 + '"]')
  _0xa2d21b.addClass('focused').css('z-index', '9999')
  $('#' + _0xd7f200).show()
  setTimeout(() => {
    $('#' + _0xd7f200).css('opacity', '1.0')
  }, 0)
  let _0x40a10d = $('.home .app[data-app="' + _0xd7f200 + '"] > .app-wrapper'),
    _0x1421da = _0x40a10d.get(0).getBoundingClientRect()
  _0x40a10d.css({
    position: 'absolute',
    width: (_0x14edcf.width / _0x1421da.width) * 100 + '%',
    height: (_0x14edcf.height / _0x1421da.height) * 100 + '%',
    left: -((_0x1421da.left - _0x14edcf.left) / _0x1421da.width) * 100 + '%',
    top: -((_0x1421da.top - _0x14edcf.top) / _0x1421da.height) * 100 + '%',
  })
  _0xa2d21b.parent().attr('class') == 'bottomapps'
    ? $('.home > .bottombox').css('z-index', '9999')
    : $('.home > .bottombox').css('z-index', '')
  if (Config.Applications[_0xd7f200].customCallback) {
    Config.Applications[_0xd7f200].customCallback()
  }
  if (ESX.Phone.locked) {
    ESX.Phone.currentLockApp = _0xd7f200
  } else {
    ESX.Phone.currentApp = _0xd7f200
  }
  switch (_0xd7f200) {
    case 'Twitter':
      ESX.Phone.functions.resetTwitter()
      break
    case 'Messages':
      ESX.Phone.functions.resetMessages()
      break
    case 'Contacts':
      ESX.Phone.functions.resetContacts()
      break
    case 'Phone':
      ESX.Phone.functions.resetPhone()
      break
    case 'Camera':
      $.post(
        'http://' + ESX.Phone.resourceName + '/openCamera',
        JSON.stringify({})
      ),
        ESX.Phone.functions.resetCamera(_0x15d11a),
        $('#gameview').show()
      break
    case 'Mail':
      ESX.Phone.functions.resetMail()
      break
    case 'Gallery':
      ESX.Phone.functions.resetGallery()
      break
    case 'Bank':
      ESX.Phone.functions.resetBank(),
        $.post(
          'http://' + ESX.Phone.resourceName + '/updateBank',
          JSON.stringify({})
        )
      break
    case 'Ads':
      ESX.Phone.functions.resetAds()
      break
    case 'Appstore':
      ESX.Phone.functions.resetAppstore()
      break
    case 'Notes':
      ESX.Phone.functions.resetNotes()
      break
    case 'Garage':
      ESX.Phone.functions.resetGarage()
      break
    case 'Darkchat':
      ESX.Phone.functions.resetDarkchat()
      break
    case 'Settings':
      ESX.Phone.functions.resetSettings()
      break
  }
}
ESX.Phone.functions.closeApp = function (_0x478708, _0x10005c) {
  if (_0x478708 != '' && !ESX.Phone.locked) {
    switch (_0x478708) {
      case 'Camera':
        $.post(
          'http://' + ESX.Phone.resourceName + '/closeCamera',
          JSON.stringify({})
        ),
          setTimeout(() => {
            $('#gameview').hide(),
              $('#images .content').html(''),
              $('#gallery-images .content').html('')
          }, 200)
        break
      case 'Gallery':
        setTimeout(() => {
          $('#images .content').html('')
          $('#gallery-images .content').html('')
        }, 200)
        break
      case 'Messages':
        ; (ESX.Phone.currentChat = {}),
          setTimeout(() => {
            $('.messages .chats .chatlist').html('')
            $('.messages > .privatechat > .chatmessages').html('')
            $('.messages .groups .grouplist').html('')
          }, 200)
        break
      case 'Contacts':
        ; (ESX.Phone.currentContact = {}),
          setTimeout(() => {
            $('.contacts .mainscreen .contactlist').html('')
          }, 200)
        break
      case 'Mail':
        ; (ESX.Phone.currentMailConversation = {}),
          setTimeout(() => {
            $('#mailcontent').html('')
          }, 200)
        break
      case 'Darkchat':
        ; (ESX.Phone.currentDarkGroup = {}),
          setTimeout(() => {
            $('.darkchat > .main .groups').html('')
            $('.darkchat > .privatechat .chatmessages').html('')
          }, 200)
        break
      case 'Twitter':
        setTimeout(() => {
          $('#tweetscontent').html('')
        }, 200)
        break
      case 'Bank':
        setTimeout(() => {
          $('#cardslist').html('')
        }, 200)
        break
      case 'Ads':
        setTimeout(() => {
          $('#adscontent').html('')
        }, 200)
        break
      case 'Phone':
        setTimeout(() => {
          $('.phone .calls .callslist').html('')
        }, 200)
        break
      case 'Mail':
        setTimeout(() => {
          $('#mailcontent').html('')
        }, 200)
      case 'Notes':
        setTimeout(() => {
          $('.notes .main .noteslist').html('')
        }, 200)
        break
      case 'Garage':
          setTimeout(() => {
            $('.notes .main .vehiclelist').html('')
          }, 200)
          break
      case 'Settings':
        if (currentPlayingRingtone) {
          if (ESX.Phone.ringtones[currentPlayingRingtone].interval) {
            clearInterval(ESX.Phone.ringtones[currentPlayingRingtone].interval)
            ESX.Phone.ringtones[currentPlayingRingtone].interval = undefined
            $(
              '.ringtone[data-id="' +
              currentPlayingRingtone +
              '"] > .progress > div'
            ).css('width', '0%')
          }
          $(
            '.ringtone[data-id="' +
            currentPlayingRingtone +
            '"] > .play-pause > *'
          ).attr('class', 'fas fa-play')
          ESX.Phone.ringtones[currentPlayingRingtone].stop()
          currentPlayingRingtone = undefined
        }
        break
    }
    $('.home .app[data-app="' + _0x478708 + '"] > .app-wrapper').css({
      position: 'absolute',
      width: '',
      height: '',
      left: '',
      top: '',
    })
    $('.home .app[data-app="' + _0x478708 + '"]').removeClass('focused')
    setTimeout(() => {
      $('#' + _0x478708).css('opacity', '0.0'),
        setTimeout(() => {
          $('#' + _0x478708).hide()
          if (_0x478708 != ESX.Phone.currentApp && ESX.Phone.currentApp == '') {
            $('.home .app[data-app="' + _0x478708 + '"]').css('z-index', '')
            $('.home > .bottombox').css('z-index', '')
          } else {
            _0x478708 != ESX.Phone.currentApp &&
              ESX.Phone.currentApp != '' &&
              $('.home .app[data-app="' + _0x478708 + '"]').css('z-index', '')
          }
        }, 200)
    }, 100)
    ESX.Phone.currentApp = ''
    if (_0x10005c) {
      ESX.Phone.functions.openApp(_0x10005c)
    }
  } else {
    if (ESX.Phone.locked) {
      if (_0x478708 == 'Camera') {
        $.post(
          'http://' + ESX.Phone.resourceName + '/closeCamera',
          JSON.stringify({})
        )
        $('#gameview').hide()
      }
      $('#lockscreen').css({
        transition: 'transform 0.25s',
        transform: 'translate3d(0%, 0, 0)',
      })
      $('#' + _0x478708).css({
        transition: '',
        transform: 'translate3d(100%, 0, 0)',
      })
      ESX.Phone.currentLockApp = ''
      setTimeout(() => {
        $('#lockscreen').css('transition', '')
        $('#' + _0x478708)
          .removeAttr('style')
          .hide()
          .detach()
          .appendTo('.home .app[data-app="' + _0x478708 + '"] > .app-wrapper')
          .removeClass('lock-screen')
        ESX.Phone.currentApp == _0x478708 &&
          $('#' + _0x478708)
            .show()
            .css('opacity', '1.0')
      }, 250)
    }
  }
}
ESX.Phone.functions.previewImage = function (_0x51126) {
  $('.imagepreview img').attr('src', _0x51126)
  $('.imagepreview').fadeIn(150).addClass('active')
}
ESX.Phone.functions.addDynamicButton('.imagepreview', function () {
  $('.imagepreview').removeClass('active').fadeOut(150)
})
ESX.Phone.functions.addDynamicButton('.imagepreview .savephoto', function () {
  ESX.Phone.gallery.push({
    src: $('.imagepreview img').attr('src'),
    date: new Date(),
    url: $('.imagepreview img').attr('src'),
  })
  if (Config.SaveUploadedPhotos) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/savePhoto',
      JSON.stringify({
        url: $('.imagepreview img').attr('src'),
        src: $('.imagepreview img').attr('src'),
        date: new Date(),
      })
    )
  }
})
ESX.Phone.functions.addDynamicButton('.bottomline', function (_0x402c81) {
  if ($(_0x402c81).parent().attr('id') == 'callscreen') {
    $('#callscreen').css('top', '-100%')
    $('#current-time').fadeOut(250, function () {
      $('#callminimized').fadeIn(250)
    })
    return
  }
  setTimeout(() => {
    if (!ESX.Phone.locked && ESX.Phone.currentLockApp == '') {
      ESX.Phone.functions.closeApp(ESX.Phone.currentApp)
    } else {
      if (ESX.Phone.currentLockApp != '') {
        ESX.Phone.functions.closeApp(ESX.Phone.currentLockApp)
      } else {
        ESX.Phone.functions.unlock()
      }
    }
  }, 0)
})
ESX.Phone.functions.addDynamicButton('#callminimized', function () {
  $('#callscreen').css('top', '0%')
  $('#callminimized').fadeOut(250, function () {
    $('#current-time').fadeIn(250)
  })
})
setInterval(() => {
  Config.TimeType == 'real'
    ? ($('#current-time, #current-time2').text(
      ESX.Phone.functions.formatDate2(new Date())
    ),
      $('#current-date').text(ESX.Phone.functions.formatDate3(new Date())))
    : $.post(
      'http://' + ESX.Phone.resourceName + '/getGameDate',
      JSON.stringify({}),
      function (_0x44ce9c) {
        let _0x108b64 = JSON.parse(_0x44ce9c),
          _0x52d245 =
            _0x108b64.minute < 10 ? '0' + _0x108b64.minute : _0x108b64.minute,
          _0xf2419 =
            Config.TimeFormat == 1
              ? _0x108b64.hour % 12
                ? _0x108b64.hour % 12
                : 12
              : _0x108b64.hour
        _0xf2419 = _0xf2419 < 10 ? '0' + _0xf2419 : _0xf2419
        $('#current-time, #current-time2').text(_0xf2419 + ':' + _0x52d245)
        $('#current-date').text(
          Locales[Config.Language].weekdays[_0x108b64.weekday] +
          ', ' +
          Locales[Config.Language].months[_0x108b64.month] +
          ' ' +
          _0x108b64.day
        )
      }
    )
}, Config.TimeUpdateInterval)

ESX.Phone.functions.open = function () {
  if (!ESX.Phone.open) {
    if (closingTimeout) {
      clearTimeout(closingTimeout)
    }
    ESX.Phone.open = true
    if (ESX.Phone.currentLockApp == 'Camera') {
      $.post(
        'http://' + ESX.Phone.resourceName + '/openCamera',
        JSON.stringify({
          frontCamera: ESX.Phone.frontCamera,
          portrait: ESX.Phone.currentCameraMode == 'portrait',
        })
      )
    }
    if (ESX.Phone.flashlight) {
      $.post(
        'http://' + ESX.Phone.resourceName + '/toggleFlashlight',
        JSON.stringify({ toggle: ESX.Phone.flashlight })
      )
    }
    let _0x22ffbf = ESX.Phone.settings.position.value.bottom
      ? ESX.Phone.settings.position.value.bottom
      : '1vw'
    const _0x3454dd = { bottom: _0x22ffbf }
    $('body > .main').css(_0x3454dd)
    $('.blackscreen').css({
      opacity: 1 - ESX.Phone.settings.brightness.value / 100,
    })
    if (ESX.Phone.currentApp == 'Twitter' && ESX.Phone.twitterLogged) {
      $.post(
        'http://' + ESX.Phone.resourceName + '/updateTweets',
        JSON.stringify({})
      )
    }
    if (ESX.Phone.currentApp == 'Bank') {
      $.post(
        'http://' + ESX.Phone.resourceName + '/updateBank',
        JSON.stringify({})
      )
    }
    if (Config.BankScreens.Invoices && ESX.Phone.currentApp == 'Bank') {
      $.post(
        'http://' + ESX.Phone.resourceName + '/updateInvoices',
        JSON.stringify({})
      )
    }
  }
}
var closingTimeout, updateSettingsThisTime
ESX.Phone.functions.close = function () {
  if (closingTimeout) {
    clearTimeout(closingTimeout)
  }
  ESX.Phone.open = false
  const _0x397c76 = { toggle: false }
  if (ESX.Phone.flashlight) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/toggleFlashlight',
      JSON.stringify(_0x397c76)
    )
  }
  updateSettingsThisTime &&
    ($.post(
      'http://' + ESX.Phone.resourceName + '/updateSettings',
      JSON.stringify({ settings: ESX.Phone.settings })
    ),
      (updateSettingsThisTime = false))
  $.post('http://' + ESX.Phone.resourceName + '/closePhone', JSON.stringify({}))
  $('.blackscreen').css({ opacity: '1.0' })
  $('body > .main').css({ bottom: '-39vw' })
  closingTimeout = setTimeout(() => {
    closingTimeout = undefined
    ESX.Phone.functions.lock()
    $('.mainapps').css({
      opacity: '0.0',
      transform: 'scale3d(2.0, 2.0, 1)',
    })
    $('.bottombox').css({ transform: 'translate3d(0, 4vw, 0)' })
    setTimeout(() => {
      const _0x56090c = {}
      _0x56090c['backdrop-filter'] = ''
      $('.bottombox').css(_0x56090c)
    }, 250)
    $('#lockscreen .notificationlist')
      .children('.notifications')
      .removeClass('expanded')
      .each(function () {
        $(this).children().css('height', '')
      })
    if (ESX.Phone.currentLockApp != '') {
      $('#lockscreen').addClass('no-transition').css('left', '0%')
      $('#' + ESX.Phone.currentLockApp).addClass('no-transition')
      $('#' + ESX.Phone.currentLockApp)
        .removeAttr('style')
        .hide()
        .detach()
        .appendTo(
          '.home .app[data-app="' +
          ESX.Phone.currentLockApp +
          '"] > .app-wrapper'
        )
        .removeClass('lock-screen')
      if (ESX.Phone.currentApp == ESX.Phone.currentLockApp) {
        $('#' + ESX.Phone.currentLockApp)
          .show()
          .css('opacity', '1.0')
      }
      setTimeout(() => {
        $('#' + ESX.Phone.currentLockApp + ', #lockscreen').removeClass(
          'no-transition'
        )
        ESX.Phone.currentLockApp = ''
      }, 5)
    }
  }, 500)
}
document.addEventListener('keydown', (_0x477c73) => {
  if (_0x477c73.keyCode === 27) {
    ESX.Phone.functions.close()
  }
  if (_0x477c73.keyCode === 9) {
    _0x477c73.preventDefault()
  }
})
var notifTimer
ESX.Phone.functions.sendNotification = function (
  _0x266f72,
  _0x4cb35c,
  _0x1a7eea,
  _0xb43992,
  _0x2af660,
  _0x1d9a4a
) {
  if (ESX.Phone.locked) {
    return ESX.Phone.functions.addLockNotification(
      _0x266f72,
      _0x4cb35c,
      _0x1a7eea,
      _0xb43992,
      _0x1d9a4a
    )
  }
  ESX.Phone.currentNotification = _0x1a7eea
  $('.notifbox .icon').attr('class', _0x266f72 + ' icon')
  $('.notifbox .icon').css('color', _0x4cb35c)
  $('.notifbox .content').html(_0xb43992)
  $('.notifbox .title').html(_0x1a7eea.toUpperCase())
  clearTimeout(notifTimer)
  $('.notifbox').addClass('visible')
  notifTimer = setTimeout(() => {
    ESX.Phone.currentNotification != '' &&
      ESX.Phone.currentNotification == _0x1a7eea &&
      ($('.notifbox').removeClass('visible'),
        (ESX.Phone.currentNotification = ''))
  }, _0x2af660)
}
function pxToVw(_0x4132b7) {
  return _0x4132b7 * (100 / document.documentElement.clientWidth)
}
ESX.Phone.functions.addLockNotification = function (
  _0x3a8d6c,
  _0x2f3492,
  _0x33b4bd,
  _0x259a7f,
  _0x2494a6
) {
  let _0x7ede91 = $(
    '#lockscreen .notificationlist > .notifications[data-title="' +
    _0x33b4bd +
    '"]'
  ),
    _0x4600a4 = $('#lockscreen .notificationtools'),
    _0x233bd4 = $('#lockscreen .notificationlist')
  if (_0x7ede91.length) {
    let _0x4d0ce7 = _0x7ede91.children().length,
      _0x299816 = $(
        '#lockscreen .notificationlist .notifications[data-title="' +
        _0x33b4bd +
        '"]'
      ),
      _0x153f82 = false,
      _0x210bd4 = _0x299816.hasClass('expanded')
    !_0x7ede91.is($('#lockscreen .notificationlist').children().first()) &&
      (_0x7ede91.find('.notification').css('animation', '0.5s fadeInNotif'),
        _0x7ede91.detach().prependTo('#lockscreen .notificationlist'),
        (_0x153f82 = true))
    if (!_0x210bd4) {
      let _0x325322 = _0x7ede91.children().first()
      const _0x1c6bda = { height: '' }
      _0x1c6bda['--margin-top'] = ''
      _0x1c6bda['margin-top'] = ''
      _0x325322.addClass('no-transition').css(_0x1c6bda)
      setTimeout(() => {
        _0x325322.removeClass('no-transition')
      }, 0)
    }
    _0x7ede91.prepend(
      '<div class="notification-wrapper" ' +
      (!_0x210bd4 ? 'style="animation: 0.5s appear;"' : '') +
      '>\n            <div class="notification" ' +
      (_0x2494a6 ? "data-origindata='" + _0x2494a6 + "'" : '') +
      ' ' +
      (_0x210bd4 || _0x153f82 ? 'style="animation: 0.5s fadeInNotif;"' : '') +
      ' data-timestamp="' +
      Date.now() +
      '">\n                <i class="' +
      _0x3a8d6c +
      ' icon" style="color: ' +
      _0x2f3492 +
      ' !important"></i>\n                <p class="title">' +
      _0x33b4bd +
      '</p>\n                <p class="content">' +
      _0x259a7f +
      '</p>\n                <p class="timestamp">' +
      Locales[Config.Language].justnow +
      '</p>\n            </div>\n            <div class="clear"><p class="title">' +
      Locales[Config.Language].clear +
      '</p></div>\n        </div>'
    )
    let _0x24d826 = _0x299816.children('.notification-wrapper').first(),
      _0x5b54d4 = _0x24d826.children('.notification'),
      _0x257b13 = () => {
        _0x5b54d4.css('animation', ''),
          _0x5b54d4.get(0).removeEventListener('animationend', _0x257b13)
      },
      _0x172583 = () => {
        _0x24d826.css('animation', '')
        _0x24d826.get(0).removeEventListener('animationend', _0x172583)
      }
    _0x24d826.get(0).addEventListener('animationend', _0x172583)
    _0x5b54d4.get(0).addEventListener('animationend', _0x257b13)
    if (_0x4d0ce7 == 1) {
      _0x7ede91.append(
        '<div class="tools">\n            <div class="name">' +
        _0x33b4bd +
        '</div>\n            <button class="showless">' +
        Locales[Config.Language].showless +
        '</button>\n            <div class="close"><i class="fal fa-times icon"></i></div>\n        </div>\n        <div class="clearall"><p class="title">' +
        Locales[Config.Language].clearall +
        '</p></div>'
      )
    }
    _0x210bd4 &&
      !_0x153f82 &&
      (_0x24d826.addClass('no-transition').css({
        height:
          'calc(' + pxToVw(_0x5b54d4.height()) + 'vw + var(--margin-top))',
        'margin-top': 'calc(-' + _0x5b54d4.height() + 'px - var(--margin-top))',
      }),
        setTimeout(() => {
          _0x24d826.removeClass('no-transition').css('margin-top', '')
        }, 0))
    _0x153f82 &&
      (_0x299816
        .addClass('no-transition')
        .css('margin', '-' + _0x299816.height() + 'px auto 0'),
        setTimeout(() => {
          _0x299816.removeClass('no-transition').css('margin', '')
        }, 0))
  } else {
    $('#lockscreen .notificationlist').prepend(
      '<div class="notifications" style="margin-bottom: 0vw;" data-title="' +
      _0x33b4bd +
      '">\n            <div class="notification-wrapper">\n                <div class="notification" ' +
      (_0x2494a6 ? "data-origindata='" + _0x2494a6 + "'" : '') +
      ' style="animation: 0.5s fadeInNotif;" data-timestamp="' +
      Date.now() +
      '">\n                    <i class="' +
      _0x3a8d6c +
      ' icon" style="color: ' +
      _0x2f3492 +
      ' !important"></i>\n                    <p class="title">' +
      _0x33b4bd +
      '</p>\n                    <p class="content">' +
      _0x259a7f +
      '</p>\n                    <p class="timestamp">' +
      Locales[Config.Language].justnow +
      '</p>\n                </div>\n                <div class="clear"><p class="title">' +
      Locales[Config.Language].clear +
      '</p></div>\n            </div>\n        </div>'
    )
    let _0x42c58a = $(
      '#lockscreen .notificationlist .notifications[data-title="' +
      _0x33b4bd +
      '"] > .notification-wrapper'
    )
    _0x42c58a
      .addClass('no-transition')
      .css('margin-top', -_0x42c58a.children('.notification').height() + 'px')
    setTimeout(() => {
      _0x42c58a.removeClass('no-transition').css('margin-top', '0'),
        _0x42c58a.parent().css('margin-bottom', '')
    }, 0)
  }
  let _0x3138a7 = _0x233bd4.children().length
  if (_0x3138a7 > 1) {
    if (!_0x4600a4.hasClass('visible')) {
      _0x4600a4.addClass('visible')
    }
  }
  if (_0x3138a7 > 4) {
    _0x4600a4.children('*[data-action="showall"]').removeClass('hidden')
  } else {
    _0x4600a4.children('*[data-action="showall"]').addClass('hidden')
  }
}
var offNotifTimer
ESX.Phone.functions.sendOffNotification = function (
  _0x5ba97f,
  _0x3578a2,
  _0x13fb04,
  _0x11b074,
  _0x50922c,
  _0x61e355
) {
  ESX.Phone.currentOffNotification = _0x13fb04
  $('.bignotification .icon')
    .attr('class', _0x5ba97f + ' icon')
    .css('color', _0x3578a2)
  $('.bignotification .content').html(_0x11b074)
  $('.bignotification .title').html(_0x13fb04.toUpperCase())
  ESX.Phone.functions.addLockNotification(
    _0x5ba97f,
    _0x3578a2,
    _0x13fb04,
    _0x11b074,
    _0x61e355
  )
  clearTimeout(offNotifTimer)
  $('.bignotification').addClass('visible')
  offNotifTimer = setTimeout(() => {
    ESX.Phone.currentOffNotification != '' &&
      ESX.Phone.currentOffNotification == _0x13fb04 &&
      ($('.bignotification').removeClass('visible'),
        setTimeout(() => {
          ESX.Phone.currentOffNotification = ''
        }, 500))
  }, _0x50922c)
}
var lastNotifMouseX = 0
$(document).on(
  'mousedown',
  '#lockscreen .notificationlist > .notifications',
  function (_0x57dd47) {
    lastNotifMouseX = _0x57dd47.pageX
  }
)
ESX.Phone.functions.addDynamicButton(
  '#lockscreen .notificationlist > .notifications',
  function (_0x3aed19, _0x796814) {
    if (Math.abs(lastNotifMouseX - _0x796814.pageX) > 5) {
      return
    }
    let _0x5cedce = $(_0x796814.target).closest('.notifications')
    if (_0x5cedce.hasClass('no-transition')) {
      _0x5cedce.removeClass('no-transition')
    }
    setTimeout(() => {
      if (
        _0x5cedce.children('.notification-wrapper').length > 1 &&
        !_0x5cedce.hasClass('expanded')
      ) {
        _0x5cedce.addClass('expanded')
        _0x5cedce.children('.notification-wrapper').each(function (_0x395722) {
          let _0x19f01d = $(this)
          _0x19f01d.css(
            'height',
            'calc(' +
            pxToVw(_0x19f01d.children('.notification').height()) +
            'vw + var(--margin-top))'
          )
        })
      }
    }, 0)
  }
)
ESX.Phone.functions.addDynamicButton(
  '#lockscreen .notificationtools > *',
  async function (_0x50fbee) {
    let _0x4d4628 = $(_0x50fbee)
    let _0x8eea32 = _0x4d4628.data('action')
    if (_0x8eea32 == 'showall') {
      _0x4d4628.data('enabled', !_0x4d4628.data('enabled'))
      let _0x551112 = '',
        _0x2e3c6 = $('#lockscreen .notificationlist')
      if (_0x4d4628.data('enabled')) {
        _0x2e3c6.addClass('expanded')
        $('#lockscreen .button').addClass('transparent')
        _0x551112 = Locales[Config.Language].html.showless
        _0x4d4628.children('.icon').css('transform', 'rotate(180deg)')
      } else {
        const _0x1f20a7 = {}
        _0x1f20a7.scrollTop = '0'
        _0x2e3c6.animate(_0x1f20a7, 250)
        _0x2e3c6.removeClass('expanded')
        $('#lockscreen .button').removeClass('transparent')
        _0x551112 = Locales[Config.Language].html.showall
        _0x4d4628.children('.icon').css('transform', 'rotate(0deg)')
      }
      let _0x2c3611 = _0x4d4628.get(0).offsetWidth,
        _0x12ebed = _0x4d4628.children('span'),
        _0x4aca64 = _0x12ebed.html()
      _0x12ebed.html(_0x551112)
      _0x4d4628.addClass('no-transition').css('width', '')
      let _0x1f2588 = _0x4d4628.get(0).offsetWidth
      _0x12ebed.html(_0x4aca64)
      _0x4d4628.css('width', _0x2c3611 + 'px')
      setTimeout(() => {
        _0x4d4628.removeClass('no-transition').css('width', _0x1f2588 + 'px')
        ESX.Phone.functions.smoothTextTransition(
          '#lockscreen .notificationtools > *[data-action="showall"] > span',
          _0x551112
        )
      }, 0)
    } else {
      if (_0x8eea32 == 'clearall') {
        let _0x206b7a = $('#lockscreen .notificationlist'),
          _0xdadd32 = _0x206b7a.children('.notifications')
        _0xdadd32.removeClass('expanded')
        let _0x493e69 = _0x206b7a.find('.notification-wrapper')
        _0x493e69.each(function (_0x5aea5d) {
          setTimeout(() => {
            $(this).children('.notification').css('opacity', '0.0')
          }, _0x5aea5d * 50)
          setTimeout(() => {
            $(this).remove()
          }, 500 + 50 * _0x5aea5d)
        })
        setTimeout(() => {
          _0xdadd32.remove()
        }, 500 + _0xdadd32.length * 50)
        $('#lockscreen .notificationtools').removeClass('visible')
      }
    }
  }
)
ESX.Phone.functions.addDynamicButton(
  '#lockscreen .notificationlist > .notifications .tools > .showless',
  function (_0x56c4b, _0x13b404) {
    _0x13b404.stopPropagation()
    let _0x558929 = $(_0x56c4b)
    _0x558929
      .closest('.notifications')
      .removeClass('expanded')
      .children()
      .css('height', '')
  }
)
ESX.Phone.functions.addDynamicButton(
  '#lockscreen .notificationlist > .notifications .tools > .close',
  function (_0x4039f6, _0x12b057) {
    _0x12b057.stopPropagation()
    let _0x2d13ee = $(_0x4039f6)
    _0x2d13ee
      .closest('.notifications')
      .removeClass('expanded')
      .css('margin-bottom', '0')
    let _0xdb73c5 = _0x2d13ee
      .closest('.notifications')
      .children('.notification-wrapper')
    _0xdb73c5.each(function (_0x23b06b) {
      setTimeout(() => {
        $(this).css('height', '0vw')
        $(this).children('.notification').css('opacity', '0.0')
      }, _0x23b06b * 50)
      setTimeout(() => {
        $(this).remove()
      }, 500 + 50 * _0x23b06b)
    })
    setTimeout(() => {
      _0x2d13ee.closest('.notifications').remove()
    }, 500 + _0xdb73c5.length * 50)
  }
)
var alreadyOpeningLockApp = false
ESX.Phone.functions.addDynamicButton(
  '#lockscreen .notificationlist .notification',
  function (_0x455f02, _0x2aed6e) {
    if (Math.abs(lastNotifMouseX - _0x2aed6e.pageX) > 5) {
      return
    }
    let _0x45b836 = $(_0x455f02)
    if (
      _0x45b836.closest('.notifications').hasClass('expanded') ||
      _0x45b836.closest('.notifications').children().length <= 1
    ) {
      let _0x4ff731 = _0x45b836.data('origindata')
      if (_0x4ff731) {
        if (_0x4ff731.app == 'Phone') {
          return callFunction(_0x4ff731.number)
        }
        ESX.Phone.functions.unlock()
        ESX.Phone.functions.showApps(true)
        if (
          ESX.Phone.currentApp != '' &&
          !alreadyOpeningLockApp &&
          ESX.Phone.currentApp != _0x4ff731.app
        ) {
          ESX.Phone.functions.closeApp(ESX.Phone.currentApp)
        } else {
          if (alreadyOpeningLockApp) {
            return
          }
        }
        alreadyOpeningLockApp = true
        setTimeout(() => {
          alreadyOpeningLockApp = false
        }, 500)
        $('#' + _0x4ff731.app)
          .parent()
          .addClass('no-transition')
        ESX.Phone.functions.openApp(_0x4ff731.app)
        if (_0x4ff731.app == 'Messages') {
          let _0xe7e69a = ESX.Phone.chats.find(
            (_0x21fccc) => _0x21fccc.number == _0x4ff731.number
          )
          if (_0xe7e69a) {
            ESX.Phone.functions.openChat(_0xe7e69a)
          }
        } else {
          if (_0x4ff731.app == 'Darkchat') {
            let _0x493547 = ESX.Phone.darkchatGroups.find(
              (_0x2eecf1) => _0x2eecf1.id == _0x4ff731.group
            )
            if (_0x493547) {
              ESX.Phone.functions.openDarkGroup(_0x493547)
            }
          } else {
            if (_0x4ff731.app == 'Mail') {
              if (
                _0x4ff731.conversation != -1 &&
                ESX.Phone.mail[_0x4ff731.conversation]
              ) {
                ESX.Phone.functions.openMail(
                  ESX.Phone.mail[_0x4ff731.conversation]
                )
              }
            }
          }
        }
        setTimeout(() => {
          $('#' + _0x4ff731.app)
            .parent()
            .removeClass('no-transition')
          $('.bottombox').removeClass('no-transition')
        }, 5)
      }
    }
  }
)
ESX.Phone.functions.playSound = function (_0x191957, _0x35b1ed) {
  let _0x141430 = Config.Ringtones[_0x191957]
  if (ESX.Phone.playingSounds[_0x191957]) {
    return
  }
  ESX.Phone.playingSounds[_0x191957] = new Howl({
    src: [_0x141430 ? _0x141430.src : Config.Sounds.Folder + _0x191957],
    volume: ESX.Phone.settings.sounds.value / 100,
    loop: _0x35b1ed ? _0x35b1ed : false,
    onend: function () {
      if (!_0x35b1ed) {
        ESX.Phone.playingSounds[_0x191957] = undefined
      }
    },
  })
  ESX.Phone.playingSounds[_0x191957].play()
  if (
    ESX.Phone.settings.sounds.value / 100 > Config.MinAudioSyncVolume &&
    Config.syncedSounds
  ) {
    let _0xd36fcb = _0x141430
      ? !_0x141430.src.includes('http://') &&
        !_0x141430.src.includes('https://')
        ? 'https://cfx-nui-' + ESX.Phone.resourceName + '/html/' + _0x141430.src
        : _0x141430.src
      : 'https://cfx-nui-' +
      ESX.Phone.resourceName +
      '/html/' +
      (Config.Sounds.Folder + _0x191957)
    $.post(
      'http://' + ESX.Phone.resourceName + '/playSyncedSound',
      JSON.stringify({
        id: _0x191957,
        volume: ESX.Phone.settings.sounds.value / 100,
        src: _0xd36fcb,
        loop: _0x35b1ed ? _0x35b1ed : false,
      })
    )
  }
}
ESX.Phone.functions.stopSound = function (_0x31ac79) {
  if (ESX.Phone.playingSounds[_0x31ac79]) {
    ESX.Phone.playingSounds[_0x31ac79].stop()
    ESX.Phone.playingSounds[_0x31ac79] = undefined
    if (Config.syncedSounds) {
      const _0x558070 = { id: _0x31ac79 }
      $.post(
        'http://' + ESX.Phone.resourceName + '/stopSyncedSound',
        JSON.stringify(_0x558070)
      )
    }
  }
}
String.prototype.formatText = function () {
  var _0x24d292 = arguments
  return this.replace(/{(\d+)}/g, function (_0x39585c, _0x34ce59) {
    return typeof _0x24d292[_0x34ce59] != 'undefined'
      ? _0x24d292[_0x34ce59]
      : _0x39585c
  })
}
ESX.Phone.functions.cleanText = function (_0x180794) {
  return _0x180794
    ? _0x180794.replace(/\</g, '&lt;').replace(/\>/g, '&gt;')
    : ''
}
ESX.Phone.functions.cleanText2 = function (_0x6d5265) {
  let _0x34121f = document.createElement('DIV')
  return (
    (_0x34121f.innerHTML = _0x6d5265),
    _0x34121f.textContent || _0x34121f.innerText || ''
  )
}
ESX.Phone.functions.addButton('.notifbox', function () {
  $('.notifbox').removeClass('visible')
  ESX.Phone.currentNotification = ''
})
ESX.Phone.functions.formatNumber = function (text) {
  return text.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ' ')
}
ESX.Phone.functions.formatTime = function (_0x41fb4a) {
  var _0x326f3e =
    Math.floor(_0x41fb4a / 60) > 0 ? Math.floor(_0x41fb4a / 60) : 0,
    _0x53f7a7 = _0x41fb4a % 60,
    _0x4d9aca =
      _0x326f3e > 0 ? _0x326f3e + 'min ' + _0x53f7a7 + 's' : _0x53f7a7 + 's'
  return _0x4d9aca
}
ESX.Phone.functions.formatTime2 = function (_0x580673) {
  var _0x2f1b6b =
    Math.floor(_0x580673 / 60) > 0 ? Math.floor(_0x580673 / 60) : 0
  var _0x4a1a9f =
    Math.floor(_0x2f1b6b / 60) >= 0 ? Math.floor(_0x2f1b6b / 60) : 0
  _0x2f1b6b = _0x4a1a9f > 0 ? _0x2f1b6b % 60 : _0x2f1b6b
  _0x2f1b6b = _0x2f1b6b < 10 ? '0' + _0x2f1b6b : _0x2f1b6b
  var _0x3248c6 = _0x580673 % 60
  _0x3248c6 = _0x3248c6 < 10 ? '0' + _0x3248c6 : _0x3248c6
  var _0x15b518 = (_0x4a1a9f = _0x4a1a9f < 10 ? '0' + _0x4a1a9f : _0x4a1a9f)
  var _0x412414 =
    _0x4a1a9f > 0
      ? _0x15b518 + ':' + _0x2f1b6b + ':' + _0x3248c6
      : _0x2f1b6b + ':' + _0x3248c6
  return _0x412414
}
ESX.Phone.functions.imageDate = function (_0x5f1c07) {
  var _0x812d68 = _0x5f1c07.getHours(),
    _0x1c302b = _0x5f1c07.getMinutes()
  let _0x313af6 = Config.TimeFormat == 1 ? (_0x812d68 >= 12 ? 'PM' : 'AM') : ''
  _0x812d68 =
    Config.TimeFormat == 1 ? (_0x812d68 % 12 ? _0x812d68 % 12 : 12) : _0x812d68
  _0x1c302b = _0x1c302b < 10 ? '0' + _0x1c302b : _0x1c302b
  let _0x3966ae = Locales[Config.Language].months[_0x5f1c07.getMonth()],
    _0x387240 = _0x5f1c07.getDate()
  return {
    day:
      _0x5f1c07.getDate() == new Date().getDate()
        ? Locales[Config.Language].today
        : _0x5f1c07.getDate() == new Date(Date.now() - 86400000).getDate()
          ? Locales[Config.Language].yesterday
          : _0x3966ae + ' ' + _0x387240,
    time: _0x812d68 + ':' + _0x1c302b + ' ' + _0x313af6,
  }
}
ESX.Phone.functions.formatDate = function (_0x2e73db) {
  let _0x4fa145 = new Date(),
    _0x3e0230 = new Date(_0x2e73db),
    _0x1140d9 = _0x3e0230.getFullYear(),
    _0x2e0d7a =
      _0x3e0230.getMonth() + 1 < 10
        ? '0' + (_0x3e0230.getMonth() + 1)
        : _0x3e0230.getMonth() + 1,
    _0x34cda4 =
      _0x3e0230.getDate() < 10
        ? '0' + _0x3e0230.getDate()
        : _0x3e0230.getDate(),
    _0x2e3e7a = _0x3e0230.getHours(),
    _0x3e1d29 = Config.TimeFormat == 1 ? (_0x2e3e7a >= 12 ? 'PM' : 'AM') : ''
  _0x2e3e7a =
    Config.TimeFormat == 1 ? (_0x2e3e7a % 12 ? _0x2e3e7a % 12 : 12) : _0x2e3e7a
  let _0x2cdaa8 =
    _0x3e0230.getMinutes() < 10
      ? '0' + _0x3e0230.getMinutes()
      : _0x3e0230.getMinutes()
  if (
    _0x4fa145.getDate() == _0x3e0230.getDate() &&
    _0x3e0230.getMonth() + 1 == _0x4fa145.getMonth() + 1
  ) {
    return _0x2e3e7a + ':' + _0x2cdaa8 + ' ' + _0x3e1d29
  }
  if (
    _0x4fa145.getDate() - 1 == _0x3e0230.getDate() &&
    _0x3e0230.getMonth() + 1 == _0x4fa145.getMonth() + 1
  ) {
    return (
      Locales[Config.Language].yesterday +
      ' ' +
      _0x2e3e7a +
      ':' +
      _0x2cdaa8 +
      ' ' +
      _0x3e1d29
    )
  }
  if (
    _0x4fa145.getDate() - 1 > _0x3e0230.getDate() ||
    _0x3e0230.getMonth() + 1 != _0x4fa145.getMonth() + 1
  ) {
    return Config.DateFormat.replace('%y', _0x1140d9)
      .replace('%m', _0x2e0d7a)
      .replace('%d', _0x34cda4)
  }
  return Locales[Config.Language].notifications.error
}
ESX.Phone.functions.formatDate2 = function (_0x49da64) {
  var _0x38d7cc =
    Config.TimeFormat == 1
      ? _0x49da64.getHours() % 12
        ? _0x49da64.getHours() % 12
        : 12
      : _0x49da64.getHours()
  var _0x5a99ae = _0x49da64.getMinutes()
  _0x38d7cc = _0x38d7cc < 10 ? '0' + _0x38d7cc : _0x38d7cc
  _0x5a99ae = _0x5a99ae < 10 ? '0' + _0x5a99ae : _0x5a99ae
  return _0x38d7cc + ':' + _0x5a99ae
}
ESX.Phone.functions.formatDate3 = function (_0x37da14) {
  var _0x5c9335 = Locales[Config.Language].months[_0x37da14.getMonth()],
    _0x6841b = Locales[Config.Language].weekdays[_0x37da14.getDay()],
    _0x540faf =
      _0x37da14.getDate() < 10 ? '0' + _0x37da14.getDate() : _0x37da14.getDate()
  return _0x6841b + ', ' + _0x5c9335 + ' ' + _0x540faf
}
ESX.Phone.functions.formatDate4 = function (_0xf6dd0e) {
  var _0x1dc2e1 =
    _0xf6dd0e.getMonth() + 1 < 10
      ? '0' + (_0xf6dd0e.getMonth() + 1)
      : _0xf6dd0e.getMonth() + 1,
    _0x5cd496 =
      _0xf6dd0e.getDate() < 10 ? '0' + _0xf6dd0e.getDate() : _0xf6dd0e.getDate()
  return _0x1dc2e1 + '-' + _0x5cd496
}
ESX.Phone.functions.formatDate5 = function (_0x5d1b8b) {
  let _0x1114b4 = new Date(_0x5d1b8b),
    _0x522568 = _0x1114b4.getFullYear()
  var _0x574b15 = Locales[Config.Language].months[
    _0x1114b4.getMonth()
  ].substring(0, 3),
    _0x44d6c5 = _0x1114b4.getDate()
  return _0x574b15 + ' ' + _0x44d6c5 + ', ' + _0x522568
}
ESX.Phone.functions.notifDate = function (_0x1e91df) {
  let _0x21cecf = (Date.now() - _0x1e91df) / 1000
  let _0x317f07 = Math.floor(_0x21cecf / 60)
  if (_0x317f07 == 0) {
    return Locales[Config.Language].justnow
  }
  let _0x413f17 = Math.floor(_0x317f07 / 60)
  let _0x5a727 = Math.floor(_0x21cecf % 60)
  return _0x413f17 > 0
    ? ESX.Phone.functions.formatDate2(_0x1e91df)
    : Locales[Config.Language].minutesago.formatText(_0x317f07)
}
ESX.Phone.functions.urlExists = function (_0x2241aa) {
  return new Promise((_0x118a1f) => {
    $.ajax({
      type: 'HEAD',
      url: _0x2241aa,
      success: function () {
        _0x118a1f(true)
      },
      error: function () {
        _0x118a1f(_0x2241aa == '')
      },
    })
  })
}
ESX.Phone.functions.pickerHandler = function (_0x59b752) {
  _0x59b752.on('emoji', async (_0x54953b) => {
    if (
      ESX.Phone.currentApp != 'Darkchat' &&
      ESX.Phone.currentApp != 'Twitter'
    ) {
      $(
        '.more > .more-items > .icon[data-action="openemojimenu"] > .icon'
      ).html(_0x54953b.emoji)
      if (ESX.Phone.currentChat.number) {
        $('.messages .privatechat .text').val(
          $('.messages .privatechat .text').val() + _0x54953b.emoji
        )
      } else {
        let _0x24c5ac = document.forms.newmessage
        _0x24c5ac.elements.content.value += _0x54953b.emoji
      }
    } else {
      if (ESX.Phone.currentApp == 'Twitter') {
        if (!lastClosestTweet) {
          $('.twitter > .post .inputs textarea').val(
            $('.twitter > .post .inputs textarea').val() + _0x54953b.emoji
          )
        } else {
          $(
            '.tweet[data-id="' +
            lastClosestTweet +
            '"] > .content > .reply input'
          ).val(
            $(
              '.tweet[data-id="' +
              lastClosestTweet +
              '"] > .content > .reply input'
            ).val() + _0x54953b.emoji
          )
        }
        lastClosestTweet = undefined
      } else {
        ESX.Phone.currentApp == 'Darkchat' &&
          ($(
            '.more > .more-items > .icon[data-action="openemojimenu"] > .icon'
          ).html(_0x54953b.emoji),
            $('.darkchat .privatechat .text').val(
              $('.messages .privatechat .text').val() + _0x54953b.emoji
            ))
      }
    }
  })
}
$(document).ready(function () {
  $.post('http://' + ESX.Phone.resourceName + '/nuiLoaded', JSON.stringify({}))
  document
    .querySelectorAll('p, button, label, span')
    .forEach(function (_0x4d57ca) {
      var _0x55681f = Handlebars.compile(_0x4d57ca.innerHTML)
      _0x4d57ca.innerHTML = _0x55681f(Locales[Config.Language].html)
    })
  document.querySelectorAll('input, textarea').forEach(function (_0x510fa9) {
    var _0x68b61a = Handlebars.compile(_0x510fa9.placeholder)
    _0x510fa9.placeholder = _0x68b61a(
      Locales[Config.Language].html.placeholders
    )
  })
  ESX.Phone.functions.loadAppstore()
  ESX.Phone.functions.initializeSettings()
  ESX.Phone.functions.reloadSettings()
  $('.bignotification').addClass(Config.OffNotificationPosition)
  for (const _0x53b47c in Config.BankScreens) {
    let _0x5cd99a = Config.BankScreens[_0x53b47c]
    if (!_0x5cd99a) {
      $(
        '.bank .mainscreen .buttons .button[data-action="' +
        _0x53b47c.toString().toLowerCase() +
        '"]'
      ).hide()
    }
  }
})
window.addEventListener('message', async function (_0x534f7a) {
  let _0x329c33 = _0x534f7a.data
  switch (_0x329c33.action) {
    case 'open':
      ESX.Phone.functions.open()
      break
    case 'close':
      ESX.Phone.functions.close()
      break
    case 'updateZoom':
      $('.camera .zoom').html(
        (_0x329c33.zoom.toFixed(1) % 1 == 0
          ? _0x329c33.zoom.toFixed(0)
          : _0x329c33.zoom.toFixed(1)) + 'x'
      )
      break
    case 'updateData':
      ; (ESX.Phone.number = _0x329c33.number),
        (ESX.Phone.identifier = _0x329c33.identifier),
        ESX.Phone.functions.updatePlayerSettings(
          _0x329c33.fullname,
          _0x329c33.id,
          _0x329c33.name,
          JSON.parse(_0x329c33.job)
        ),
        ESX.Phone.functions.updateMyData(_0x329c33.fullname, _0x329c33.number)
      _0x329c33.settings
        ? ((ESX.Phone.settings = JSON.parse(_0x329c33.settings)),
          ESX.Phone.functions.reloadSettings())
        : $.post(
          'http://' + ESX.Phone.resourceName + '/updateSettings',
          JSON.stringify({ settings: ESX.Phone.settings })
        )
      ESX.Phone.functions.setupApps()
      break
    case 'updateJob':
      ESX.Phone.playerJob = JSON.parse(_0x329c33.job)
      break
    case 'updateGallery':
      if (Config.SaveUploadedPhotos) {
        let _0x55ee6b = _0x329c33.photos
        ESX.Phone.gallery = _0x55ee6b
      }
      break
    case 'newAirdrop':
      ESX.Phone.functions.newAirdrop(
        _0x329c33.type,
        _0x329c33.senderName,
        _0x329c33.senderId,
        _0x329c33.data
      )
      break
    case 'newTweet':
      ESX.Phone.functions.addTweet(_0x329c33.tweet)
      break
    case 'deleteTweet':
      ESX.Phone.functions.deleteTweet(_0x329c33.tweetId)
      break
    case 'newReply':
      ESX.Phone.functions.addReply(_0x329c33.tweetId, _0x329c33.reply)
      break
    case 'newAd':
      ESX.Phone.functions.addAdvertisment(_0x329c33.ad)
      break
    case 'deleteAd':
      ESX.Phone.functions.deleteAd(_0x329c33.adId)
      break
    case 'updateCalls':
      ESX.Phone.functions.updateCalls(_0x329c33.calls, true)
      break
    case 'updateTweets':
      ESX.Phone.functions.loadTweets(_0x329c33.tweets)
      break
    case 'updateConfig':
      for (const _0x3bc486 in _0x329c33.config) {
        let _0x56a780 = _0x329c33.config[_0x3bc486]
        Config[_0x3bc486] = _0x56a780
        if (_0x3bc486 == 'mailFormat') {
          $('.emailformat').html(_0x56a780)
        }
      }
      break
    case 'updateTwitterUserData':
      ESX.Phone.functions.updateTwitterUser(_0x329c33.player)
      break
    case 'updateLikedTweets':
      ESX.Phone.functions.likedTweets(_0x329c33.tweets)
      break
    case 'updateAdCategories':
      ESX.Phone.functions.loadAdsCategories(_0x329c33.categories)
      break
    case 'updateAds':
      ESX.Phone.functions.loadAds(_0x329c33.ads)
      break
    case 'updateMail':
      ESX.Phone.functions.setupMail(_0x329c33.mail),
        ESX.Phone.functions.updateMailData(_0x329c33.mailData)
      break
    case 'newMail':
      ESX.Phone.functions.addMail(_0x329c33.data)
      break
    case 'updateDarkchatData':
      ESX.Phone.functions.updateDarkchatData(_0x329c33.data)
      break
    case 'updateDarkGroups':
      ESX.Phone.functions.setupDarkGroups(_0x329c33.groups)
      break
    case 'updateDarkGroup':
      ESX.Phone.functions.updateDarkGroup(_0x329c33.data)
      break
    case 'deleteDarkGroup':
      ESX.Phone.functions.deleteDarkGroup(_0x329c33.id)
      break
    case 'newDarkGroupMessage':
      ESX.Phone.functions.addDarkGroupMessage(
        _0x329c33.id,
        _0x329c33.from,
        _0x329c33.content,
        _0x329c33.attachments
      )
      break
    case 'updateChats':
      ESX.Phone.functions.setupChats(_0x329c33.chats)
      break
    case 'updateGroups':
      ESX.Phone.functions.setupGroups(_0x329c33.groups)
      break
    case 'updateGroup':
      ESX.Phone.functions.updateGroup(_0x329c33.data)
      break
    case 'updateChat':
      ESX.Phone.functions.updateChat(_0x329c33.data)
      break
    case 'addGroup':
      ESX.Phone.functions.addGroup(
        _0x329c33.id,
        _0x329c33.name,
        _0x329c33.photo,
        _0x329c33.members
      )
      break
    case 'deleteGroup':
      ESX.Phone.functions.deleteGroup(_0x329c33.id)
      break
    case 'newGroupMessage':
      ESX.Phone.functions.addGroupMessage(
        _0x329c33.id,
        _0x329c33.from,
        _0x329c33.content,
        _0x329c33.attachments
      )
      break
    case 'newMessage':
      ESX.Phone.functions.addMessage(
        _0x329c33.from,
        _0x329c33.content,
        _0x329c33.attachments,
        _0x329c33.job
      )
      break
    case 'incomingCall':
      ESX.Phone.functions.addIncomingCall(
        _0x329c33.id,
        _0x329c33.from,
        false,
        _0x329c33.anonymous
      )
      break
    case 'incomingJobCall':
      ESX.Phone.functions.addIncomingCall(
        _0x329c33.id,
        _0x329c33.from,
        true,
        _0x329c33.anonymous
      )
      break
    case 'endCall':
      ESX.Phone.functions.endCall(_0x329c33.number)
      break
    case 'changeCallStatus':
      ESX.Phone.functions.updateCallStatus(_0x329c33.status)
      break
    case 'updateContacts':
      ESX.Phone.functions.updateContacts(_0x329c33.contacts)
      break
    case 'updateNotes':
      ESX.Phone.functions.updateNotes(_0x329c33.notes)
      break
    case 'updateVehicles':
        ESX.Phone.functions.updateVehicles(_0x329c33.vehicles)
        break
    case 'updateBank':
      ESX.Phone.functions.setupInvoices(_0x329c33.invoices)
      ESX.Phone.functions.updateBank(_0x329c33.data)
      break
    case 'updateInvoices':
      ESX.Phone.functions.setupInvoices(_0x329c33.invoices)
      break
    case 'addMoneyRequest':
      ESX.Phone.functions.addRequest(_0x329c33.data.request)
      break
    case 'sendNotification':
      ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
      if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp(_0x329c33.app)) {
        if (ESX.Phone.open) {
          ESX.Phone.functions.sendNotification(
            Config.Applications[_0x329c33.app].notifications.icon,
            Config.Applications[_0x329c33.app].notifications.color,
            Config.Applications[_0x329c33.app].label,
            _0x329c33.content,
            _0x329c33.length
          )
        } else {
          ESX.Phone.functions.sendOffNotification(
            Config.Applications[_0x329c33.app].notifications.icon,
            Config.Applications[_0x329c33.app].notifications.color,
            Config.Applications[_0x329c33.app].label,
            _0x329c33.content,
            _0x329c33.length
          )
        }
      }
      break
  }
})
setInterval(() => {
  ESX.Phone.locked &&
    ESX.Phone.open &&
    ($('#lockscreen .bottomline').animate({ bottom: '3.5%' }, 1000),
      setTimeout(() => {
        $('#lockscreen .bottomline')
          .stop(true, false)
          .animate({ bottom: '1.5%' }, 1500)
      }, 800),
      $('.presstounlock').animate(
        {
          bottom: '4.5%',
          opacity: '1.0',
        },
        1000,
        function () {
          setTimeout(() => {
            $('.presstounlock').animate({ opacity: '0.0' }, 500, function () {
              $('.presstounlock').css('bottom', '1.5%')
            })
          }, 1500)
        }
      ))
}, 7500)
ESX.Phone.functions.lock = function () {
  ESX.Phone.functions.hideApps()
  ESX.Phone.locked = true
  $('#lockscreen .bg').addClass('no-transition').css({
    transform: 'translate3d(0, 0, 0)',
    opacity: '1.0',
  })
  $('#lockscreen')
    .addClass('no-transition')
    .css('transform', 'translate3d(0, 0, 0)')
  setTimeout(() => {
    $('#lockscreen .bg, #lockscreen').removeClass('no-transition')
  }, 5)
}
ESX.Phone.functions.unlock = function () {
  ESX.Phone.locked = false
  ESX.Phone.currentApp == 'Camera' &&
    ($.post(
      'http://' + ESX.Phone.resourceName + '/openCamera',
      JSON.stringify({
        frontCamera: ESX.Phone.frontCamera,
        portrait: ESX.Phone.currentCameraMode == 'portrait',
      })
    ),
      $('#gameview').show())
  let _0x1afc87 = $('.spyna')
  let _0x39f3d8 = $('#lockscreen')
  _0x1afc87.addClass('unlocked')
  setTimeout(() => {
    _0x39f3d8.addClass('blured')
    $('#lockscreen .bg').css({
      transform: 'translate3d(0, 100%, 0)',
      opacity: '0.0',
    })
    _0x39f3d8.css('transform', 'translate3d(0, -100%, 0)')
    ESX.Phone.functions.showApps()
    setTimeout(() => {
      _0x1afc87.removeClass('unlocked')
      _0x39f3d8.removeClass('blured')
    }, 500)
  }, 500)
}
setInterval(() => {
  $('#lockscreen .notificationlist')
    .find('.notification')
    .each(function () {
      $(this)
        .children('.timestamp')
        .html(ESX.Phone.functions.notifDate($(this).data('timestamp')))
    })
}, 30000)
ESX.Phone.functions.addButton('#lockscreen .button', function (_0x5adb9f) {
  let _0x5c814f = $(_0x5adb9f).data('action')
  if (_0x5c814f == 'flash') {
    ESX.Phone.flashlight = !ESX.Phone.flashlight
    if (ESX.Phone.flashlight) {
      $(_0x5adb9f).addClass('active')
    } else {
      $(_0x5adb9f).removeClass('active')
    }
    $.post(
      'http://' + ESX.Phone.resourceName + '/toggleFlashlight',
      JSON.stringify({ toggle: ESX.Phone.flashlight })
    )
  } else {
    _0x5c814f == 'camera' &&
      ($('.camera').detach().appendTo('.screen').addClass('lock-screen'),
        $('#lockscreen').css('transform', 'translate3d(-100%, 0, 0)'),
        $('.camera').addClass('no-transition').css({
          display: 'block',
          opacity: '1.0',
          transform: 'translate3d(100%, 0, 0)',
          'z-index': '99999',
        }),
        (ESX.Phone.currentLockApp = 'Camera'),
        $.post(
          'http://' + ESX.Phone.resourceName + '/openCamera',
          JSON.stringify({})
        ),
        ESX.Phone.functions.resetCamera(),
        $('#gameview').show(),
        setTimeout(() => {
          $('.camera')
            .removeClass('no-transition')
            .css('transform', 'translate3d(0, 0, 0)')
        }, 5))
  }
})
function checkToolsVisiblity() {
  let _0x1a3fb4 = $('#lockscreen .notificationtools'),
    _0x326f37 = $('#lockscreen .notificationlist'),
    _0xecca19 = _0x326f37.children().length
  if (_0xecca19 > 1) {
    if (!_0x1a3fb4.hasClass('visible')) {
      _0x1a3fb4.addClass('visible')
    }
  } else {
    _0x1a3fb4.removeClass('visible')
  }
  if (_0xecca19 > 4) {
    _0x1a3fb4.children('*[data-action="showall"]').removeClass('hidden')
  } else {
    _0x1a3fb4.children('*[data-action="showall"]').addClass('hidden')
  }
}
$(document).on(
  'mousedown',
  '#lockscreen .notificationlist .notification-wrapper',
  function (_0x4f7acc) {
    _0x4f7acc = _0x4f7acc || window.event
    let _0x3f609c = this,
      _0x160153 = $(_0x3f609c)
    _0x4f7acc.preventDefault()
    let _0x4b689d = 1 / ((ESX.Phone.settings.size.value + 50) / 100)
    let _0x1fbc8f = _0x160153.width(),
      _0x55f732 = _0x160153.children('.clear'),
      _0x454c81 = _0x160153.parent(),
      _0x4483c1 = _0x454c81.hasClass('expanded'),
      _0xcdc57c = document.querySelector('.screen'),
      _0x136ab6 = _0x55f732.get(0),
      _0x19524c = false
    document.onmouseup = _0x27e226
    document.onmousemove = _0x1527c3
    !_0x4483c1 &&
      _0x454c81.children('notification-wrapper').length <= 1 &&
      _0x160153.css('height', _0x160153.height() + 'px')
    _0x4483c1 =
      _0x454c81.children('.notification-wrapper').length <= 1 ? true : _0x4483c1
    if (!_0x4483c1) {
      _0x55f732 = _0x454c81.children('.clearall')
    }
    let _0x4c00b3 = _0x55f732.width(),
      _0xfead72 = _0x4f7acc.clientX + _0x4c00b3
    _0x55f732.addClass('no-transition')
    function _0x1527c3(_0x24ad5b) {
      _0x24ad5b = _0x24ad5b || window.event
      _0x24ad5b.preventDefault()
      pos1 = _0xfead72 - _0x24ad5b.clientX
      if (_0x4483c1) {
        if (pos1 * _0x4b689d < _0x1fbc8f) {
          _0x55f732.css({ width: pos1 * _0x4b689d + 'px' })
        } else {
          _0x55f732.css({ width: _0x1fbc8f + 'px' })
        }
        if (pos1 > 1 && !_0x19524c) {
          _0x19524c = true
          _0x160153.css('overflow', 'visible')
        }
      } else {
        if (pos1 > 1 && !_0x19524c) {
          _0x19524c = true
          !_0x4483c1
            ? _0x454c81.addClass('no-transition')
            : _0x160153.css('overflow', 'visible')
        }
        let _0x48d4c9 = (_0x55f732.width() / _0xcdc57c.clientWidth) * 100
        _0x454c81.css('left', -(pos1 * _0x4b689d) + 'px')
        _0x55f732.css({
          width: pos1 * _0x4b689d + 'px',
          right: -(pos1 * _0x4b689d) + 'px',
          '--opacity': _0x48d4c9 / 30,
        })
        if (_0x48d4c9 < 30) {
          _0x136ab6.lastData = {
            width: pos1 * _0x4b689d + 'px',
            right: -(pos1 * _0x4b689d) + 'px',
            left: -(pos1 * _0x4b689d) + 'px',
          }
        }
      }
    }
    function _0x27e226() {
      _0x55f732.removeClass('no-transition')
      if (!_0x4483c1) {
        _0x454c81.removeClass('no-transition')
      }
      setTimeout(() => {
        document.onmouseup = null
        document.onmousemove = null
        let _0x2004db =
          (_0x55f732.width() / document.querySelector('.screen').clientWidth) *
          100
        if (_0x2004db > 30 && _0x2004db < 70) {
          if (!_0x4483c1) {
            _0x454c81.css('left', _0x136ab6.lastData.left)
            const _0x1d0d2d = {
              width: _0x136ab6.lastData.width,
              right: _0x136ab6.lastData.right,
            }
            _0x55f732.css(_0x1d0d2d)
          } else {
            _0x55f732.css('width', '30%')
          }
        } else {
          if (_0x2004db < 30) {
            // _0x532527['--opacity'] = '0.0'
            // _0x55f732.css(_0x532527)
            if (!_0x4483c1) {
              _0x454c81.css('left', '')
            }
            let _0x58e8a6 = _0x160153.get(0),
              _0x445f85 = (_0x52560a) => {
                if (_0x52560a.propertyName != 'width') {
                  return
                }
                _0x58e8a6.removeEventListener('transitionend', _0x445f85)
                _0x52560a.target.style.width == '' &&
                  _0x160153.css('overflow', '')
              }
            _0x58e8a6.addEventListener('transitionend', _0x445f85)
          } else {
            if (_0x4483c1) {
              _0x55f732.addClass('faster').css('width', 'calc(100% + 0.4vw)')
              _0x160153.css('height', '0vw')
              _0x160153.children('.notification').css('opacity', '0.0')
              let _0xc1e99a = _0x160153.get(0),
                _0x45c1bf = (_0xde100c) => {
                  if (_0xde100c.propertyName != 'height') {
                    return
                  }
                  _0xc1e99a.removeEventListener('transitionend', _0x45c1bf)
                  _0x160153.remove()
                }
              _0xc1e99a.addEventListener('transitionend', _0x45c1bf)
              let _0x5c41ac = _0x454c81.children('.notification-wrapper')
              if (_0x5c41ac.first().is(_0x160153) && _0x5c41ac.length > 2) {
                _0x160153.next().css('--margin-top', '0vw')
              } else {
                if (_0x5c41ac.length == 2) {
                  _0x160153.next().css('--margin-top', '0vw')
                  let _0x49dbb3 = (_0x4821c6) => {
                    if (_0x4821c6.propertyName != 'height') {
                      return
                    }
                    _0x160153
                      .get(0)
                      .removeEventListener('transitionend', _0x49dbb3)
                    let _0x23be73 = (_0x24d38f) => {
                      if (_0x24d38f.propertyName != 'opacity') {
                        return
                      }
                      _0x454c81
                        .children('.tools')
                        .get(0)
                        .removeEventListener('transitionend', _0x23be73)
                      _0x454c81.children('.tools').remove()
                    }
                    _0x454c81
                      .children('.tools')
                      .get(0)
                      .addEventListener('transitionend', _0x23be73)
                    _0x454c81.removeClass('expanded')
                    _0x454c81.children('.clearall').remove()
                  }
                  _0x160153.get(0).addEventListener('transitionend', _0x49dbb3)
                } else {
                  if (_0x5c41ac.length <= 1) {
                    _0x454c81.removeAttr('data-title')
                    _0x454c81.css('margin-bottom', '0').removeClass('expanded')
                    let _0x56a0fb = _0x454c81.get(0),
                      _0x52565c = (_0x461bbe) => {
                        if (_0x461bbe.propertyName != 'height') {
                          return
                        }
                        _0x56a0fb.removeEventListener(
                          'transitionend',
                          _0x52565c
                        )
                        _0x454c81.remove()
                        checkToolsVisiblity()
                      }
                    _0x56a0fb.addEventListener('transitionend', _0x52565c)
                  }
                }
              }
            } else {
              _0x55f732.addClass('faster').css({
                width: 'calc(100% + 0.4vw)',
                right: 'calc(' + _0x55f732.css('right') + ' - 10vw)',
              })
              _0x454c81.css({
                height: _0x454c81.height() + 'px',
                left: 'calc(' + _0x454c81.css('left') + ' - 10vw)',
                'margin-bottom': '0',
              })
              setTimeout(() => {
                _0x454c81.css('height', '0vw')
              }, 5)
              let _0x2a0434 = _0x454c81.get(0),
                _0x1f568b = (_0x3a2410) => {
                  if (_0x3a2410.propertyName != 'height') {
                    return
                  }
                  _0x2a0434.removeEventListener('transitionend', _0x1f568b)
                  _0x454c81.remove()
                  checkToolsVisiblity()
                }
              _0x2a0434.addEventListener('transitionend', _0x1f568b)
            }
          }
        }
      }, 0)
    }
  }
)
const appstorecategoriessb = new ScrollBooster({
  viewport: document.querySelector('.appstore .categories'),
  content: document.querySelector('.appstore .categories'),
  scrollMode: 'native',
  direction: 'horizontal',
})
ESX.Phone.functions.resetAppstore = function () {
  ESX.Phone.functions.updateAppstoreCategory('default')
  setTimeout(() => {
    ESX.Phone.functions.updateDownloads(
      ESX.Phone.settings.downloadedapps.value,
      true
    )
  }, 0)
  $('#appstoresearch').val('')
  $('.appstore .searchresults').addClass('no-transition').css('bottom', '-100%')
  setTimeout(() => {
    $('.appstore .searchresults').removeClass('no-transition')
  }, 5)
}
ESX.Phone.functions.loadAppstore = function () {
  for (const _0x1dccb7 in Config.AppstoreCategories) {
    let _0x3ba42b = Config.AppstoreCategories[_0x1dccb7]
    $('.appstore .categories').append(
      '<p class="category ' +
      (_0x3ba42b.default ? 'active' : '') +
      '" data-category="' +
      _0x1dccb7 +
      '">' +
      _0x3ba42b.label +
      '</p>'
    )
  }
  ESX.Phone.functions.loadAppstoreApps(Config.Applications)
  let _0x3b9b48 = Config.Applications[Config.AppstoreFeaturedApp],
    _0x5aacf9 = '',
    _0x6b15d6 =
      typeof _0x3b9b48.background == 'object'
        ? 'background: linear-gradient(to bottom, ' +
        _0x3b9b48.background[0] +
        ', ' +
        _0x3b9b48.background[1] +
        ')'
        : 'background: ' + _0x3b9b48.background
  if (_0x3b9b48.icon_image == '') {
    _0x5aacf9 =
      ' <div class="icon" style="' +
      _0x6b15d6 +
      '"><i class="' +
      _0x3b9b48.icon +
      ' icon" style="color: ' +
      _0x3b9b48.icon_color +
      '"></i></div>'
  } else {
    _0x5aacf9 =
      ' <div class="icon" style="background: url(media/icons/' +
      _0x3b9b48.icon_image +
      ');background-size: 100% 100%;"></div>'
  }
  $('.appstore .featured').append(
    '<div class="application" data-app="' +
    Config.AppstoreFeaturedApp +
    '">\n        ' +
    _0x5aacf9 +
    '\n        <div class="info">\n            <p class="title">' +
    _0x3b9b48.label +
    '</p>\n            <p class="description">' +
    _0x3b9b48.description +
    '</p>\n        </div>\n        <div class="button">\n            <i class="fal fa-arrow-circle-down icon"></i>\n        </div>\n        <div class="downloader" style="display: none;">\n            <canvas width="50" height="50"></canvas>\n        </div>\n    </div>'
  )
}
ESX.Phone.functions.loadAppstoreApps = function (_0xb63e03) {
  $('.appstore .applications').html('')
  for (const _0x3ee4b3 in _0xb63e03) {
    let _0x5734d6 = _0xb63e03[_0x3ee4b3]
    if (_0x5734d6.downloadable) {
      let _0xeedf45 = '',
        _0xcb205d =
          typeof _0x5734d6.background == 'object'
            ? 'background: linear-gradient(to bottom, ' +
            _0x5734d6.background[0] +
            ', ' +
            _0x5734d6.background[1] +
            ')'
            : 'background: ' + _0x5734d6.background
      if (_0x5734d6.icon_image == '') {
        _0xeedf45 =
          ' <div class="icon" style="' +
          _0xcb205d +
          '"><i class="' +
          _0x5734d6.icon +
          ' icon" style="color: ' +
          _0x5734d6.icon_color +
          '"></i></div>'
      } else {
        _0xeedf45 =
          ' <div class="icon" style="background: url(media/icons/' +
          _0x5734d6.icon_image +
          ');background-size: 100% 100%;"></div>'
      }
      $('.appstore .applications').append(
        '<div class="application" data-app="' +
        _0x3ee4b3 +
        '">\n                ' +
        _0xeedf45 +
        '\n                <div class="info">\n                    <p class="title">' +
        _0x5734d6.label +
        '</p>\n                    <p class="description">' +
        _0x5734d6.description +
        '</p>\n                </div>\n                <div class="button">\n                    <span></span>\n                </div>\n                <div class="downloader" style="display: none;">\n                    <canvas width="50" height="50"></canvas>\n                </div>\n                <div class="line"></div>\n            </div>'
      )
    }
  }
}
ESX.Phone.functions.updateDownloads = function (_0x28dce1, _0x446fa9) {
  !_0x28dce1 &&
    ((_0x28dce1 = []),
      ESX.Phone.functions.setSetting(
        'downloadedapps',
        _0x28dce1,
        true,
        'invisible'
      ))
  let _0x45e34e = $('.appstore .downloads .downloadcount > span')
  if (_0x45e34e.text() == '') {
    $('.appstore .downloads .downloadcount').hide()
  }
  _0x45e34e.stop(true, true).fadeOut(150, function () {
    _0x45e34e.text(_0x28dce1.length).fadeIn(150)
    $('.appstore .downloads .downloadcount')
      .css('width', _0x45e34e.width() + 'px')
      .stop(true, true)
      .fadeIn(150)
  })
  if (
    ESX.Phone.functions.hasApp(Config.AppstoreFeaturedApp) ||
    ESX.Phone.downloading[Config.AppstoreFeaturedApp]
  ) {
    $('.appstore .featured .application > .button').fadeOut(150)
  } else {
    $('.appstore .featured .application > .button').fadeIn(150)
  }
  for (const _0x4cdd89 in Config.Applications) {
    let _0x3a0800 = Config.Applications[_0x4cdd89],
      _0x5ba891 = _0x4cdd89
    if (_0x3a0800.downloadable) {
      let _0x41b8ff = _0x28dce1.find((_0x540650) => _0x4cdd89 == _0x540650)
      if (_0x41b8ff) {
        if (!_0x446fa9) {
          let _0x56d284 = $(
            '.appstore .applications > .application[data-app="' +
            _0x5ba891 +
            '"] > .button > span'
          )
          if (_0x56d284.html() == Locales[Config.Language].removeapp) {
            continue
          }
          _0x56d284.stop(true, true).fadeOut(150, function () {
            _0x56d284.text(Locales[Config.Language].removeapp).fadeIn(150)
            $(
              '.appstore .applications > .application[data-app="' +
              _0x5ba891 +
              '"] > .button'
            ).css('width', _0x56d284.width() + 'px')
          })
        } else {
          let _0x4bd553 = $(
            '.appstore .applications > .application[data-app="' +
            _0x5ba891 +
            '"] > .button > span'
          )
          _0x4bd553.text(Locales[Config.Language].removeapp)
          $(
            '.appstore .applications > .application[data-app="' +
            _0x5ba891 +
            '"] > .button'
          )
            .addClass('no-transition')
            .css('width', _0x4bd553.width() + 'px')
          setTimeout(() => {
            $(
              '.appstore .applications > .application[data-app="' +
              _0x5ba891 +
              '"] > .button'
            ).removeClass('no-transition')
          }, 5)
        }
      } else {
        if (!_0x446fa9) {
          let _0x1c7b78 = $(
            '.appstore .applications > .application[data-app="' +
            _0x5ba891 +
            '"] > .button > span'
          )
          if (_0x1c7b78.html() == Locales[Config.Language].getapp) {
            continue
          }
          _0x1c7b78.stop(true, true).fadeOut(150, function () {
            _0x1c7b78.text(Locales[Config.Language].getapp).fadeIn(150)
            $(
              '.appstore .applications > .application[data-app="' +
              _0x5ba891 +
              '"] > .button'
            ).css('width', _0x1c7b78.width() + 'px')
          })
        } else {
          let _0x341ba5 = $(
            '.appstore .applications > .application[data-app="' +
            _0x5ba891 +
            '"] > .button > span'
          )
          _0x341ba5.text(Locales[Config.Language].getapp)
          $(
            '.appstore .applications > .application[data-app="' +
            _0x5ba891 +
            '"] > .button'
          )
            .addClass('no-transition')
            .css('width', _0x341ba5.width() + 'px')
          setTimeout(() => {
            $(
              '.appstore .applications > .application[data-app="' +
              _0x5ba891 +
              '"] > .button'
            ).removeClass('no-transition')
          }, 5)
        }
      }
    }
  }
}
ESX.Phone.functions.startDownload = function (_0x123f81) {
  let _0x59831e = Config.Applications[_0x123f81]
  if (
    !ESX.Phone.downloading[_0x123f81] &&
    $('.appstore .application[data-app="' + _0x123f81 + '"] .button').is(
      ':visible'
    )
  ) {
    $('.appstore .application[data-app="' + _0x123f81 + '"] .button').fadeOut(
      150,
      function () {
        $(
          '.appstore .application[data-app="' + _0x123f81 + '"] .downloader'
        ).fadeIn(150)
      }
    )
    let _0x58f8c5 = 0
    ESX.Phone.downloading[_0x123f81] = {}
    ESX.Phone.downloading[_0x123f81].timeout = setTimeout(() => {
      ESX.Phone.settings.downloadedapps.value.push(_0x123f81)
      if (typeof _0x59831e.notifCount != 'number') {
        _0x59831e.notifCount = 0
      }
      let _0x273af0 = '',
        _0x2029df =
          typeof _0x59831e.background == 'object'
            ? 'background: linear-gradient(to bottom, ' +
            _0x59831e.background[0] +
            ', ' +
            _0x59831e.background[1] +
            ')'
            : 'background: ' + _0x59831e.background,
        _0x5940ef = _0x59831e.notifCount > 0 ? _0x59831e.notifCount : ''
      if (_0x59831e.bottom) {
        if (_0x59831e.icon_image == '') {
          _0x273af0 =
            '<div class="app invisible" data-app="' +
            _0x123f81 +
            '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="' +
            _0x2029df +
            '"><i class="' +
            _0x59831e.icon +
            '" style="color: ' +
            _0x59831e.icon_color +
            ';' +
            (_0x59831e.icon_size ? 'font-size: ' + _0x59831e.icon_size : '') +
            '"></i></div></div><div class="notifications"><span>' +
            _0x5940ef +
            '</span></div></div></div>'
        } else {
          _0x273af0 =
            '<div class="app invisible" data-app="' +
            _0x123f81 +
            '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="background: url(media/icons/' +
            _0x59831e.icon_image +
            ');"></div></div><div class="notifications"><span>' +
            _0x5940ef +
            '</span></div></div></div>'
        }
        $('.bottomapps').append(_0x273af0)
        $('#' + _0x123f81)
          .detach()
          .appendTo(
            '.home .app[data-app="' + _0x123f81 + '"] > .app-wrapper > .inner'
          )
      } else {
        if (_0x59831e.icon_image == '') {
          _0x273af0 =
            '<div class="app invisible" data-app="' +
            _0x123f81 +
            '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="' +
            _0x2029df +
            '"><i class="' +
            _0x59831e.icon +
            '" style="color: ' +
            _0x59831e.icon_color +
            ';' +
            (_0x59831e.icon_size ? 'font-size: ' + _0x59831e.icon_size : '') +
            '"></i></div></div><div class="notifications"><span>' +
            _0x5940ef +
            '</span></div></div><p class="name">' +
            _0x59831e.label +
            '</p></div>'
        } else {
          _0x273af0 =
            '<div class="app invisible" data-app="' +
            _0x123f81 +
            '"><div class="app-wrapper"><div class="inner"><div class="app-icon" style="background: url(media/icons/' +
            _0x59831e.icon_image +
            ');"></div></div><div class="notifications"><span>' +
            _0x5940ef +
            '</span></div></div><p class="name">' +
            _0x59831e.label +
            '</p></div>'
        }
        $('.mainapps').append(_0x273af0)
        $('#' + _0x123f81)
          .detach()
          .appendTo(
            '.home .app[data-app="' + _0x123f81 + '"] > .app-wrapper > .inner'
          )
      }
      setTimeout(() => {
        $('.home .app[data-app="' + _0x123f81 + '"]').removeClass('invisible')
        $(
          '.appstore .application[data-app="' + _0x123f81 + '"] .downloader'
        ).fadeOut(150)
        setTimeout(() => {
          ESX.Phone.functions.setSetting(
            'downloadedapps',
            ESX.Phone.settings.downloadedapps.value,
            true,
            'invisible'
          )
          $(
            '.appstore .applications .application[data-app="' +
            _0x123f81 +
            '"] .button'
          ).fadeIn(150)
        }, 150)
      }, 50)
      clearTimeout(ESX.Phone.downloading[_0x123f81].timeout)
      clearInterval(ESX.Phone.downloading[_0x123f81].interval)
      ESX.Phone.downloading[_0x123f81] = undefined
    }, _0x59831e.downloadTime)
    ESX.Phone.downloading[_0x123f81].interval = setInterval(() => {
      _0x58f8c5++
      downloadProgress(_0x123f81, _0x58f8c5)
    }, _0x59831e.downloadTime / 100)
  } else {
    ESX.Phone.downloading[_0x123f81] &&
      $('.appstore .application[data-app="' + _0x123f81 + '"] .downloader').is(
        ':visible'
      ) &&
      (clearTimeout(ESX.Phone.downloading[_0x123f81].timeout),
        clearInterval(ESX.Phone.downloading[_0x123f81].interval),
        $(
          '.appstore .application[data-app="' + _0x123f81 + '"] .downloader'
        ).fadeOut(150, function () {
          $(
            '.appstore .application[data-app="' + _0x123f81 + '"] .button'
          ).fadeIn(150, function () {
            ESX.Phone.downloading[_0x123f81] = undefined
          })
        }))
  }
}
ESX.Phone.functions.removeApp = function (_0x227530) {
  let _0x43d0c2 = ESX.Phone.settings.downloadedapps.value.indexOf(_0x227530)
  if (_0x43d0c2 > -1) {
    ESX.Phone.settings.downloadedapps.value.splice(_0x43d0c2, 1)
  }
  ESX.Phone.functions.setSetting(
    'downloadedapps',
    ESX.Phone.settings.downloadedapps.value,
    true,
    'invisible'
  )
  $('#' + _0x227530)
    .detach()
    .appendTo('.screen')
  $('.home .app[data-app="' + _0x227530 + '"]').remove()
}
ESX.Phone.functions.addDynamicButton(
  '.appstore .application > .button',
  function (_0x55c230) {
    let _0x86dbd2 = $(_0x55c230).parent().data('app')
    if (!ESX.Phone.functions.hasApp(_0x86dbd2)) {
      if (ESX.Phone.settings.airplane.value) {
        return ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          Locales[Config.Language].notifications.airplanecantdownload,
          Config.Notifications.Error.length
        )
      }
      ESX.Phone.functions.startDownload(_0x86dbd2)
    } else {
      ESX.Phone.functions.removeApp(_0x86dbd2)
    }
  }
)
ESX.Phone.functions.addDynamicButton(
  '.appstore .application > .downloader',
  function (_0x468f88) {
    let _0xd56893 = $(_0x468f88).parent().data('app')
    ESX.Phone.functions.startDownload(_0xd56893)
  }
)
ESX.Phone.functions.updateSearchResults = function (_0x22d6b8) {
  let _0x4a8d41 = 0
  $('.appstore .searchresults .applications > *')
    .each(function (_0xbf856b) {
      let _0x8b1028 = Config.Applications[$(this).data('app')]
      _0x8b1028.label.toString().toLowerCase().includes(_0x22d6b8.toString().toLowerCase())
        ? ($(this).stop(true, true).show(), _0x4a8d41++)
        : $(this).stop(true, true).hide()
    })
    .promise()
    .done(function () {
      if (_0x4a8d41 > 0) {
        $('.appstore .searchresults > .header .title')
          .css('opacity', '1.0')
          .html(Locales[Config.Language].foundresults.formatText(_0x4a8d41))
        $('.appstore .searchresults > .header .description')
          .css('opacity', '1.0')
          .html(Locales[Config.Language].searchquery.formatText(_0x22d6b8))
        $('.appstore .searchresults > .noresults').hide()
        $('.appstore .searchresults .line').css('opacity', '1.0')
      } else {
        $('.appstore .searchresults > .header .title').css('opacity', '0.0')
        $('.appstore .searchresults > .header .description').css(
          'opacity',
          '0.0'
        )
        $('.appstore .searchresults .line').css('opacity', '0.0')
        $('.appstore .searchresults > .noresults').show()
        $('.appstore .searchresults > .noresults > .description').html(
          Locales[Config.Language].searchquery.formatText(_0x22d6b8)
        )
      }
    })
}
ESX.Phone.functions.addButton('#closeresults', function () {
  $('.appstore .searchresults').css('bottom', '-100%')
})
$('#appstoresearch').on('input', function () {
  let _0x31075f = $('#appstoresearch').val()
  if (_0x31075f != '') {
    $('.appstore .searchresults').css('bottom', '-5%')
    ESX.Phone.functions.updateSearchResults(_0x31075f)
  } else {
    $('.appstore .searchresults').css('bottom', '-100%')
  }
})
ESX.Phone.functions.updateAppstoreCategory = function (_0x208801) {
  $(
    '.appstore .categories > .category[data-category="' +
    ESX.Phone.currentAppstoreCategory +
    '"]'
  ).removeClass('active')
  ESX.Phone.currentAppstoreCategory = _0x208801
  $(
    '.appstore .categories > .category[data-category="' + _0x208801 + '"]'
  ).addClass('active')
  $('.appstore .mainbox .applications > *').each(function (_0x2c9c7d) {
    let _0x19e7aa = Config.Applications[$(this).data('app')]
    _0x19e7aa.category != _0x208801 && _0x208801 != 'default'
      ? setTimeout(() => {
        $(this).css({
          height: '0vw',
          'margin-left': '-15vw',
          'margin-bottom': '0vw',
          opacity: '0.0',
        })
      }, 50 * _0x2c9c7d)
      : setTimeout(() => {
        $(this).css({
          height: '',
          'margin-left': '0vw',
          'margin-bottom': '',
          opacity: '1.0',
        })
      }, 50 * _0x2c9c7d)
  })
}
ESX.Phone.functions.addDynamicButton(
  '.appstore .categories > *',
  function (_0x1d2bef) {
    let _0x326c4f = $(_0x1d2bef).data('category')
    ESX.Phone.functions.updateAppstoreCategory(_0x326c4f)
  }
)
let rad = (Math.PI * 2) / 100
function drawProgress(_0x3c9fcb, _0x3c9d55) {
  _0x3c9fcb.save()
  _0x3c9fcb.translate(25, 25)
  _0x3c9fcb.beginPath()
  _0x3c9fcb.strokeStyle = ESX.Phone.settings.darkmode.value
    ? 'rgba(255, 255, 255, 0.2)'
    : 'rgba(0, 0, 0, 0.2)'
  _0x3c9fcb.lineWidth = 5
  _0x3c9fcb.arc(0, 0, 20, 0, Math.PI * 2)
  _0x3c9fcb.stroke()
  _0x3c9fcb.restore()
  _0x3c9fcb.save()
  _0x3c9fcb.translate(25, 25)
  _0x3c9fcb.beginPath()
  _0x3c9fcb.strokeStyle = '#49f'
  _0x3c9fcb.lineWidth = 5
  _0x3c9fcb.arc(0, 0, 20, -Math.PI / 2, -Math.PI / 2 + _0x3c9d55 * rad, false)
  _0x3c9fcb.stroke()
  _0x3c9fcb.restore()
}
function downloadProgress(_0x2077e5, _0x439d4c) {
  $(
    '.appstore .application[data-app="' + _0x2077e5 + '"] .downloader > canvas'
  ).each(function () {
    let _0x569c01 = $(this)[0].getContext('2d')
    _0x569c01.clearRect(0, 0, 50, 50)
    drawProgress(_0x569c01, _0x439d4c)
  })
}
var timeout
ESX.Phone.functions.resetCamera = function (_0x291c11) {
  ESX.Phone.frontCamera = false
  ESX.Phone.currentImage = 0
  ESX.Phone.functions.updateGallery(true)
  $('#images').addClass('no-transition').removeClass('image-focus')
  $('#images .content')
    .addClass('no-transition')
    .css('transform', 'translateX(0%)')
  $('.camera > .gameview').css('left', '')
  setTimeout(() => {
    $('#images, #images .content').removeClass('no-transition'),
      $('.camera .photos .controls, .camera .photos .header').hide()
  }, 5)
  _0x291c11
    ? ($('#images, .camera .bottomline').hide(), $('#cancel-takephoto').show())
    : ($('#images, .camera .bottomline').show(), $('#cancel-takephoto').hide())
  if (!Config.EnableImageAirdrop) {
    $('.airdrop-image').remove()
  }
  ESX.Phone.functions.updateCameraCarousel('photo')
}
ESX.Phone.functions.updateCameraCarousel = function (_0x423856) {
  _0x423856 == 'portrait' &&
    !ESX.Phone.frontCamera &&
    ESX.Phone.functions.toggleFrontCamera()
  $(
    '.camera .modes p[data-mode="' + ESX.Phone.currentCameraMode + '"]'
  ).removeClass('active')
  ESX.Phone.currentCameraMode = _0x423856
  $.post(
    'http://' + ESX.Phone.resourceName + '/changeCamera',
    JSON.stringify({ portrait: ESX.Phone.currentCameraMode == 'portrait' })
  )
  let _0x444abb = $('.camera .modes p[data-mode="' + _0x423856 + '"]')
  _0x444abb.addClass('active')
  $('.camera .modes').css('width', _0x444abb.width() + 'px')
  let _0x4a8785 = 0
  $('.camera .modes .carousel')
    .children()
    .each(function (_0x218323) {
      if (_0x218323 > 0 && $(this).data('mode') == _0x423856) {
        return (
          $('.camera .modes .carousel').css(
            'transform',
            'translateX(calc(-' + _0x4a8785 + 'px - ' + _0x218323 * 1 + 'vw))'
          ),
          false
        )
      } else {
        if ($(this).data('mode') != _0x423856) {
          _0x4a8785 += $(this).width()
        } else {
          if (_0x218323 == 0) {
            $('.camera .modes .carousel').css('transform', 'translateX(0px)')
          }
        }
      }
    })
}
ESX.Phone.functions.addDynamicButton(
  '.camera .modes .carousel > p',
  function (_0xc29658) {
    ESX.Phone.functions.updateCameraCarousel($(_0xc29658).data('mode'))
  }
)
document.addEventListener('mousedown', function (_0x17d269) {
  _0x17d269.which == 3 &&
    (ESX.Phone.currentApp == 'Camera' ||
      ESX.Phone.currentLockApp == 'Camera') &&
    $.post('http://' + ESX.Phone.resourceName + '/disableMouseFocus')
})
ESX.Phone.functions.resetGallery = function () {
  ESX.Phone.currentImage = 0
  ESX.Phone.functions.updateGallery()
  $('#gallery-images .content')
    .addClass('no-transition')
    .css('transform', 'translateX(0%)')
  setTimeout(() => {
    $('#gallery-images .content').removeClass('no-transition')
  }, 5)
  ESX.Phone.gallery.length == 0
    ? $(
      '.gallery .upper .controls, .photo-delete, .airdrop-image, .gallery .date'
    ).hide()
    : $(
      '.gallery .upper .controls, .photo-delete, .airdrop-image, .gallery .date'
    ).show()
}
ESX.Phone.functions.toggleFrontCamera = function () {
  if (ESX.Phone.currentCameraMode == 'portrait') {
    return ESX.Phone.functions.sendNotification(
      Config.Applications.Camera.notifications.icon,
      Config.Applications.Camera.notifications.color,
      Config.Applications.Camera.label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cantrotateinportrait,
      Config.Notifications.Success.length
    )
  }
  if (typeof timeout == 'undefined') {
    $('#gameview').addClass('rotated180')
    ESX.Phone.frontCamera = !ESX.Phone.frontCamera
    $.post(
      'http://' + ESX.Phone.resourceName + '/changeCamera',
      JSON.stringify({
        frontCamera: ESX.Phone.frontCamera,
        portrait: ESX.Phone.currentCameraMode == 'portrait',
      })
    )
    ESX.Phone.frontCamera
      ? setTimeout(() => {
        $('.camera > .gameview').css(
          'left',
          ESX.Phone.frontCamera ? '80%' : ''
        )
      }, 400)
      : $('.camera > .gameview').css('left', ESX.Phone.frontCamera ? '80%' : '')
    timeout = setTimeout(() => {
      $('#gameview').removeClass('rotated180'), (timeout = undefined)
    }, 1000)
  }
}
ESX.Phone.functions.addButton('#rotate-camera', function () {
  ESX.Phone.functions.toggleFrontCamera()
})
let deleteTimeout
ESX.Phone.functions.addDynamicButton('.photo-delete', function () {
  if (deleteTimeout) {
    return
  }
  let _0x4ed6dc = $('#gallery-images .content').children()[
    ESX.Phone.currentImage
  ]
  $(_0x4ed6dc).css('width', '0%')
  if (
    ESX.Phone.gallery[ESX.Phone.currentImage].url != '' &&
    Config.SaveUploadedPhotos
  ) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/deletePhoto',
      JSON.stringify({ url: ESX.Phone.gallery[ESX.Phone.currentImage].url })
    )
  }
  ESX.Phone.gallery.splice(ESX.Phone.currentImage, 1)
  ESX.Phone.currentImage =
    ESX.Phone.currentImage > 0
      ? ESX.Phone.currentImage - 1
      : ESX.Phone.currentImage
  ESX.Phone.functions.updateCurrentImage()
  ESX.Phone.gallery.length == 0 &&
    $(
      '.gallery .upper .controls, .photo-delete, .airdrop-image, .gallery .date'
    ).fadeOut(250)
  deleteTimeout = setTimeout(() => {
    $(_0x4ed6dc).remove()
    deleteTimeout = undefined
  }, 500)
})
var airdropImageCooldown
ESX.Phone.functions.addDynamicButton('.airdrop-image', async function () {
  if (uploadInProgress) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.uploadinprogress,
      Config.Notifications.Error.length
    )
  }
  if (airdropImageCooldown) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagesharingcooldown,
      Config.Notifications.Error.length
    )
  }
  uploadInProgress = true
  let _0x56bd01 = await ESX.Phone.functions.requestImage(ESX.Phone.currentImage)
  _0x56bd01
    ? ((uploadInProgress = false),
      $.post(
        'http://' + ESX.Phone.resourceName + '/shareImage',
        JSON.stringify({
          image:
            !_0x56bd01.includes('https://') && !_0x56bd01.includes('http://')
              ? 'https://' + _0x56bd01
              : _0x56bd01,
        })
      ),
      ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        Locales[Config.Language].notifications.sharedimage,
        Config.Notifications.Success.length
      ),
      (airdropImageCooldown = setTimeout(() => {
        airdropImageCooldown = undefined
      }, Config.AirdropImageCooldown)))
    : ESX.Phone.functions.sendNotification(
      Config.Applications.Gallery.notifications.icon,
      Config.Applications.Gallery.notifications.color,
      Config.Applications.Gallery.label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.erroruploadingimage,
      Config.Notifications.Error.length
    )
})
ESX.Phone.functions.updateGallery = function (_0x279328) {
  if (
    ESX.Phone.currentApp != 'Camera' &&
    ESX.Phone.currentApp != 'Gallery' &&
    ESX.Phone.currentLockApp != 'Camera'
  ) {
    return
  }
  $('#images .content').html('')
  $('#gallery-images .content').html('')
  ESX.Phone.currentImage = 0
  ESX.Phone.gallery.sort((_0x457b8a, _0x48209c) => {
    return _0x48209c.date - _0x457b8a.date
  })
  ESX.Phone.gallery.forEach((_0x4ef7df, _0xf57142) => {
    if (_0x279328) {
      $('#images .content').append('<img src="' + _0x4ef7df.src + '">')
    }
    if (!_0x279328) {
      $('#gallery-images .content').append('<img src="' + _0x4ef7df.src + '">')
    }
    if (_0xf57142 == ESX.Phone.gallery.length - 1) {
      ESX.Phone.functions.updateCurrentImage()
    }
  })
}
ESX.Phone.functions.addButton('#take-photo', function () {
  ESX.Phone.functions.playSound(Config.Sounds.Photo)
  $('#gameview').css('opacity', '0.0')
  MainRender.requestScreenshot().then((_0x1da158) => {
    $('#gameview').css('opacity', '1.0')
    currentTakePhoto
      ? ESX.Phone.functions.tookPhoto(_0x1da158)
      : (ESX.Phone.gallery.push({
        src: _0x1da158,
        date: Date.now(),
        url: '',
      }),
        ESX.Phone.functions.updateGallery(true))
  })
})
ESX.Phone.functions.updateCurrentImage = function () {
  if (ESX.Phone.gallery.length > 0) {
    let _0x1927c1 = ESX.Phone.functions.imageDate(
      new Date(ESX.Phone.gallery[ESX.Phone.currentImage].date)
    )
    $('.imageday').html(_0x1927c1.day)
    $('.imagetime').html(_0x1927c1.time)
    $('.imagenumber').html(
      ESX.Phone.currentImage + 1 + '/' + ESX.Phone.gallery.length
    )
    $('.imagelink').html(
      ESX.Phone.gallery[ESX.Phone.currentImage].url == ''
        ? Locales[Config.Language].uploadimage
        : ESX.Phone.gallery[ESX.Phone.currentImage].url
    )
    $('.imagelink').data('url', ESX.Phone.gallery[ESX.Phone.currentImage].url)
    $(
      (ESX.Phone.currentApp == 'Gallery' ? '#gallery-images' : '#images') +
      ' .content'
    ).css('transform', 'translateX(' + ESX.Phone.currentImage * 100 + '%)')
  }
}
function dataURItoBlob(_0x477655) {
  const _0xb437ac = atob(_0x477655.split(',')[1]),
    _0x523c85 = _0x477655.split(',')[0].split(':')[1].split(';')[0],
    _0x52bd63 = new ArrayBuffer(_0xb437ac.length),
    _0x296b23 = new Uint8Array(_0x52bd63)
  for (let _0x2cd780 = 0; _0x2cd780 < _0xb437ac.length; _0x2cd780++) {
    _0x296b23[_0x2cd780] = _0xb437ac.charCodeAt(_0x2cd780)
  }
  const _0x3b535e = { type: _0x523c85 }
  const _0x40a6f8 = new Blob([_0x52bd63], _0x3b535e)
  return _0x40a6f8
}
ESX.Phone.functions.requestImage = function (_0x3a58bb) {
  return new Promise((_0x599741) => {
    let _0x171bd3 = !ESX.Phone.gallery[_0x3a58bb]
      ? _0x3a58bb
      : ESX.Phone.gallery[_0x3a58bb].src
    if (
      !ESX.Phone.gallery[_0x3a58bb] ||
      ESX.Phone.gallery[_0x3a58bb].url == ''
    ) {
      if (Config.ImageUploadingType == 'DiscordWebhooks') {
        const _0x382eeb = new FormData()
        _0x382eeb.append('file', dataURItoBlob(_0x171bd3), 'screenshot.jpg')
        let _0x587f6a = {
          content: Config.ImageUploading[
            Config.ImageUploadingType
          ].Content.formatText(ESX.Phone.playerName, ESX.Phone.playerId),
        }
        _0x382eeb.append('payload_json', JSON.stringify(_0x587f6a))
        const _0x339ca1 = {
          method: 'POST',
          body: _0x382eeb,
        }
        fetch(Config.ImageUploading[Config.ImageUploadingType].Url, _0x339ca1)
          .then((_0x50e9a3) => _0x50e9a3.text())
          .then((_0x17165b) => {
            let _0x57bcdb =
              'cdn.discordapp.com/attachments/' +
              JSON.parse(_0x17165b).channel_id +
              '/' +
              JSON.parse(_0x17165b).attachments[0].id +
              '/screenshot.jpg'
            if (ESX.Phone.gallery[_0x3a58bb]) {
              ESX.Phone.gallery[_0x3a58bb].url = _0x57bcdb
              ESX.Phone.gallery[_0x3a58bb].src = 'https://' + _0x57bcdb
            }
            _0x599741(_0x57bcdb)
          })
          .catch((_0x396405) => _0x599741(false))
      } else {
        if (Config.ImageUploadingType == 'Imgur') {
          const _0x9fde4 = new FormData()
          _0x9fde4.append(
            Config.ImageUploading[Config.ImageUploadingType].Field,
            dataURItoBlob(_0x171bd3)
          )
          fetch(Config.ImageUploading[Config.ImageUploadingType].Url, {
            method: 'POST',
            body: _0x9fde4,
            headers: Config.ImageUploading[Config.ImageUploadingType].Headers,
            redirect: 'follow',
          })
            .then((_0x39d41c) => _0x39d41c.text())
            .then((_0x376aca) => {
              let _0x4f820a =
                'i.imgur.com/' + JSON.parse(_0x376aca).data.id + '.png'
              ESX.Phone.gallery[_0x3a58bb] &&
                ((ESX.Phone.gallery[_0x3a58bb].url = _0x4f820a),
                  (ESX.Phone.gallery[_0x3a58bb].src = 'https://' + _0x4f820a))
              _0x599741(_0x4f820a)
            })
            .catch((_0x59624c) => _0x599741(false))
        }
      }
    } else {
      _0x599741(ESX.Phone.gallery[_0x3a58bb].url)
    }
  })
}
var discordCooldown
ESX.Phone.functions.addButton('.imagelink', async function (_0x3a2354) {
  let _0x4725aa = $(_0x3a2354).data('url')
  if (_0x4725aa == '') {
    let _0x3e5237 = ESX.Phone.currentImage
    $('.imagelink').fadeOut(150, function () {
      $('.imagelink').html(Locales[Config.Language].uploadingimage),
        $('.imagelink').fadeIn(150)
    })
    let _0x20ea3c = await ESX.Phone.functions.requestImage(_0x3e5237)
    if (_0x20ea3c) {
      if (Config.SaveUploadedPhotos) {
        $.post(
          'http://' + ESX.Phone.resourceName + '/savePhoto',
          JSON.stringify({
            url: _0x20ea3c,
            src: 'https://' + _0x20ea3c,
            date: ESX.Phone.gallery[_0x3e5237].date,
          })
        )
      }
      _0x3e5237 == ESX.Phone.currentImage &&
        $('.imagelink').fadeOut(150, function () {
          ESX.Phone.functions.updateCurrentImage()
          $('.imagelink').fadeIn(150)
        })
    } else {
      $('.imagelink').fadeOut(150, function () {
        $('.imagelink').html(Locales[Config.Language].failedupload),
          $('.imagelink').fadeIn(150)
      })
    }
  } else {
    ESX.Phone.functions.copyToClipboard(_0x4725aa)
    ESX.Phone.functions.sendNotification(
      Config.Applications.Camera.notifications.icon,
      Config.Applications.Camera.notifications.color,
      Config.Applications.Camera.label,
      Locales[Config.Language].notifications.imageurlcopied,
      Config.Notifications.Success.length
    )
  }
})
ESX.Phone.functions.addButton('.controls .back', function () {
  if (ESX.Phone.currentImage > 0) {
    ESX.Phone.currentImage -= 1
  }
  ESX.Phone.functions.updateCurrentImage()
})
ESX.Phone.functions.addButton('.controls .next', function () {
  if (ESX.Phone.currentImage < ESX.Phone.gallery.length - 1) {
    ESX.Phone.currentImage += 1
  }
  ESX.Phone.functions.updateCurrentImage()
})
ESX.Phone.functions.addDynamicButton('.photos-back', function () {
  $('#images').removeClass('image-focus')
  $('.camera .photos .controls').fadeOut(150)
  $('.camera .photos .header').fadeOut(150)
})
ESX.Phone.functions.addButton('#images', function () {
  !$('#images').hasClass('image-focus') &&
    ESX.Phone.gallery.length > 0 &&
    ($('#images').addClass('image-focus'),
      $('.camera .photos .controls').fadeIn(150),
      $('.camera .photos .header').fadeIn(150))
})
var currentTakePhoto,
  currentTakePhotoApp = ''
ESX.Phone.functions.openTakePhoto = function (_0x3cf57a) {
  currentTakePhoto = _0x3cf57a
  currentTakePhotoApp = ESX.Phone.currentApp
  $('.camera').detach().appendTo('.screen').addClass('no-transition').css({
    display: 'block',
    opacity: '1.0',
    transform: 'translate3d(0, 100%, 0)',
    'z-index': '999999',
  })
  $.post('http://' + ESX.Phone.resourceName + '/openCamera', JSON.stringify({}))
  ESX.Phone.functions.resetCamera(true)
  $('#gameview').show()
  ESX.Phone.currentApp = 'Camera'
  setTimeout(() => {
    $('.camera')
      .removeClass('no-transition')
      .addClass('bottom')
      .css('transform', 'translate3d(0, 0, 0)')
  }, 5)
}
var currentTakenPhoto
ESX.Phone.functions.tookPhoto = function (_0x4c17f9) {
  currentTakenPhoto = _0x4c17f9
  $('.camera .preview').show()
  $('.camera .preview > img').attr('src', _0x4c17f9)
}
var uploadInProgress = false
ESX.Phone.functions.addButton('#use-photo', async function () {
  if (uploadInProgress) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications.Camera.notifications.icon,
      Config.Applications.Camera.notifications.color,
      Config.Applications.Camera.label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.uploadinprogress,
      Config.Notifications.Error.length
    )
  }
  uploadInProgress = true
  let _0x5ae8ab = await ESX.Phone.functions.requestImage(currentTakenPhoto)
  if (_0x5ae8ab) {
    uploadInProgress = false
    currentTakenPhoto = undefined
    $('.camera .preview').hide()
    currentTakePhoto(
      _0x5ae8ab.indexOf('http') > -1 ? _0x5ae8ab : 'http://' + _0x5ae8ab
    )
    ESX.Phone.functions.closeTakePhoto()
  } else {
    ESX.Phone.functions.sendNotification(
      Config.Applications.Camera.notifications.icon,
      Config.Applications.Camera.notifications.color,
      Config.Applications.Camera.label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.erroruploadingimage,
      Config.Notifications.Error.length
    )
  }
})
ESX.Phone.functions.addButton('#retake-photo', function () {
  currentTakenPhoto = undefined
  $('.camera .preview').hide()
})
ESX.Phone.functions.closeTakePhoto = function () {
  $('.camera').css('transform', 'translate3d(0, 100%, 0)')
  setTimeout(() => {
    $('.camera')
      .removeAttr('style')
      .detach()
      .appendTo('.home .app[data-app="Camera"] > .app-wrapper')
      .addClass('no-transition')
    ESX.Phone.currentApp = currentTakePhotoApp
    $.post(
      'http://' + ESX.Phone.resourceName + '/closeCamera',
      JSON.stringify({})
    )
    setTimeout(() => {
      $('.camera').removeClass('no-transition')
    }, 5)
    currentTakePhoto = undefined
    currentTakePhotoApp = ''
  }, 250)
}
ESX.Phone.functions.addButton('#cancel-takephoto', function () {
  ESX.Phone.functions.closeTakePhoto()
})
var currentPhotoSelector
ESX.Phone.functions.openPhotoSelector = function (_0x2db1cb) {
  currentPhotoSelector = _0x2db1cb
  $('.choosephoto').addClass('open')
  $('.choosephoto .title').html(
    Locales[Config.Language].totalphotos.formatText(ESX.Phone.gallery.length)
  )
  ESX.Phone.gallery.forEach((_0x327a09, _0x3d1e6d) => {
    $('.choosephoto > .photos').append(
      '<img src="' + _0x327a09.src + '" data-id="' + _0x3d1e6d + '">'
    )
  })
  if (ESX.Phone.gallery.length > 0) {
    $('.choosephoto > .select').show()
  } else {
    $('.choosephoto > .select').hide()
  }
}
$(document).on('click', function (_0x163150) {
  $(_0x163150.target).closest('.choosephoto').length < 1 &&
    currentPhotoSelector &&
    $(_0x163150.target).closest('#contextmenu').length < 1 &&
    $(_0x163150.target).closest('.more').length < 1 &&
    ESX.Phone.functions.closePhotoSelector()
})
ESX.Phone.functions.closePhotoSelector = function () {
  $('.choosephoto').removeClass('open')
  currentPhotoSelector = undefined
  selectedPhoto = -1
  setTimeout(() => {
    !currentPhotoSelector && $('.choosephoto > .photos').html('')
  }, 500)
}
var selectedPhoto = -1
ESX.Phone.functions.addDynamicButton(
  '.choosephoto .photos > *',
  function (_0xaa6bad) {
    if (selectedPhoto > -1) {
      $(
        '.choosephoto > .photos > img[data-id="' + selectedPhoto + '"]'
      ).removeClass('selected')
    }
    selectedPhoto = $(_0xaa6bad).data('id')
    $(_0xaa6bad).addClass('selected')
  }
)
ESX.Phone.functions.addButton(
  '.choosephoto .select',
  async function (_0x32b652) {
    if (uploadInProgress) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications.Gallery.notifications.icon,
        Config.Applications.Gallery.notifications.color,
        Config.Applications.Gallery.label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.uploadinprogress,
        Config.Notifications.Error.length
      )
    }
    if (selectedPhoto > -1) {
      uploadInProgress = true
      ESX.Phone.functions.smoothTextTransition(
        '.choosephoto .select',
        Locales[Config.Language].uploadingimage
      )
      let _0x50db9b = await ESX.Phone.functions.requestImage(selectedPhoto)
      _0x50db9b
        ? ((uploadInProgress = false),
          ESX.Phone.functions.smoothTextTransition(
            '.choosephoto .select',
            Locales[Config.Language].html.select
          ),
          currentPhotoSelector(
            _0x50db9b.indexOf('http') > -1 ? _0x50db9b : 'http://' + _0x50db9b
          ),
          ESX.Phone.functions.closePhotoSelector())
        : ESX.Phone.functions.sendNotification(
          Config.Applications.Gallery.notifications.icon,
          Config.Applications.Gallery.notifications.color,
          Config.Applications.Gallery.label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          Locales[Config.Language].notifications.erroruploadingimage,
          Config.Notifications.Error.length
        )
    } else {
      ESX.Phone.functions.sendNotification(
        Config.Applications.Gallery.notifications.icon,
        Config.Applications.Gallery.notifications.color,
        Config.Applications.Gallery.label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.selectanimage,
        Config.Notifications.Error.length
      )
    }
  }
)
ESX.Phone.functions.addButton('.choosephoto .topline', function (_0x3070bb) {
  ESX.Phone.functions.closePhotoSelector()
})
const adssb = new ScrollBooster({
  viewport: document.querySelector('#adscontent'),
  content: document.querySelector('#adscontent'),
  scrollMode: 'native',
  direction: 'vertical',
}),
  categoriessb = new ScrollBooster({
    viewport: document.querySelector('.ads .categories'),
    content: document.querySelector('.ads .categories'),
    scrollMode: 'native',
    direction: 'horizontal',
  })
ESX.Phone.functions.resetAds = function () {
  $('.newadbox').addClass('no-transition').removeClass('visible')
  $('.ads > .header > .buttons').show()
  $('.ads > .header > .backbutton')
    .addClass('no-transition')
    .css({ width: '0vw' })
  $('.newchat').addClass('no-transition').removeClass('visible')
  setTimeout(() => {
    $('.newchat, .newadbox, .ads > .header > .backbutton').removeClass(
      'no-transition'
    )
  }, 5)
  Config.Applications.Ads.notifCount = 0
  ESX.Phone.functions.updateApp('Ads', 'notifications')
  if (ESX.Phone.settings.airplane.value) {
    $('#adscontent').hide()
    $('.ads-loader').show()
  } else {
    $('#adscontent').show()
    $('.ads-loader').hide()
    setTimeout(() => {
      ESX.Phone.functions.loadAds(ESX.Phone.ads)
    }, 0)
  }
}
ESX.Phone.functions.addDynamicButton('.ad > .cover', function (_0x184bad) {
  let _0x14f64a = $(_0x184bad).data('image')
  ESX.Phone.functions.previewImage(_0x14f64a)
})
ESX.Phone.functions.loadAds = function (_0x386774, _0x56383a) {
  let _0x1fddd0 =
    typeof _0x386774 == 'string' ? JSON.parse(_0x386774) : _0x386774
  $('#adscontent').html('')
  ESX.Phone.ads = _0x1fddd0
  if (ESX.Phone.currentApp != 'Ads') {
    return
  }
  let _0x28ac34 = ''
  _0x1fddd0.forEach((_0x313e32, _0x50ba09) => {
    if (
      (_0x56383a && _0x56383a == _0x313e32.job) ||
      ESX.Phone.currentAdsCategory == '' ||
      ESX.Phone.currentAdsCategory == _0x313e32.job
    ) {
      let _0xaa8065 = _0x313e32.author.charAt(0).toUpperCase(),
        _0xde8503 =
          _0x313e32.image != ''
            ? '<div class="cover" style="background-image: url(' +
            _0x313e32.image +
            ')" data-image="' +
            _0x313e32.image +
            '"><div class="job" ' +
            (ESX.Phone.adsCategories[_0x313e32.job]
              ? 'style="color: ' +
              ESX.Phone.adsCategories[_0x313e32.job].color +
              ';"'
              : '') +
            '>' +
            (ESX.Phone.adsCategories[_0x313e32.job]
              ? ESX.Phone.adsCategories[_0x313e32.job].label
              : Locales[Config.Language].individual) +
            '</div></div>'
            : '<div class="job" ' +
            (ESX.Phone.adsCategories[_0x313e32.job]
              ? 'style="color: ' +
              ESX.Phone.adsCategories[_0x313e32.job].color +
              ';"'
              : '') +
            '>' +
            (ESX.Phone.adsCategories[_0x313e32.job]
              ? ESX.Phone.adsCategories[_0x313e32.job].label
              : Locales[Config.Language].individual) +
            '</div>',
        _0x1ebecc =
          ESX.Phone.identifier == _0x313e32.owner
            ? '<div class="buttons">' +
            (Config.EditingAds
              ? '<div class="edit" data-action="edit"><i class="far fa-pencil icon"></i></div>'
              : '') +
            (Config.DeletingAds
              ? '<div class="delete" data-action="delete"><i class="far fa-trash-alt icon"></i></div>'
              : '') +
            '</div>'
            : '',
        _0x1f7d05 = _0x313e32.data ? JSON.parse(_0x313e32.data) : undefined,
        _0x569c1c =
          _0x1f7d05 && (_0x1f7d05.calls.enabled || _0x1f7d05.messages.enabled)
            ? '<div class="data">' +
            (_0x1f7d05.calls.enabled
              ? '<div class="databox" data-action="call" data-number="' +
              _0x1f7d05.calls.number +
              '"><i class="fas fa-phone-alt icon"></i><p class="data">' +
              _0x1f7d05.calls.number +
              '</p></div>'
              : '') +
            (_0x1f7d05.messages.enabled
              ? '<div class="databox" data-action="message" data-number="' +
              _0x1f7d05.messages.number +
              '"><i class="fas fa-comment icon"></i><p class="data">' +
              _0x1f7d05.messages.number +
              '</p></div>'
              : '') +
            '</div>'
            : ''
      _0x28ac34 +=
        '<div class="ad" data-id="' +
        _0x313e32.id +
        '">\n                ' +
        _0xde8503 +
        '\n                <p class="title">' +
        (!Config.EnableHTMLAds
          ? ESX.Phone.functions.cleanText(_0x313e32.title)
          : _0x313e32.title) +
        '</p>\n                <input type="text" spellcheck="false" maxlength="30" class="title" style="display: none">\n                <p class="content">' +
        (!Config.EnableHTMLAds
          ? ESX.Phone.functions.cleanText(_0x313e32.content)
          : _0x313e32.content) +
        '</p>\n                <textarea class="content" spellcheck="false" maxlength="255" style="display: none">' +
        (!Config.EnableHTMLAds
          ? ESX.Phone.functions.cleanText(_0x313e32.content)
          : _0x313e32.content) +
        '</textarea>\n                ' +
        _0x569c1c +
        '\n                <hr>\n                <div class="bottom">\n                    <div class="author-avatar">' +
        _0xaa8065 +
        '</div>\n                    <p class="author-name">' +
        _0x313e32.author +
        '</p>\n\n                    <p class="timestamp">' +
        ESX.Phone.functions.formatDate(_0x313e32.time) +
        '</p>\n                    ' +
        _0x1ebecc +
        '\n                </div>\n            </div>'
    }
    _0x50ba09 == _0x1fddd0.length - 1 &&
      ($('#adscontent').html(_0x28ac34), adssb.updateMetrics())
  })
  categoriessb.updateMetrics()
}
ESX.Phone.functions.loadAdsCategories = function (_0x2b4f0e) {
  $('.ads .mainbox .categories').html('')
  let _0x1326ca = JSON.parse(_0x2b4f0e)
  _0x1326ca.forEach((_0x826905) => {
    typeof _0x826905.job == 'object' && (_0x826905.job = _0x826905.job[0])
    ESX.Phone.adsCategories[_0x826905.job] = _0x826905
  })
  $('.ads > .mainbox > .title').html(_0x1326ca[0].info.title)
  $('.ads > .mainbox > .description').html(_0x1326ca[0].info.description)
  _0x1326ca.forEach((_0x5b502b) => {
    if (typeof _0x5b502b.job == 'object') {
      _0x5b502b.job = _0x5b502b.job[0]
    }
    _0x5b502b.job != 'default' &&
      $('.ads .mainbox .categories').append(
        '<div class="category" data-category="' +
        _0x5b502b.job +
        '">\n                <img class="icon" src="' +
        _0x5b502b.icon +
        '">\n                <p class="title">' +
        _0x5b502b.label +
        '</p>\n            </div>'
      )
  })
}
$('#adscontent').scroll(function () {
  if (
    (this.scrollHeight - Math.abs(this.scrollTop)) / this.scrollHeight <
    0.99
  ) {
    $('.ads > .mainbox > .title').css('opacity', '0.0')
    $('.ads > .mainbox > .description').css('opacity', '0.0')
  } else {
    $('.ads > .mainbox > .title').css('opacity', '1.0')
    $('.ads > .mainbox > .description').css('opacity', '1.0')
  }
})
ESX.Phone.functions.addButton('.newad', function () {
  $('.ads > .header > .buttons').stop().fadeOut(250)
  $('.ads > .header > .backbutton').css('width', '4vw')
  $('.newadbox').addClass('visible')
})
ESX.Phone.functions.addButton('.ads > .header > .backbutton', function () {
  $('.ads > .header > .buttons').stop().fadeIn(250)
  $('.ads > .header > .backbutton').css('width', '0vw')
  $('.newadbox').removeClass('visible')
})
ESX.Phone.functions.addDynamicButton(
  '.ads > .mainbox > .categories > *',
  function (_0x10da19) {
    let _0x1e46e7 = $(_0x10da19).data('category')
    if (_0x1e46e7 == ESX.Phone.currentAdsCategory) {
      $(_0x10da19).removeClass('active')
      ESX.Phone.currentAdsCategory = ''
      ESX.Phone.functions.loadAds(ESX.Phone.ads)
      $('.ads > .mainbox > .title').html(
        ESX.Phone.adsCategories.default.info.title
      )
      $('.ads > .mainbox > .description').html(
        ESX.Phone.adsCategories.default.info.description
      )
      return
    }
    $('.ads > .mainbox > .title').html(
      ESX.Phone.adsCategories[_0x1e46e7].info.title
    )
    $('.ads > .mainbox > .description').html(
      ESX.Phone.adsCategories[_0x1e46e7].info.description
    )
    $(
      '.ads > .mainbox > .categories > .category[data-category="' +
      ESX.Phone.currentAdsCategory +
      '"]'
    ).removeClass('active')
    ESX.Phone.currentAdsCategory = _0x1e46e7
    ESX.Phone.functions.loadAds(ESX.Phone.ads, _0x1e46e7)
    $(_0x10da19).addClass('active')
  }
)
ESX.Phone.functions.addButton('#ads-notifications', function () {
  ESX.Phone.functions.setSetting(
    'adsnotifications',
    !ESX.Phone.settings.adsnotifications.value,
    true
  )
})
ESX.Phone.functions.addDynamicButton(
  '#adscontent .ad .buttons > *',
  function (_0x356ee1) {
    let _0x3e4216 = $(_0x356ee1).data('action'),
      _0x227b73 = $(_0x356ee1).closest('.ad')
    let _0x1bf27b = $(_0x227b73).data('id')
    if (_0x3e4216 == 'edit') {
      $(_0x227b73).children('p.title').hide()
      $(_0x227b73)
        .children('input.title')
        .show()
        .val($(_0x227b73).children('p.title').text())
      $(_0x227b73).children('p.content').hide()
      $(_0x227b73).children('textarea.content').show()
      $(_0x356ee1).data('action', 'save')
      $(_0x356ee1).children('.icon').attr('class', 'fas fa-check icon')
    } else {
      if (_0x3e4216 == 'save') {
        let _0xb9d640 = $(_0x227b73).children('input.title').val(),
          _0x1b3029 = $(_0x227b73).children('textarea.content').val()
        if (
          _0xb9d640 != $(_0x227b73).children('p.title').text() ||
          _0x1b3029 != $(_0x227b73).children('p.content').text()
        ) {
          $.post(
            'http://' + ESX.Phone.resourceName + '/editAd',
            JSON.stringify({
              id: _0x1bf27b,
              title: _0xb9d640,
              content: _0x1b3029,
            })
          )
        }
        $(_0x227b73)
          .children('p.title')
          .show()
          .html(
            !Config.EnableHTMLAds
              ? ESX.Phone.functions.cleanText(_0xb9d640)
              : _0xb9d640
          )
        $(_0x227b73).children('input.title').hide()
        $(_0x227b73)
          .children('p.content')
          .show()
          .html(
            !Config.EnableHTMLAds
              ? ESX.Phone.functions.cleanText(_0x1b3029)
              : _0x1b3029
          )
        $(_0x227b73).children('textarea.content').hide()
        $(_0x356ee1).data('action', 'edit')
        $(_0x356ee1).children('.icon').attr('class', 'far fa-pencil icon')
      } else {
        if (_0x3e4216 == 'delete') {
          $(_0x227b73).css({
            opacity: '0.0',
            'margin-top': -$(_0x227b73).get(0).clientHeight + 'px',
            'margin-bottom': '0vw',
          })
          setTimeout(() => {
            $(_0x227b73).remove()
          }, 500)
          const _0xa04df3 = { id: _0x1bf27b }
          $.post(
            'http://' + ESX.Phone.resourceName + '/deleteAd',
            JSON.stringify(_0xa04df3)
          )
        }
      }
    }
  }
)
ESX.Phone.functions.addDynamicButton(
  '#adscontent .ad .data > .databox',
  function (_0x401e78) {
    let _0x12aa0e = $(_0x401e78).data('action'),
      _0x227575 = $(_0x401e78).data('number')
    if (_0x12aa0e == 'call') {
      callFunction(_0x227575)
    } else {
      if (_0x12aa0e == 'message') {
        if (_0x227575 == ESX.Phone.number) {
          return ESX.Phone.functions.sendNotification(
            Config.Applications[ESX.Phone.currentApp].notifications.icon,
            Config.Applications[ESX.Phone.currentApp].notifications.color,
            Config.Applications[ESX.Phone.currentApp].label,
            '<strong>' +
            Locales[Config.Language].notifications.error +
            '</strong><br>' +
            Locales[Config.Language].notifications.cannotsendtoyourself,
            Config.Notifications.Error.length
          )
        }
        let _0x24d9b3 = ESX.Phone.functions.getContact(_0x227575)
        if (_0x24d9b3 != Locales[Config.Language].unknown) {
          let _0xac346f = ESX.Phone.chats.find(
            (_0x1e6778) => _0x1e6778.number == _0x227575
          )
          if (_0xac346f) {
            ESX.Phone.functions.openChat(_0xac346f)
          } else {
            ESX.Phone.functions.newChat(_0x24d9b3.name, _0x227575)
          }
        } else {
          let _0x41522a = ESX.Phone.chats.find(
            (_0x1f6dc0) => _0x1f6dc0.number == _0x227575
          )
          if (_0x41522a) {
            ESX.Phone.functions.openChat(_0x41522a)
          } else {
            let _0x13a115 = document.forms.newmessage
            _0x13a115.elements.name.value = ''
            _0x13a115.elements.number.value = _0x227575
            _0x13a115.elements.content.value = ''
            $('.newchat').detach().appendTo('.ads')
            setTimeout(() => {
              $('.newchat').addClass('visible')
            }, 5)
          }
        }
      }
    }
  }
)
ESX.Phone.functions.deleteAd = function (_0x5ac95e) {
  let _0x35b564 = $('#adscontent .ad[data-id="' + _0x5ac95e + '"]'),
    _0x12b8af = ESX.Phone.ads.findIndex(
      (_0x589124) => _0x589124.id == _0x5ac95e
    )
  if (_0x12b8af > -1) {
    ESX.Phone.ads.splice(_0x12b8af, 1)
  }
  let _0x318efa = $(_0x35b564).data('reply')
  _0x318efa &&
    $('#adscontent .ad[data-id="' + _0x318efa + '"] > .replies').children()
      .length == 1 &&
    ($('#adscontent .ad[data-id="' + _0x318efa + '"]').removeClass('comments'),
      $(
        '#adscontent .ad[data-id="' + _0x318efa + '"] > .content > .reply-line'
      ).css('height', '0vw'))
  $(_0x35b564).css({
    opacity: '0.0',
    'margin-top': -$(_0x35b564).get(0).clientHeight + 'px',
    'margin-bottom': '0vw',
  })
  setTimeout(() => {
    $(_0x35b564).remove()
  }, 500)
}
ESX.Phone.functions.addButton('#postad', async function () {
  if (
    !ESX.Phone.adsCategories.default.allowPosting &&
    !Object.values(ESX.Phone.adsCategories).find(
      (_0x570f7b) =>
        _0x570f7b.job != 'default' &&
        _0x570f7b.job == ESX.Phone.playerJob.name &&
        ESX.Phone.playerJob.grade >= _0x570f7b.jobGrade
    )
  ) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.donthaverequiredjob,
      2000
    )
  }
  let _0x19cbe7 = document.forms.newad,
    _0x5198d7 = _0x19cbe7.elements.title.value,
    _0x49600d = _0x19cbe7.elements.content.value,
    _0x408a7f = _0x19cbe7.elements.image.value
  if (_0x49600d.length < 3) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.adtooshort,
      2000
    )
  }
  if (_0x408a7f != '' && _0x408a7f.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      2000
    )
  }
  _0x408a7f =
    _0x408a7f == '' || _0x408a7f.indexOf('http') > -1
      ? _0x408a7f
      : 'http://' + _0x408a7f
  let _0xc107f6 = {
    calls: {
      enabled: $('#adcalls').prop('checked'),
      number: ESX.Phone.number,
    },
    messages: {
      enabled: $('#admessages').prop('checked'),
      number: ESX.Phone.number,
    },
  },
    _0x429924 = await ESX.Phone.functions.urlExists(_0x408a7f)
  if (!_0x429924) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/postAd',
    JSON.stringify({
      title: _0x5198d7,
      content: _0x49600d,
      image: _0x408a7f,
      data: JSON.stringify(_0xc107f6),
    })
  )
  _0x19cbe7.elements.title.value = ''
  _0x19cbe7.elements.content.value = ''
  _0x19cbe7.elements.image.value = ''
  $('#adcalls').prop('checked', false)
  $('#admessages').prop('checked', false)
  $('.ads > .header > .buttons').stop().fadeIn(250)
  $('.ads > .header > .backbutton').css('width', '0vw')
  $('.newadbox').removeClass('visible')
})
ESX.Phone.functions.addImageSelector(
  '.ads > .newadbox .upload',
  '.ads > .newadbox .image > input',
  true
)
ESX.Phone.functions.addAdvertisment = async function (_0x25e3cc) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0x259026 = JSON.parse(_0x25e3cc),
    _0x190222 = $('#adscontent').html(),
    _0x50038d = _0x259026.author.charAt(0).toUpperCase(),
    _0x3b663c =
      _0x259026.image != ''
        ? '<div class="cover" style="background-image: url(' +
        _0x259026.image +
        ')" data-image="' +
        _0x259026.image +
        '"><div class="job" ' +
        (ESX.Phone.adsCategories[_0x259026.job]
          ? 'style="color: ' +
          ESX.Phone.adsCategories[_0x259026.job].color +
          ';"'
          : '') +
        '>' +
        (ESX.Phone.adsCategories[_0x259026.job]
          ? ESX.Phone.adsCategories[_0x259026.job].label
          : Locales[Config.Language].individual) +
        '</div></div>'
        : '<div class="job" ' +
        (ESX.Phone.adsCategories[_0x259026.job]
          ? 'style="color: ' +
          ESX.Phone.adsCategories[_0x259026.job].color +
          ';"'
          : '') +
        '>' +
        (ESX.Phone.adsCategories[_0x259026.job]
          ? ESX.Phone.adsCategories[_0x259026.job].label
          : Locales[Config.Language].individual) +
        '</div>',
    _0xcf9684 =
      ESX.Phone.identifier == _0x259026.owner
        ? '<div class="buttons">' +
        (Config.EditingAds
          ? '<div class="edit" data-action="edit"><i class="far fa-pencil icon"></i></div>'
          : '') +
        (Config.DeletingAds
          ? '<div class="delete" data-action="delete"><i class="far fa-trash-alt icon"></i></div>'
          : '') +
        '</div>'
        : '',
    _0x1a8690 = _0x259026.data ? JSON.parse(_0x259026.data) : undefined,
    _0x1efd56 =
      _0x1a8690 && (_0x1a8690.calls.enabled || _0x1a8690.messages.enabled)
        ? '<div class="data">' +
        (_0x1a8690.calls.enabled
          ? '<div class="databox" data-action="call" data-number="' +
          _0x1a8690.calls.number +
          '"><i class="fas fa-phone-alt icon"></i><p class="data">' +
          _0x1a8690.calls.number +
          '</p></div>'
          : '') +
        (_0x1a8690.messages.enabled
          ? '<div class="databox" data-action="message" data-number="' +
          _0x1a8690.messages.number +
          '"><i class="fas fa-comment icon"></i><p class="data">' +
          _0x1a8690.messages.number +
          '</p></div>'
          : '') +
        '</div>'
        : ''
  let _0x51e27b =
    '<div class="ad" data-id="' +
    _0x259026.id +
    '">\n        ' +
    _0x3b663c +
    '\n        <p class="title">' +
    (!Config.EnableHTMLAds
      ? ESX.Phone.functions.cleanText(_0x259026.title)
      : _0x259026.title) +
    '</p>\n        <input type="text" spellcheck="false" maxlength="30" class="title" style="display: none">\n        <p class="content">' +
    (!Config.EnableHTMLAds
      ? ESX.Phone.functions.cleanText(_0x259026.content)
      : _0x259026.content) +
    '</p>\n        <textarea class="content" spellcheck="false" maxlength="255" style="display: none">' +
    (!Config.EnableHTMLAds
      ? ESX.Phone.functions.cleanText(_0x259026.content)
      : _0x259026.content) +
    '</textarea>\n        ' +
    _0x1efd56 +
    '\n        <hr>\n        <div class="bottom">\n            <div class="author-avatar">' +
    _0x50038d +
    '</div>\n            <p class="author-name" ' +
    (ESX.Phone.identifier == _0x259026.owner ? 'style="max-width: 4vw"' : '') +
    '>' +
    _0x259026.author +
    '</p>\n\n            <p class="timestamp">' +
    ESX.Phone.functions.formatDate(_0x259026.time) +
    '</p>\n            ' +
    _0xcf9684 +
    '\n        </div>\n    </div>'
  $('#adscontent').html(_0x51e27b + _0x190222)
  adssb.updateMetrics()
  ESX.Phone.ads.unshift(_0x259026)
  if (ESX.Phone.identifier == _0x259026.owner) {
    return
  }
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp('Ads')) {
    if (!ESX.Phone.settings.adsnotifications.value) {
      return
    }
    if (ESX.Phone.open) {
      ESX.Phone.currentApp != 'Ads' &&
        (Config.Applications.Ads.notifCount++,
          ESX.Phone.functions.updateApp('Ads', 'notifications')),
        ESX.Phone.functions.sendNotification(
          Config.Applications.Ads.notifications.icon,
          Config.Applications.Ads.notifications.color,
          Config.Applications.Ads.label,
          '<strong>' +
          _0x259026.author +
          ':</strong><br>' +
          (!Config.EnableHTMLAds
            ? ESX.Phone.functions.cleanText(_0x259026.content)
            : _0x259026.content),
          Config.Notifications.NewAd.length,
          JSON.stringify({
            app: 'Ads',
            ad: _0x259026.id,
          })
        ),
        ESX.Phone.functions.playSound(Config.Sounds.NewAd)
    } else {
      if (!ESX.Phone.open) {
        ESX.Phone.currentApp != 'Ads' &&
          (Config.Applications.Ads.notifCount++,
            ESX.Phone.functions.updateApp('Ads', 'notifications'))
        ESX.Phone.functions.sendOffNotification(
          Config.Applications.Ads.notifications.icon,
          Config.Applications.Ads.notifications.color,
          Config.Applications.Ads.label,
          '<strong>' +
          _0x259026.author +
          ':</strong><br>' +
          (!Config.EnableHTMLAds
            ? ESX.Phone.functions.cleanText(_0x259026.content)
            : _0x259026.content),
          Config.Notifications.NewAd.length,
          JSON.stringify({
            app: 'Ads',
            ad: _0x259026.id,
          })
        )
        ESX.Phone.functions.playSound(Config.Sounds.NewAd)
      }
    }
  }
}
const mailrecipeintssb = new ScrollBooster({
  viewport: document.querySelector('.mail .newmailscreen .recipients'),
  content: document.querySelector('.mail .newmailscreen .recipients'),
  scrollMode: 'native',
  direction: 'horizontal',
})
ESX.Phone.functions.resetMail = function () {
  ESX.Phone.currentMailConversation = {}
  setTimeout(() => {
    ESX.Phone.functions.setupMail(ESX.Phone.mail)
  }, 0)
  ESX.Phone.mailData.address &&
    ($('.mail > .welcome').hide(),
      $('.mail > .header, .mail > .mainbox')
        .addClass('no-transition')
        .removeClass('hidden'))
  $('.mail > .header, .mail > .mainbox, .mail > .categories')
    .addClass('no-transition')
    .removeClass('categories-open')
  $('.mail > .mailbox, .mail > .newmailscreen')
    .addClass('no-transition')
    .removeClass('open')
  $('.mail > .mainbox').addClass('no-transition').removeClass('closed')
  $('#openmailcategories .title')
    .removeAttr('style')
    .html(
      $(
        '.mail .categories > .button[data-category="' +
        ESX.Phone.currentMailCategory +
        '"] > .title'
      ).html()
    )
  $(
    '.mail .categories > .button[data-category="' +
    ESX.Phone.currentMailCategory +
    '"] > .title'
  ).css('opacity', '0.0')
  setTimeout(() => {
    $(
      '.mail > .header, .mail > .mainbox, .mail > .categories, .mail > .mailbox, .mail > .newmailscreen, .mail > .mainbox'
    ).removeClass('no-transition')
  }, 5)
}
ESX.Phone.functions.setupMail = function (_0x5bdef0, _0x3e360e) {
  let _0x59a3b0 =
    typeof _0x5bdef0 == 'string' ? JSON.parse(_0x5bdef0) : _0x5bdef0
  $('#mailcontent').html('')
  ESX.Phone.mail = _0x59a3b0
  if (ESX.Phone.currentApp != 'Mail') {
    return
  }
  let _0x2a5425 = ''
  let _0x1e94f3 = 0
  _0x3e360e = _0x3e360e ? _0x3e360e : ESX.Phone.currentMailCategory
  Config.Applications.Mail.notifCount = 0
  ESX.Phone.functions.updateApp('Mail', 'notifications')
  for (const _0x5599dc in _0x59a3b0) {
    let _0x2b10af = _0x59a3b0[_0x5599dc]
    _0x2b10af.mail.sort(function (_0x30e3c1, _0x3fa14a) {
      return _0x30e3c1.time - _0x3fa14a.time
    })
  }
  _0x59a3b0.sort(function (_0x11d4a5, _0x3e2bdd) {
    if (!_0x11d4a5.mail.length) {
      return 1
    }
    if (!_0x3e2bdd.mail.length) {
      return -1
    }
    return (
      _0x3e2bdd.mail[_0x3e2bdd.mail.length - 1].time -
      _0x11d4a5.mail[_0x11d4a5.mail.length - 1].time
    )
  })
  for (const _0x9a1319 in _0x59a3b0) {
    let _0x14fde7 = _0x59a3b0[_0x9a1319]
    if (
      (_0x3e360e == 'trash' && !_0x14fde7.trash) ||
      (_0x3e360e != 'trash' && _0x14fde7.trash)
    ) {
      continue
    }
    let _0x2ada5e = [],
      _0xf8cfba = 0
    for (const _0x494529 in _0x14fde7.mail) {
      let _0x1a0e8c = _0x14fde7.mail[_0x494529],
        _0x5c91f1 = _0x1a0e8c.sender.name
      if (_0x1a0e8c.sender.address == ESX.Phone.mailData.address) {
        _0x5c91f1 = Locales[Config.Language].mail_me.toString().toLowerCase()
      }
      if (
        !_0x2ada5e.find(
          (_0x4c5c3a) => _0x4c5c3a.address == _0x1a0e8c.sender.address
        )
      ) {
        const _0x2ede91 = {
          name: _0x5c91f1,
          address: _0x1a0e8c.sender.address,
        }
        _0x2ada5e.push(_0x2ede91)
        _0xf8cfba++
      }
      if (
        _0x3e360e == 'inbox' &&
        !_0x14fde7.muted &&
        _0x14fde7.lastOpened < _0x1a0e8c.time &&
        _0x1a0e8c.sender.address != ESX.Phone.mailData.address
      ) {
        _0x1e94f3++
      }
    }
    if (
      (_0x3e360e == 'sent' &&
        !_0x2ada5e.find(
          (_0x2975df) => _0x2975df.address == ESX.Phone.mailData.address
        )) ||
      (_0x3e360e == 'inbox' &&
        !_0x2ada5e.find(
          (_0x309a9f) => _0x309a9f.address != ESX.Phone.mailData.address
        ))
    ) {
      continue
    }
    let _0x330d20 = _0x14fde7.mail[0]
    if (
      _0x2ada5e.length <= 1 &&
      _0x2ada5e[0].address == ESX.Phone.mailData.address
    ) {
      var _0x1a0d7a = _0x330d20.recipients.map(function (_0x432bf8) {
        let _0x48af33
        _0x3f649a: for (const _0x1ab515 in ESX.Phone.mail) {
          let _0x1f4d7c = ESX.Phone.mail[_0x1ab515]
          for (const _0x5c4a04 in _0x1f4d7c.mail) {
            let _0x1b6b73 = _0x1f4d7c.mail[_0x5c4a04]
            if (
              _0x1b6b73.sender.address.toString().toLowerCase() == _0x432bf8.toString().toLowerCase()
            ) {
              _0x48af33 = _0x1b6b73.sender.name
              break _0x3f649a
            }
          }
        }
        return _0x48af33 || _0x432bf8
      })
    }
    let _0x17b0d4 = _0x14fde7.mail[_0x14fde7.mail.length - 1],
      _0x38f4f5 =
        (_0xf8cfba <= 2 &&
          _0x2ada5e.find(
            (_0x440e25) => _0x440e25.address == ESX.Phone.mailData.address
          )) ||
          _0xf8cfba < 2
          ? _0x330d20.sender.name.charAt(0).toUpperCase()
          : '<i class="fas fa-user-friends"></i>'
    _0x2a5425 +=
      '<div class="conversation" data-id="' +
      _0x14fde7.id +
      '">\n            <div class="inner">\n                ' +
      (!_0x14fde7.muted &&
        _0x14fde7.lastOpened < _0x17b0d4.time &&
        _0x17b0d4.sender.address != ESX.Phone.mailData.address
        ? '<div class="unread"></div>'
        : _0x14fde7.mail.length > 1
          ? '<p class="amount">' + _0x14fde7.mail.length + '</p>'
          : '') +
      '\n                ' +
      (_0x330d20.sender.photo != '' && _0xf8cfba <= 2
        ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
        _0x330d20.sender.photo +
        '">'
        : '<div class="avatar">' + _0x38f4f5 + '</div>') +
      '\n                <div class="details">\n                    <p class="name">' +
      (_0x2ada5e.length > 1
        ? _0x2ada5e.map((_0x35a7f5) => _0x35a7f5.name).join(', ')
        : _0x2ada5e[0].address == ESX.Phone.mailData.address
          ? Locales[Config.Language].mail_to.formatText(_0x1a0d7a.join(', '))
          : _0x2ada5e[0].name) +
      '</p>\n                    <p class="subject">' +
      (_0x14fde7.subject != ''
        ? ESX.Phone.functions.cleanText(_0x14fde7.subject)
        : Locales[Config.Language].no_subject) +
      '</p>\n                    <p class="lastmail">' +
      (_0x17b0d4.server
        ? ESX.Phone.functions.cleanText2(_0x17b0d4.content)
        : ESX.Phone.functions.cleanText(_0x17b0d4.content)) +
      '</p>\n                </div>\n                <div class="info">\n                    <p class="timestamp">' +
      ESX.Phone.functions.formatDate(_0x17b0d4.time) +
      '</p>\n                    <div class="star ' +
      (_0x14fde7.starred ? 'active' : '') +
      '">\n                        <i class="far fa-star"></i>\n                        <i class="fas fa-star starred"></i>\n                    </div>\n                </div>\n            </div>\n            <div class="delete">\n                <i class="fas fa-trash"></i>\n                <p class="title">' +
      Locales[Config.Language].remove +
      '</p>\n            </div>\n        </div>'
  }
  $('#mailcontent').html(_0x2a5425)
  if (_0x3e360e == 'inbox') {
    $(
      '.mail .categories > .button[data-category="inbox"] > .notifications'
    ).html(_0x1e94f3 > 0 ? _0x1e94f3 : '')
  }
  Config.Applications.Mail.notifCount = _0x1e94f3
  ESX.Phone.functions.updateApp('Mail', 'notifications')
}
ESX.Phone.functions.updateMailData = function (_0x204597) {
  ESX.Phone.mailData = _0x204597
  if (!_0x204597.address) {
    return
  }
  $('#mailname').html(_0x204597.name)
  $('#mailaddress').html(_0x204597.address)
  let _0x493bf8 = _0x204597.name.charAt(0).toUpperCase()
  _0x204597.photo != ''
    ? ($('#mailletter, .mail > .editProfile > .header div.avatar').hide(),
      $('#mailimage, .mail > .editProfile > .header img.avatar')
        .attr('src', _0x204597.photo)
        .show())
    : ($('#mailimage, .mail > .editProfile > .header img.avatar').hide(),
      $('#mailletter, .mail > .editProfile > .header div.avatar')
        .show()
        .html(_0x493bf8))
  $('.mail > .editProfile > .header .name').html(_0x204597.name)
  $('.mail > .editProfile > .header .address').html(_0x204597.address)
}
ESX.Phone.functions.addDynamicButton(
  '.mail > .header .avatar .container .button',
  function (_0x287b73, _0x553e32) {
    _0x553e32.stopPropagation()
    let _0x2bb69b = $(_0x287b73).data('action')
    if (_0x2bb69b == 'editaccount') {
      if ($('.mail > .editProfile').hasClass('open')) {
        return
      }
      $('.mail > .editProfile').addClass('open')
      let _0xdb8097 = document.forms.editmailaccount
      _0xdb8097.elements.name.value = ESX.Phone.mailData.name
      _0xdb8097.elements.password.value = ''
      _0xdb8097.elements.photo.value = ESX.Phone.mailData.photo
    } else {
      if (_0x2bb69b == 'notifications') {
        ESX.Phone.functions.setSetting(
          'mailnotifications',
          !ESX.Phone.settings.mailnotifications.value,
          true
        )
      } else {
        _0x2bb69b == 'logout' &&
          ((ESX.Phone.mailData = {}),
            $('.mail > .header, .mail > .mainbox').addClass('hidden'),
            $('.mail > .welcome').fadeIn(150),
            $.post(
              'http://' + ESX.Phone.resourceName + '/mailLogout',
              JSON.stringify()
            ))
      }
    }
    $('.mail > .header .avatar').removeClass('open')
  }
)
ESX.Phone.functions.addButton('#registermail', function (_0x40c888) {
  let _0x5a54f0 = $('.mail > .welcome')
  _0x5a54f0.hasClass('register')
    ? (_0x5a54f0.addClass('closing-register').removeClass('register'),
      ESX.Phone.functions.smoothTextTransition(
        '#registermail',
        Locales[Config.Language].html.mail_register
      ),
      ESX.Phone.functions.smoothTextTransition(
        '#loginmail',
        Locales[Config.Language].html.mail_login
      ))
    : (_0x5a54f0.removeClass('closing-register').addClass('register'),
      ESX.Phone.functions.smoothTextTransition(
        '#registermail',
        Locales[Config.Language].html.mail_login
      ),
      ESX.Phone.functions.smoothTextTransition(
        '#loginmail',
        Locales[Config.Language].html.mail_register
      ))
})
ESX.Phone.functions.addButton('#loginmail', function (_0x29b138) {
  let _0x383bb2 = $('.mail > .welcome')
  let _0x219562 = document.forms.mailloginregister
  if (_0x383bb2.hasClass('register')) {
    let _0x5c36c3 = _0x219562.elements.name.value,
      _0x5dfd09 = _0x219562.elements.address.value,
      _0x5b92e1 = _0x219562.elements.password.value
    if (_0x5c36c3.length < Config.MailMinNameLength) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.mailnametooshort,
        Config.Notifications.Error.length
      )
    }
    if (_0x5b92e1.length < Config.MailMinPasswordLength) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.mailpasswordtooshort,
        Config.Notifications.Error.length
      )
    }
    if (!_0x5dfd09.match(Config.MailAddressRegex)) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.wrongaddressformat,
        Config.Notifications.Error.length
      )
    }
    const _0x196c4f = {
      name: _0x5c36c3,
      address: _0x5dfd09,
      password: _0x5b92e1,
    }
    $.post(
      'http://' + ESX.Phone.resourceName + '/mailRegister',
      JSON.stringify(_0x196c4f),
      function (_0x400b03) {
        _0x400b03 == 'SUCCESS'
          ? (_0x383bb2.fadeOut(350),
            $('.mail > .header, .mail > .mainbox').removeClass('hidden'),
            setTimeout(() => {
              _0x219562.elements.name.value = ''
              _0x219562.elements.address.value = ''
              _0x219562.elements.password.value = ''
            }, 400))
          : ESX.Phone.functions.sendNotification(
            Config.Applications[ESX.Phone.currentApp].notifications.icon,
            Config.Applications[ESX.Phone.currentApp].notifications.color,
            Config.Applications[ESX.Phone.currentApp].label,
            '<strong>' +
            Locales[Config.Language].notifications.error +
            '</strong><br>' +
            _0x400b03,
            Config.Notifications.Error.length
          )
      }
    )
  } else {
    let _0x16ebd9 = _0x219562.elements.address.value,
      _0x38ab6f = _0x219562.elements.password.value
    if (_0x16ebd9.length < 1) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.mailaddressnotfilled,
        Config.Notifications.Error.length
      )
    }
    if (_0x38ab6f.length < 1) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.mailpasswordnotfilled,
        Config.Notifications.Error.length
      )
    }
    const _0x153623 = {
      address: _0x16ebd9,
      password: _0x38ab6f,
    }
    $.post(
      'http://' + ESX.Phone.resourceName + '/mailLogin',
      JSON.stringify(_0x153623),
      function (_0x438147) {
        if (_0x438147 == 'SUCCESS') {
          _0x383bb2.fadeOut(350)
          $('.mail > .header, .mail > .mainbox').removeClass('hidden')
          setTimeout(() => {
            _0x219562.elements.address.value = ''
            _0x219562.elements.password.value = ''
          }, 400)
        } else {
          ESX.Phone.functions.sendNotification(
            Config.Applications[ESX.Phone.currentApp].notifications.icon,
            Config.Applications[ESX.Phone.currentApp].notifications.color,
            Config.Applications[ESX.Phone.currentApp].label,
            '<strong>' +
            Locales[Config.Language].notifications.error +
            '</strong><br>' +
            _0x438147,
            Config.Notifications.Error.length
          )
        }
      }
    )
  }
})
ESX.Phone.functions.addImageSelector(
  '.mail > .editProfile .inputs .upload',
  '.mail > .editProfile .inputs .image > input',
  true
)
ESX.Phone.functions.addDynamicButton(
  '.mail > .editProfile > .close',
  function (_0x118911, _0x2038de) {
    $('.mail > .editProfile').removeClass('open')
    let _0x4e6223 = document.forms.editmailaccount
    _0x4e6223.elements.name.value = ''
    _0x4e6223.elements.password.value = ''
    _0x4e6223.elements.photo.value = ''
  }
)
ESX.Phone.functions.addButton('#savemailaccount', async function () {
  let _0x192b85 = document.forms.editmailaccount,
    _0x4a469b = _0x192b85.elements.name.value,
    _0x3e0b9f = _0x192b85.elements.photo.value,
    _0x46bbc6 = _0x192b85.elements.password.value
  if (_0x4a469b.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.mailnamenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x46bbc6 != '' && _0x46bbc6.length < Config.MailMinPasswordLength) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.mailpasswordtooshort,
      Config.Notifications.Error.length
    )
  }
  if (_0x3e0b9f != '' && _0x3e0b9f.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0x3e0b9f =
    _0x3e0b9f == '' || _0x3e0b9f.indexOf('http') > -1
      ? _0x3e0b9f
      : 'http://' + _0x3e0b9f
  let _0x4cccbf = await ESX.Phone.functions.urlExists(_0x3e0b9f)
  if (!_0x4cccbf) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  ESX.Phone.functions.updateMailData({
    name: _0x4a469b,
    address: ESX.Phone.mailData.address,
    photo: _0x3e0b9f,
  })
  const _0x5b365d = {
    name: _0x4a469b,
    photo: _0x3e0b9f,
    password: _0x46bbc6,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/saveMailData',
    JSON.stringify(_0x5b365d)
  )
  ESX.Phone.functions.sendNotification(
    Config.Applications[ESX.Phone.currentApp].notifications.icon,
    Config.Applications[ESX.Phone.currentApp].notifications.color,
    Config.Applications[ESX.Phone.currentApp].label,
    Locales[Config.Language].notifications.mailsettingssaved,
    Config.Notifications.Success.length
  )
  $('.mail > .editProfile').removeClass('open')
  _0x192b85.elements.name.value = ''
  _0x192b85.elements.password.value = ''
  _0x192b85.elements.photo.value = ''
})
ESX.Phone.functions.addDynamicButton(
  '.mail > .header .info .address',
  function () {
    ESX.Phone.functions.copyToClipboard(ESX.Phone.mailData.address)
    ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      Locales[Config.Language].notifications.addresscopied,
      Config.Notifications.Success.length
    )
  }
)
$(document).on('click', function (_0x7e0582) {
  $('.mail > .header .avatar').removeClass('open')
})
ESX.Phone.functions.addDynamicButton(
  '.mail > .header',
  function (_0x108d1b, _0x41a743) {
    _0x41a743.stopPropagation()
  }
)
ESX.Phone.functions.addDynamicButton(
  '.mail > .header .avatar > p, .mail > .header .avatar > img',
  function (_0x468152, _0x587045) {
    _0x587045.stopPropagation()
    let _0xb086e5 = $('.mail > .header .avatar')
    let _0x10397f = $('.mail > .header .avatar .container')
    if (!_0xb086e5.hasClass('open')) {
      _0x10397f.css('width', 'fit-content')
      let _0x4bbbee = _0x10397f.width()
      _0x10397f.css('width', '')
      setTimeout(() => {
        _0x10397f.css('--width', _0x4bbbee + 'px')
        _0xb086e5.addClass('open')
      }, 0)
    } else {
      _0x10397f.css('--width', '0')
      _0xb086e5.removeClass('open')
    }
  }
)
var mailTitleInterval, oldMailCategory
ESX.Phone.functions.addButton('#openmailcategories', function () {
  if ($('.mail > .mainbox').hasClass('closed')) {
    return
  }
  $('.mail > .header .avatar').removeClass('open')
  toggleCategories(!$('.mail > .header').hasClass('categories-open'))
})
function toggleCategories(_0x5d4d18) {
  let _0x31335e = document.querySelector('.mail > .header')
  let _0x483418 = _0x31335e.getBoundingClientRect()
  if (_0x5d4d18) {
    $('.mail > .header, .mail > .mainbox, .mail > .categories').addClass(
      'categories-open'
    )
    $('.mail > .header > .right').stop().fadeOut(350)
    let _0x2b58d7 = ESX.Phone.currentMailCategory
    oldMailCategory = _0x2b58d7
    let _0x2e67c1 = $(
      '.mail .categories > .button[data-category="' +
      _0x2b58d7 +
      '"] > .title'
    ),
      _0x53d543 = $('.mail > .header').offset(),
      _0x27d663 = $('#openmailcategories .title').offset(),
      _0x27958c = _0x2e67c1.css('font-size'),
      _0x18502c = _0x2e67c1.css('color')
    $('#openmailcategories .title').css({
      transition: 'none',
      position: 'absolute',
      left: ((_0x27d663.left - _0x53d543.left) / _0x483418.width) * 100 + '%',
      top: ((_0x27d663.top - _0x53d543.top) / _0x483418.height) * 100 + '%',
    })
    const _0x5657f7 = {
      opacity: '0.0',
      transition: '',
    }
    _0x2e67c1.css(_0x5657f7)
    mailTitleInterval = setInterval(() => {
      let _0x3250f9 = _0x2e67c1.offset()
      $('#openmailcategories .title').css({
        transition: '',
        left: ((_0x3250f9.left - _0x53d543.left) / _0x483418.width) * 100 + '%',
        top: ((_0x3250f9.top - _0x53d543.top) / _0x483418.height) * 100 + '%',
        'font-size': _0x27958c,
        color: _0x18502c,
      })
      let _0x3af403 = $('#openmailcategories .title').offset()
      Math.abs(_0x3af403.top - _0x3250f9.top) < 2 &&
        ($('#openmailcategories .title').css({
          left:
            ((_0x3250f9.left - _0x53d543.left) / _0x483418.width) * 100 + '%',
          opacity: '0.0',
        }),
          _0x2e67c1.css('opacity', '1.0'),
          clearInterval(mailTitleInterval),
          (mailTitleInterval = undefined))
    }, 50)
  } else {
    $('.mail > .header, .mail > .mainbox, .mail > .categories').removeClass(
      'categories-open'
    )
    $('.mail > .header > .right').stop().fadeIn(350)
    let _0xcdee63 = ESX.Phone.currentMailCategory
    mailTitleInterval &&
      (clearInterval(mailTitleInterval), (mailTitleInterval = undefined))
    let _0x19ac0a = $(
      '.mail .categories > .button[data-category="' +
      _0xcdee63 +
      '"] > .title'
    ),
      _0xfedcc2 = $('.mail > .header').offset(),
      _0x233f84 = _0x19ac0a.offset(),
      _0x3bfd1a = _0x19ac0a.css('color')
    const _0xb2dc1e = {
      transition: 'none',
      opacity: '0.0',
    }
    _0x19ac0a.css(_0xb2dc1e)
    oldMailCategory != _0xcdee63 &&
      ($('#openmailcategories .title').css({
        transition: 'none',
        left: ((_0x233f84.left - _0xfedcc2.left) / _0x483418.width) * 100 + '%',
        top: ((_0x233f84.top - _0xfedcc2.top) / _0x483418.height) * 100 + '%',
        color: _0x3bfd1a,
      }),
        $(
          '.mail .categories > .button[data-category="' +
          oldMailCategory +
          '"] > .title'
        ).css('opacity', '1.0'))
    $('#openmailcategories .title').css('opacity', '1.0')
    $('#openmailcategories .title').html(_0x19ac0a.html())
    setTimeout(() => {
      $('#openmailcategories .title').css('transition', '')
      $('#openmailcategories .title').css('position', '')
      let _0x196f7c = $('#openmailcategories .title').offset()
      $('#openmailcategories .title').css({
        position: 'absolute',
        color: '',
        'font-size': '',
        left: ((_0x196f7c.left - _0xfedcc2.left) / _0x483418.width) * 100 + '%',
        top: ((_0x196f7c.top - _0xfedcc2.top) / _0x483418.height) * 100 + '%',
      })
    }, 0)
  }
}
ESX.Phone.functions.addButton(
  '.mail .categories > .button',
  function (_0x271786) {
    let _0xe40ef1 = $(_0x271786).data('category')
    ESX.Phone.functions.setupMail(ESX.Phone.mail, _0xe40ef1)
    $(
      '.mail .categories > .button[data-category="' +
      ESX.Phone.currentMailCategory +
      '"]'
    ).removeClass('active')
    $(_0x271786).addClass('active')
    ESX.Phone.currentMailCategory = _0xe40ef1
  }
)
ESX.Phone.functions.addButton('.mail > .header .search', function (_0x452509) {
  !$('.mail > .header').hasClass('search')
    ? ($('#openmailcategories').stop().fadeOut(250),
      $('.mail > .header').addClass('search'),
      $('.mail > .header > .searchinput input').val(''))
    : ($('#openmailcategories').stop().fadeIn(250),
      $('.mail > .header').removeClass('search'),
      $('.mail > .mainbox .conversation').show(),
      $('.mail > .mainbox .noresults').hide())
})
$('#searchmail').on('input', function () {
  let _0x1fbb2d = $(this).val(),
    _0x472318 = 0
  _0x1fbb2d != ''
    ? ESX.Phone.mail.forEach((_0x52784d, _0xb1499a) => {
      if (
        (_0x52784d.trash && ESX.Phone.currentMailCategory == 'trash') ||
        (_0x52784d.mail.find(
          (_0x41551f) =>
            _0x41551f.sender.address == ESX.Phone.mailData.address
        ) &&
          ESX.Phone.currentMailCategory == 'sent') ||
        (_0x52784d.mail.find(
          (_0x30d6d7) =>
            _0x30d6d7.sender.address != ESX.Phone.mailData.address
        ) &&
          !_0x52784d.trash &&
          ESX.Phone.currentMailCategory == 'inbox')
      ) {
        if (
          !_0x52784d.subject.toString().toLowerCase().includes(_0x1fbb2d.toString().toLowerCase())
        ) {
          $(
            '.mail > .mainbox .conversation[data-id="' + _0x52784d.id + '"]'
          ).hide()
          for (const _0x2aa869 in _0x52784d.mail) {
            let _0x44214b = _0x52784d.mail[_0x2aa869]
            if (
              _0x44214b.content
                .toString()
                .toLowerCase()
                .includes(_0x1fbb2d.toString().toLowerCase()) ||
              _0x44214b.sender.name
                .toLowerCase()
                .includes(_0x1fbb2d.toString().toLowerCase()) ||
              _0x44214b.sender.address
                .toLowerCase()
                .includes(_0x1fbb2d.toString().toLowerCase())
            ) {
              _0x472318++
              $(
                '.mail > .mainbox .conversation[data-id="' +
                _0x52784d.id +
                '"]'
              ).show()
              break
            }
          }
        } else {
          $(
            '.mail > .mainbox .conversation[data-id="' + _0x52784d.id + '"]'
          ).show()
          _0x472318++
        }
      }
      _0xb1499a == ESX.Phone.mail.length - 1 &&
        (_0x472318 > 0
          ? $('.mail > .mainbox .noresults').hide()
          : ($('.mail > .mainbox .noresults').show(),
            $('.mail > .mainbox .noresults > .description').html(
              Locales[Config.Language].searchquery.formatText(_0x1fbb2d)
            )))
    })
    : ($('.mail > .mainbox .conversation').show(),
      $('.mail > .mainbox .noresults').hide())
})
function resetNewMailScreen() {
  $('.mail > .newmailscreen').removeClass('reply')
  let _0x4cd5db = document.forms.newmail
  _0x4cd5db.elements.recipients.value = ''
  _0x4cd5db.elements.subject.value = ''
  _0x4cd5db.elements.content.value = ''
  _0x4cd5db.elements.subject.disabled = false
  $('.mail .newmailscreen > .title').html(
    Locales[Config.Language].html.mail_newmail_title
  )
  currentMailAttachments = []
  currentRecipients = []
  $('.mail .newmailscreen .recipients > .recipient').remove()
  $('.mail .newmailscreen .attachments').html('')
}
ESX.Phone.functions.addButton('.newmail', function () {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantmail,
      Config.Notifications.Error.length
    )
  }
  $('.mail > .newmailscreen').addClass('open')
  $('.mail > .mainbox').addClass('closed')
  resetNewMailScreen()
})
ESX.Phone.functions.addDynamicButton(
  '.mail > .newmailscreen > .close',
  function (_0x3c9bd2, _0x4189d8) {
    $('.mail > .newmailscreen').removeClass('open')
    if (!ESX.Phone.currentMailConversation.mail) {
      $('.mail > .mainbox').removeClass('closed')
    } else {
      $('.mail > .mailbox').addClass('open')
    }
  }
)
ESX.Phone.functions.addButton(
  '.mail .newmailscreen .content .footer > .send',
  function (_0x50109d) {
    let _0x4356c5 = document.forms.newmail,
      _0x446d80 = _0x4356c5.elements.subject.value,
      _0x4b0cf9 = _0x4356c5.elements.content.value
    if (currentRecipients.length < 1) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.norecipients,
        Config.Notifications.Error.length
      )
    }
    if (_0x4b0cf9.length < 1 && currentMailAttachments.length < 1) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.contentnotfilled,
        Config.Notifications.Error.length
      )
    }
    if (ESX.Phone.settings.airplane.value) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.airplanecantsendmail,
        Config.Notifications.Error.length
      )
    }
    _0x4356c5.elements.recipients.value = ''
    _0x4356c5.elements.subject.value = ''
    _0x4356c5.elements.content.value = ''
    if (!ESX.Phone.currentMailConversation.mail) {
      $.post(
        'http://' + ESX.Phone.resourceName + '/sendMail',
        JSON.stringify({
          recipients: currentRecipients,
          subject: _0x446d80,
          content: ESX.Phone.functions.cleanText(_0x4b0cf9),
          attachments: JSON.stringify(currentMailAttachments),
        })
      )
    } else {
      $.post(
        'http://' + ESX.Phone.resourceName + '/sendMail',
        JSON.stringify({
          reply: ESX.Phone.currentMailConversation.id,
          recipients: currentRecipients,
          subject: _0x446d80,
          content: ESX.Phone.functions.cleanText(_0x4b0cf9),
          attachments: JSON.stringify(currentMailAttachments),
        })
      )
    }
    currentRecipients = []
    currentMailAttachments = []
    $('.mail .newmailscreen .recipients > .recipient').remove()
    $('.mail .newmailscreen .attachments').html('')
    $('.mail > .newmailscreen').removeClass('open')
    $('.mail > .mainbox').removeClass('closed')
  }
)
var oldResultsCount = 0
$('.mail .newmailscreen .recipients input').on('input', function () {
  let _0x32ee57 = $(this).val()
  $('.mail .newmailscreen .mailsearchresults').html('')
  if (_0x32ee57 != '') {
    let _0x1769ad = []
    ESX.Phone.mail.forEach((_0x20d578, _0x3da25b) => {
      for (const _0x512f1 in _0x20d578.mail) {
        let _0x4410c6 = _0x20d578.mail[_0x512f1]
        !currentRecipients.includes(_0x4410c6.sender.address) &&
          _0x4410c6.sender.address != ESX.Phone.mailData.address &&
          _0x4410c6.sender.address.toString()
            .toLowerCase()
            .includes(_0x32ee57.toString().toLowerCase()) &&
          !_0x1769ad.includes(_0x4410c6.sender.address) &&
          ($('.mail .newmailscreen .mailsearchresults').append(
            '<div class="result" data-address="' +
            _0x4410c6.sender.address +
            '" data-name="' +
            _0x4410c6.sender.name +
            '" data-photo="' +
            _0x4410c6.sender.photo +
            '">\n                        ' +
            (_0x4410c6.sender.photo != ''
              ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
              _0x4410c6.sender.photo +
              '">'
              : '<div class="avatar">' +
              _0x4410c6.sender.name.charAt(0).toUpperCase() +
              '</div>') +
            '\n                        <div class="info">\n                            <p class="name">' +
            _0x4410c6.sender.name +
            '</p>\n                            <p class="address">' +
            _0x4410c6.sender.address +
            '</p>\n                        </div>\n                    </div>'
          ),
            _0x1769ad.push(_0x4410c6.sender.address))
      }
      if (_0x3da25b == ESX.Phone.mail.length - 1) {
        if (_0x1769ad.length > 0) {
          if (oldResultsCount != _0x1769ad.length) {
            let _0x26c053 = $('.mail .newmailscreen .mailsearchresults').get(
              0
            ).clientHeight
            $('.mail .newmailscreen .mailsearchresults')
              .addClass('no-transition')
              .css('height', '0')
            let _0x4a3c8c = $('.mail .newmailscreen .mailsearchresults').get(
              0
            ).scrollHeight
            $('.mail .newmailscreen .mailsearchresults').css(
              'height',
              _0x26c053 + 'px'
            )
            setTimeout(() => {
              $('.mail .newmailscreen .mailsearchresults')
                .removeClass('no-transition')
                .css('height', _0x4a3c8c + 'px')
            }, 0)
          }
        } else {
          $('.mail .newmailscreen .mailsearchresults').css('height', '0')
        }
        oldResultsCount = _0x1769ad.length
      }
    })
  } else {
    $('.mail .newmailscreen .mailsearchresults').css('height', '0'),
      (oldResultsCount = 0)
  }
})
ESX.Phone.functions.addDynamicButton(
  '.mail .newmailscreen .mailsearchresults > .result',
  function (_0x50dd22) {
    if (currentRecipients.length >= Config.maxRecipients) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.maxrecipients.formatText(
          Config.maxRecipients
        ),
        Config.Notifications.Error.length
      )
    }
    let _0x2667ec = $(_0x50dd22).data('address'),
      _0xc4bf8e = $(_0x50dd22).data('name')
    let _0x57cf02 = $(_0x50dd22).data('photo')
    $('.mail .newmailscreen .recipients').prepend(
      '<div class="recipient" style="opacity: 0.0" data-address="' +
      _0x2667ec +
      '">\n        ' +
      (_0x57cf02 != '' ? '<img src="' + _0x57cf02 + '">' : '') +
      '\n        <p class="title">' +
      (_0xc4bf8e || _0x2667ec) +
      '</p>\n        <div class="delete"><i class="far fa-times"></i></div>\n    </div>'
    )
    currentRecipients.push(_0x2667ec)
    let _0x34957c = $(
      '.mail .newmailscreen .recipients > .recipient[data-address="' +
      _0x2667ec +
      '"]'
    ).width()
    mailrecipeintssb.updateMetrics()
    $(
      '.mail .newmailscreen .recipients > .recipient[data-address="' +
      _0x2667ec +
      '"]'
    ).css({
      width: '0px',
      opacity: '1.0',
      'margin-right': '',
    })
    setTimeout(() => {
      $(
        '.mail .newmailscreen .recipients > .recipient[data-address="' +
        _0x2667ec +
        '"]'
      ).css('width', _0x34957c + 'px')
    }, 0)
    $('.mail .newmailscreen .mailsearchresults').css('height', '0').html('')
    $('.mail .newmailscreen .recipients input').val('')
    oldResultsCount = 0
  }
)
var currentRecipients = []
$('.mail .newmailscreen .recipients input').on({
  keyup: function (_0x42d8ba) {
    ; (_0x42d8ba.keyCode == 13 ||
      _0x42d8ba.keyCode == 32 ||
      _0x42d8ba.keyCode == 188) &&
      updateRecipients(this)
  },
  focusout: function (_0x49ea64) {
    updateRecipients(this)
  },
})
function updateRecipients(_0x21a94f) {
  let _0x298af6 = _0x21a94f.value.split(/[\s,]/),
    _0xbe71af = ''
  for (const _0x4a7cee in _0x298af6) {
    let _0x8d79e1 = _0x298af6[_0x4a7cee],
      _0x337792,
      _0x42cdf5 = ''
    if (
      _0x8d79e1.match(Config.RecipientMailAddressRegex) &&
      !currentRecipients.includes(_0x8d79e1)
    ) {
      _0x4df668: for (const _0x57ecfe in ESX.Phone.mail) {
        let _0x1868c2 = ESX.Phone.mail[_0x57ecfe]
        for (const _0x44f9a9 in _0x1868c2.mail) {
          let _0x4be61a = _0x1868c2.mail[_0x44f9a9]
          if (
            _0x4be61a.sender.address.toString().toLowerCase() == _0x8d79e1.toString().toLowerCase()
          ) {
            _0x337792 = _0x4be61a.sender.name
            _0x42cdf5 =
              _0x4be61a.sender.photo != ''
                ? '<img src="' + _0x4be61a.sender.photo + '">'
                : ''
            break _0x4df668
          }
        }
      }
      $('.mail .newmailscreen .recipients').prepend(
        '<div class="recipient" style="opacity: 0.0" data-address="' +
        _0x8d79e1 +
        '">\n                ' +
        _0x42cdf5 +
        '\n                <p class="title">' +
        (_0x337792 || _0x8d79e1) +
        '</p>\n                <div class="delete"><i class="far fa-times"></i></div>\n            </div>'
      )
      _0xbe71af = _0x8d79e1
      currentRecipients.push(_0x8d79e1)
      let _0x4c5971 = new RegExp('(,)*\\b' + _0x8d79e1 + '\\b(,)*')
      _0x21a94f.value = _0x21a94f.value.replace(_0x4c5971, '')
    }
  }
  let _0xce6741 = $(
    '.mail .newmailscreen .recipients > .recipient[data-address="' +
    _0xbe71af +
    '"]'
  ).width()
  mailrecipeintssb.updateMetrics()
  $(
    '.mail .newmailscreen .recipients > .recipient[data-address="' +
    _0xbe71af +
    '"]'
  ).css({
    width: '0px',
    opacity: '1.0',
    'margin-right': '',
  })
  setTimeout(() => {
    $(
      '.mail .newmailscreen .recipients > .recipient[data-address="' +
      _0xbe71af +
      '"]'
    ).css('width', _0xce6741 + 'px')
  }, 0)
}
ESX.Phone.functions.addDynamicButton(
  '.mail .newmailscreen .recipients > .recipient > .delete',
  function (_0x537b7e) {
    let _0x2c1ec4 = $(_0x537b7e).parent().data('address')
    currentRecipients.splice(
      currentRecipients.findIndex((_0x357914) => _0x357914 == _0x2c1ec4),
      1
    )
    $(_0x537b7e).parent().css({
      width: '0px',
      opacity: '0.0',
      'margin-right': '0',
    })
    setTimeout(() => {
      $(_0x537b7e).parent().remove()
    }, 200)
  }
)
var currentMailAttachments = []
ESX.Phone.functions.addImageSelector(
  '.mail .newmailscreen .content .attach',
  function (_0x2fd420) {
    $('.mail .newmailscreen .content .attachments').append(
      '<div class="attachment" data-id="' +
      currentMailAttachments.length +
      '">\n        <img src="' +
      _0x2fd420 +
      '">\n        <div class="delete"><i class="far fa-times"></i></div>\n    </div>'
    )
    const _0x2d043a = { image: _0x2fd420 }
    currentMailAttachments.push(_0x2d043a)
  },
  true
)
ESX.Phone.functions.addDynamicButton(
  '.mail .newmailscreen .content .attachments > .attachment',
  function (_0x2b2c8c) {
    let _0x145917 = $(_0x2b2c8c).data('id')
    currentMailAttachments.splice(_0x145917, 1)
    const _0x5179d0 = {
      width: '0',
      height: '0',
    }
    _0x5179d0['margin-right'] = '0'
    $(
      '.mail .newmailscreen .content .attachments > .attachment[data-id="' +
      _0x145917 +
      '"]'
    ).css(_0x5179d0)
    $(
      '.mail .newmailscreen .content .attachments > .attachment[data-id="' +
      _0x145917 +
      '"]'
    ).fadeOut(250)
    setTimeout(() => {
      $(
        '.mail .newmailscreen .content .attachments > .attachment[data-id="' +
        _0x145917 +
        '"]'
      ).remove()
    }, 250)
  }
)
ESX.Phone.functions.getMailConversation = function (_0x34934f) {
  let _0x5b5dc9 = ESX.Phone.mail.findIndex(
    (_0x296124) => _0x296124.id == _0x34934f
  )
  return _0x5b5dc9
}
ESX.Phone.functions.openMail = function (_0x35bb09) {
  if ($('.mail > .header').hasClass('categories-open')) {
    toggleCategories(false)
  }
  ESX.Phone.currentMailConversation = _0x35bb09
  $('.mail > .mainbox').addClass('closed')
  $('.mail > .mailbox').addClass('open')
  $('.mail > .mailbox .letterlist').html('')
  $('.mail > .mailbox .info > .subject').html(
    ESX.Phone.currentMailConversation.subject != ''
      ? ESX.Phone.currentMailConversation.subject
      : Locales[Config.Language].no_subject
  )
  if (ESX.Phone.currentMailConversation.starred) {
    $('.mail > .mailbox .header > .buttons > .star').addClass('active')
  } else {
    $('.mail > .mailbox .header > .buttons > .star').removeClass('active')
  }
  $(
    '.mail > .mailbox .header > .buttons > *[data-action="notifications"]'
  ).attr(
    'class',
    ESX.Phone.currentMailConversation.muted
      ? 'fas fa-bell-slash'
      : 'fas fa-bell-on'
  )
  let _0x5c83f1 = []
  for (const _0xf739c1 in ESX.Phone.currentMailConversation.mail) {
    let _0x4a5d48 = ESX.Phone.currentMailConversation.mail[_0xf739c1],
      _0x522db7 = _0x4a5d48.sender.address
    if (_0x4a5d48.sender.address == ESX.Phone.mailData.address) {
      _0x522db7 = Locales[Config.Language].mail_me.toString().toLowerCase()
    }
    !_0x5c83f1.includes(_0x4a5d48.sender.address) && _0x5c83f1.push(_0x522db7)
  }
  $('.mail > .mailbox .info > .recipients').html(_0x5c83f1.join(', '))
  ESX.Phone.currentMailConversation.mail.forEach((_0x1cd1f6, _0x48e8b7) => {
    let _0x144b30 = ''
    JSON.parse(_0x1cd1f6.attachments).forEach((_0x4f119d) => {
      if (_0x4f119d.image) {
        _0x144b30 += '<img class="attachment" src="' + _0x4f119d.image + '">'
      } else {
        if (_0x4f119d.button) {
          _0x144b30 +=
            '<button data-id="' +
            _0x4f119d.button.id +
            '" ' +
            (_0x4f119d.button.color
              ? 'style="--accent-color:' + _0x4f119d.button.color + '"'
              : '') +
            '>' +
            _0x4f119d.button.label +
            '</button>'
        }
      }
    })
    _0x1cd1f6.content = _0x1cd1f6.server
      ? _0x1cd1f6.content
      : ESX.Phone.functions.cleanText(_0x1cd1f6.content)
    $('.mail > .mailbox .letterlist').append(
      (_0x48e8b7 > 0 ? '<hr>' : '') +
      '\n        <div class="letter" data-id="' +
      _0x48e8b7 +
      '">\n            <div class="header">\n                ' +
      (_0x1cd1f6.sender.photo != ''
        ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
        _0x1cd1f6.sender.photo +
        '">'
        : '<div class="avatar">' +
        _0x1cd1f6.sender.name.charAt(0).toUpperCase() +
        '</div>') +
      '\n                <div class="info">\n                    <p class="name">' +
      ESX.Phone.functions.cleanText(_0x1cd1f6.sender.name) +
      '</p>\n                    <p class="address">' +
      _0x1cd1f6.sender.address +
      '</p>\n                </div>\n                <div class="right">\n                    ' +
      (_0x1cd1f6.sender.address != ESX.Phone.mailData.address
        ? '<i class="fas fa-reply reply"></i>'
        : '') +
      '\n                    <p class="timestamp">' +
      ESX.Phone.functions.formatDate(_0x1cd1f6.time) +
      '</p>\n                </div>\n            </div>\n            <div class="content">' +
      _0x1cd1f6.content.replace(/\n/g, '<br>') +
      '</div>\n            ' +
      _0x144b30 +
      '\n        </div>'
    )
  })
  ESX.Phone.currentMailConversation.lastOpened = Date.now()
  $.post(
    'http://' + ESX.Phone.resourceName + '/readMail',
    JSON.stringify({ id: ESX.Phone.currentMailConversation.id })
  )
  setTimeout(() => {
    ESX.Phone.functions.setupMail(ESX.Phone.mail)
  }, 200)
}
var lastMailMouseX = 0
$(document).on(
  {
    mousedown: function (_0x438831) {
      lastMailMouseX = _0x438831.pageX
    },
    mouseup: function (_0x2d48d2) {
      if (_0x2d48d2.which != 1) {
        return
      }
      if (
        _0x2d48d2.target.classList[0] != 'delete' &&
        Math.abs(lastMailMouseX - _0x2d48d2.pageX) < 5
      ) {
        let _0x3e07af = $(this).data('id')
        ESX.Phone.functions.openMail(
          ESX.Phone.mail[ESX.Phone.functions.getMailConversation(_0x3e07af)]
        )
      }
    },
  },
  '.mail > .mainbox .conversation'
)
$(document).on(
  {
    mousedown: function (_0x269970) {
      lastMailMouseX = _0x269970.pageX
    },
    mouseup: function (_0x354909) {
      if (_0x354909.which != 1) {
        return
      }
      if (Math.abs(lastMailMouseX - _0x354909.pageX) < 5) {
        let _0x5dd11d = $(this).closest('.conversation').data('id'),
          _0x302ff7 =
            ESX.Phone.mail[ESX.Phone.functions.getMailConversation(_0x5dd11d)]
        _0x354909.stopPropagation()
        _0x302ff7.starred = !_0x302ff7.starred
        if (_0x302ff7.starred) {
          $(this).addClass('active')
        } else {
          $(this).removeClass('active')
        }
        const _0x44ec0b = {
          id: _0x5dd11d,
          starred: _0x302ff7.starred,
        }
        $.post(
          'http://' + ESX.Phone.resourceName + '/starMail',
          JSON.stringify(_0x44ec0b)
        )
      }
    },
  },
  '.mail > .mainbox .conversation .star'
)
ESX.Phone.functions.addDynamicButton(
  '.mail > .mainbox .conversation > .delete',
  function (_0x4fe0b3) {
    let _0x5c5893 = $(_0x4fe0b3).parent().data('id')
    setTimeout(() => {
      $(_0x4fe0b3).addClass('faster').css('width', '100%')
      $(_0x4fe0b3).parent().css('height', '0%')
    }, 0)
    const _0x1ca485 = { id: _0x5c5893 }
    $.post(
      'http://' + ESX.Phone.resourceName + '/deleteMail',
      JSON.stringify(_0x1ca485)
    )
    ESX.Phone.mail[ESX.Phone.functions.getMailConversation(_0x5c5893)].trash =
      true
  }
)
ESX.Phone.functions.addDeleteSlider(
  '.mail > .mainbox .conversation',
  function (_0x4a1b82) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/deleteMail',
      JSON.stringify({ id: $(_0x4a1b82).data('id') })
    )
    ESX.Phone.mail[
      ESX.Phone.functions.getMailConversation($(_0x4a1b82).data('id'))
    ].trash = true
  }
)
ESX.Phone.functions.addDynamicButton(
  '.mail > .mailbox .buttons > *',
  function (_0x4a172f, _0x1596cd) {
    let _0x1c294d = $(_0x4a172f).data('action')
    if (_0x1c294d == 'star') {
      ESX.Phone.currentMailConversation.starred =
        !ESX.Phone.currentMailConversation.starred
      if (ESX.Phone.currentMailConversation.starred) {
        $(_0x4a172f).addClass('active'),
          $(
            '.mail > .mainbox .conversation[data-id="' +
            ESX.Phone.currentMailConversation.id +
            '"] .star'
          ).addClass('active')
      } else {
        $(_0x4a172f).removeClass('active')
        $(
          '.mail > .mainbox .conversation[data-id="' +
          ESX.Phone.currentMailConversation.id +
          '"] .star'
        ).removeClass('active')
      }
      $.post(
        'http://' + ESX.Phone.resourceName + '/starMail',
        JSON.stringify({
          id: ESX.Phone.currentMailConversation.id,
          starred: ESX.Phone.currentMailConversation.starred,
        })
      )
    } else {
      if (_0x1c294d == 'notifications') {
        ESX.Phone.currentMailConversation.muted =
          !ESX.Phone.currentMailConversation.muted
        $(_0x4a172f).attr(
          'class',
          ESX.Phone.currentMailConversation.muted
            ? 'fas fa-bell-slash'
            : 'fas fa-bell-on'
        )
        $.post(
          'http://' + ESX.Phone.resourceName + '/muteMail',
          JSON.stringify({
            id: ESX.Phone.currentMailConversation.id,
            muted: ESX.Phone.currentMailConversation.muted,
          })
        )
      } else {
        if (_0x1c294d == 'delete') {
          if (ESX.Phone.currentMailConversation.trash) {
            $('.mail > .mailbox').removeClass('open')
            $('.mail > .mainbox').removeClass('closed')
            ESX.Phone.mail.splice(
              ESX.Phone.mail.findIndex(
                (_0x2ae500) =>
                  _0x2ae500.id == ESX.Phone.currentMailConversation.id
              ),
              1
            )
            ESX.Phone.functions.setupMail(ESX.Phone.mail)
            $.post(
              'http://' + ESX.Phone.resourceName + '/deleteMail',
              JSON.stringify({
                id: ESX.Phone.currentMailConversation.id,
                forever: true,
              })
            )
            ESX.Phone.currentMailConversation = {}
            return
          }
          ESX.Phone.currentMailConversation.trash = true
          $('.mail > .mailbox').removeClass('open')
          $('.mail > .mainbox').removeClass('closed')
          ESX.Phone.functions.setupMail(ESX.Phone.mail)
          $.post(
            'http://' + ESX.Phone.resourceName + '/deleteMail',
            JSON.stringify({ id: ESX.Phone.currentMailConversation.id })
          )
          ESX.Phone.currentMailConversation = {}
        }
      }
    }
  }
)
function openReplyScreen() {
  $('.mail > .mailbox').removeClass('open')
  $('.mail > .newmailscreen').addClass('open reply')
  let _0x2f47cf = document.forms.newmail
  _0x2f47cf.elements.recipients.value = ''
  _0x2f47cf.elements.subject.value = Locales[
    Config.Language
  ].replying_mail.formatText(
    ESX.Phone.functions.cleanText(ESX.Phone.currentMailConversation.subject)
  )
  _0x2f47cf.elements.content.value = ''
  _0x2f47cf.elements.subject.disabled = true
  $('.mail .newmailscreen > .title').html(
    Locales[Config.Language].html.mail_replymail_title.formatText(
      ESX.Phone.functions.cleanText(ESX.Phone.currentMailConversation.subject)
    )
  )
  $('.mail .newmailscreen .recipients > .recipient').remove()
  $('.mail .newmailscreen .attachments').html('')
  currentMailAttachments = []
}
ESX.Phone.functions.addDynamicButton(
  '.mail > .mailbox .replytoall',
  function (_0x2fcefe) {
    openReplyScreen()
    currentRecipients = []
    ESX.Phone.currentMailConversation.mail.sort(function (
      _0x39ff8a,
      _0x5c9784
    ) {
      return _0x39ff8a.time - _0x5c9784.time
    })
    let _0x2c4b4e = ESX.Phone.currentMailConversation.mail[0].recipients.length
    ESX.Phone.currentMailConversation.mail[0].recipients.forEach(
      (_0x1c3942, _0x2b3583) => {
        if (_0x1c3942 != ESX.Phone.mailData.address) {
          currentRecipients.push(_0x1c3942)
          let _0x1fe857,
            _0x19dd08 = ''
          _0x17eb34: for (const _0x13f370 in ESX.Phone.mail) {
            let _0x1f33b5 = ESX.Phone.mail[_0x13f370]
            for (const _0x20c588 in _0x1f33b5.mail) {
              let _0x381ff0 = _0x1f33b5.mail[_0x20c588]
              if (
                _0x381ff0.sender.address.toString().toLowerCase() ==
                _0x1c3942.toString().toLowerCase()
              ) {
                _0x1fe857 = _0x381ff0.sender.name
                _0x19dd08 = _0x381ff0.sender.photo
                break _0x17eb34
              }
            }
          }
          $('.mail .newmailscreen .recipients').prepend(
            '<div class="recipient" data-address="' +
            _0x1c3942 +
            '">\n                ' +
            (_0x19dd08 != '' ? '<img src="' + _0x19dd08 + '">' : '') +
            '\n                <p class="title">' +
            (ESX.Phone.functions.cleanText(_0x1fe857) || _0x1c3942) +
            '</p>\n                <div class="delete"><i class="far fa-times"></i></div>\n            </div>'
          )
          let _0x31142e = $(
            '.mail .newmailscreen .recipients > .recipient[data-address="' +
            _0x1c3942 +
            '"]'
          ).width()
          mailrecipeintssb.updateMetrics()
          setTimeout(() => {
            $(
              '.mail .newmailscreen .recipients > .recipient[data-address="' +
              _0x1c3942 +
              '"]'
            ).css('width', _0x31142e + 'px')
          }, 0)
        }
        _0x2b3583 == _0x2c4b4e - 1 &&
          ESX.Phone.currentMailConversation.mail.forEach(
            (_0x48a08b, _0x420d56) => {
              if (
                _0x48a08b.sender.address != ESX.Phone.mailData.address &&
                !currentRecipients.includes(_0x48a08b.sender.address)
              ) {
                currentRecipients.push(_0x48a08b.sender.address)
                $('.mail .newmailscreen .recipients').prepend(
                  '<div class="recipient" data-address="' +
                  _0x48a08b.sender.address +
                  '">\n                        ' +
                  (_0x48a08b.sender.photo != ''
                    ? '<img src="' + _0x48a08b.sender.photo + '">'
                    : '') +
                  '\n                        <p class="title">' +
                  (ESX.Phone.functions.cleanText(_0x48a08b.sender.name) ||
                    _0x48a08b.sender.address) +
                  '</p>\n                        <div class="delete"><i class="far fa-times"></i></div>\n                    </div>'
                )
                let _0x545b7a = $(
                  '.mail .newmailscreen .recipients > .recipient[data-address="' +
                  _0x48a08b.sender.address +
                  '"]'
                ).width()
                mailrecipeintssb.updateMetrics()
                setTimeout(() => {
                  $(
                    '.mail .newmailscreen .recipients > .recipient[data-address="' +
                    _0x48a08b.sender.address +
                    '"]'
                  ).css('width', _0x545b7a + 'px')
                }, 0)
              }
            }
          )
      }
    )
  }
)
ESX.Phone.functions.addDynamicButton(
  '.mail > .mailbox .letter .reply',
  function (_0x476a36) {
    openReplyScreen()
    let _0x485311 =
      ESX.Phone.currentMailConversation.mail[
      $(_0x476a36).closest('.letter').data('id')
      ]
    currentRecipients = [_0x485311.sender.address]
    $('.mail .newmailscreen .recipients').prepend(
      '<div class="recipient" data-address="' +
      _0x485311.sender.address +
      '">\n        ' +
      (_0x485311.sender.photo != ''
        ? '<img src="' + _0x485311.sender.photo + '">'
        : '') +
      '\n        <p class="title">' +
      (ESX.Phone.functions.cleanText(_0x485311.sender.name) ||
        _0x485311.sender.address) +
      '</p>\n        <div class="delete"><i class="far fa-times"></i></div>\n    </div>'
    )
    let _0xa2ea4 = $(
      '.mail .newmailscreen .recipients > .recipient[data-address="' +
      _0x485311.sender.address +
      '"]'
    ).width()
    mailrecipeintssb.updateMetrics()
    setTimeout(() => {
      $(
        '.mail .newmailscreen .recipients > .recipient[data-address="' +
        _0x485311.sender.address +
        '"]'
      ).css('width', _0xa2ea4 + 'px')
    }, 0)
  }
)
ESX.Phone.functions.addDynamicButton(
  '.mail > .mailbox .letter .attachment',
  function (_0x341336) {
    let _0x75a9bb = $(_0x341336).attr('src')
    ESX.Phone.functions.previewImage(_0x75a9bb)
  }
)
ESX.Phone.functions.addDynamicButton('#closemail', function () {
  $('.mail > .mainbox').removeClass('closed')
  $('.mail > .mailbox').removeClass('open')
  ESX.Phone.currentMailConversation = {}
})
ESX.Phone.functions.addDynamicButton(
  '.mail > .mailbox .letter button',
  function (_0x5aaded) {
    let _0x287cc0 = $(_0x5aaded).parent().data('id')
    let _0x2464a5 = $(_0x5aaded).data('id'),
      _0x486c75 = JSON.parse(
        ESX.Phone.mail[
          ESX.Phone.functions.getMailConversation(
            ESX.Phone.currentMailConversation.id
          )
        ].mail[_0x287cc0].attachments
      ),
      _0x2a80c6 = _0x486c75.find((_0x1258e3) =>
        _0x1258e3.button ? _0x1258e3.button.id == _0x2464a5 : false
      ),
      _0x5aa414 = _0x486c75.findIndex((_0x37533a) =>
        _0x37533a.button ? _0x37533a.button.id == _0x2464a5 : false
      )
    _0x486c75.splice(_0x5aa414, 1)
    $.post(
      'http://' + ESX.Phone.resourceName + '/executeMailButton',
      JSON.stringify({
        conversation: ESX.Phone.currentMailConversation.id,
        id: _0x2a80c6.button.id,
        mailTime:
          ESX.Phone.mail[
            ESX.Phone.functions.getMailConversation(
              ESX.Phone.currentMailConversation.id
            )
          ].mail[_0x287cc0].time,
        event: _0x2a80c6.button.event,
        args: _0x2a80c6.button.args,
      })
    )
    ESX.Phone.mail[
      ESX.Phone.functions.getMailConversation(
        ESX.Phone.currentMailConversation.id
      )
    ].mail[_0x287cc0].attachments = JSON.stringify(_0x486c75)
    $(_0x5aaded)
      .css('margin-top', -$(_0x5aaded).height() + 'px')
      .fadeOut(300)
  }
)
ESX.Phone.functions.addMail = async function (_0x95e192) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0x11a2d2
  if (_0x95e192.reply) {
    _0x11a2d2 = ESX.Phone.functions.getMailConversation(_0x95e192.reply)
  } else {
    _0x11a2d2 = ESX.Phone.functions.getMailConversation(_0x95e192.id)
  }
  if (_0x11a2d2 != -1 && !ESX.Phone.mail[_0x11a2d2].trash) {
    const _0x38880c = {
      server: _0x95e192.server,
      sender: _0x95e192.sender,
      content: _0x95e192.content,
      time: _0x95e192.time,
      attachments: _0x95e192.attachments,
    }
    ESX.Phone.mail[_0x11a2d2].mail.push(_0x38880c)
  } else {
    if (_0x11a2d2 == -1) {
      const _0x1975cb = {
        id: _0x95e192.id,
        subject: _0x95e192.subject,
        starred: false,
        mail: [
          {
            server: _0x95e192.server,
            sender: _0x95e192.sender,
            content: _0x95e192.content,
            time: _0x95e192.time,
            attachments: _0x95e192.attachments,
          },
        ],
        trash: false,
        muted: false,
        lastOpened: 0,
      }
      ESX.Phone.mail.push(_0x1975cb)
    }
  }
  if (
    ESX.Phone.currentMailConversation.mail &&
    _0x95e192.id == ESX.Phone.currentMailConversation.id
  ) {
    ESX.Phone.currentMailConversation.lastOpened = Date.now()
    $.post(
      'http://' + ESX.Phone.resourceName + '/readMail',
      JSON.stringify({ id: ESX.Phone.currentMailConversation.id })
    )
    let _0x35e985 = ''
    JSON.parse(_0x95e192.attachments).forEach((_0x2b4590) => {
      if (_0x2b4590.image) {
        _0x35e985 += '<img class="attachment" src="' + _0x2b4590.image + '">'
      } else {
        _0x2b4590.button &&
          (_0x35e985 +=
            '<button data-id="' +
            _0x2b4590.button.id +
            '" ' +
            (_0x2b4590.button.color
              ? 'style="--accent-color:' + _0x2b4590.button.color + '"'
              : '') +
            '>' +
            _0x2b4590.button.label +
            '</button>')
      }
    })
    _0x95e192.content = _0x95e192.server
      ? _0x95e192.content
      : ESX.Phone.functions.cleanText(_0x95e192.content)
    $('.mail > .mailbox .letterlist').append(
      '<hr>\n        <div class="letter" data-id="' +
      (ESX.Phone.mail[_0x11a2d2].mail.length - 1) +
      '">\n            <div class="header">\n                ' +
      (_0x95e192.sender.photo != ''
        ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
        _0x95e192.sender.photo +
        '">'
        : '<div class="avatar">' +
        _0x95e192.sender.name.charAt(0).toUpperCase() +
        '</div>') +
      '\n                <div class="info">\n                    <p class="name">' +
      ESX.Phone.functions.cleanText(_0x95e192.sender.name) +
      '</p>\n                    <p class="address">' +
      _0x95e192.sender.address +
      '</p>\n                </div>\n                <div class="right">\n                    ' +
      (_0x95e192.sender.address != ESX.Phone.mailData.address
        ? '<i class="fas fa-reply reply"></i>'
        : '') +
      '\n                    <p class="timestamp">' +
      ESX.Phone.functions.formatDate(_0x95e192.time) +
      '</p>\n                </div>\n            </div>\n            <div class="content">' +
      _0x95e192.content.replace(/\n/g, '<br>') +
      '</div>\n            ' +
      _0x35e985 +
      '\n        </div>'
    )
  }
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp('Mail')) {
    if (ESX.Phone.currentApp == 'Mail') {
      ESX.Phone.functions.setupMail(ESX.Phone.mail)
    }
    if (!ESX.Phone.settings.mailnotifications.value) {
      return
    }
    if (
      (_0x11a2d2 != -1 && !ESX.Phone.mail[_0x11a2d2].muted) ||
      _0x11a2d2 == -1
    ) {
      Config.Applications.Mail.notifCount++
      ESX.Phone.functions.updateApp('Mail', 'notifications')
      if (
        ESX.Phone.open &&
        ESX.Phone.currentMailConversation.id != _0x95e192.id
      ) {
        ESX.Phone.functions.sendNotification(
          Config.Applications.Mail.notifications.icon,
          Config.Applications.Mail.notifications.color,
          Config.Applications.Mail.label,
          '<strong>' +
          _0x95e192.sender.name +
          ':</strong><br>' +
          ESX.Phone.functions.cleanText2(_0x95e192.subject) +
          '<br>' +
          ESX.Phone.functions.cleanText2(_0x95e192.content),
          Config.Notifications.NewMail.length,
          JSON.stringify({
            app: 'Mail',
            conversation: _0x11a2d2,
          })
        )
        ESX.Phone.functions.playSound(Config.Sounds.NewMail)
      } else {
        !ESX.Phone.open &&
          (ESX.Phone.functions.sendOffNotification(
            Config.Applications.Mail.notifications.icon,
            Config.Applications.Mail.notifications.color,
            Config.Applications.Mail.label,
            '<strong>' +
            _0x95e192.sender.name +
            ':</strong><br>' +
            ESX.Phone.functions.cleanText2(_0x95e192.subject) +
            '<br>' +
            ESX.Phone.functions.cleanText2(_0x95e192.content),
            Config.Notifications.NewMail.length,
            JSON.stringify({
              app: 'Mail',
              conversation: _0x11a2d2,
            })
          ),
            ESX.Phone.functions.playSound(Config.Sounds.NewMail))
      }
    }
  }
}
const darkchatsb = new ScrollBooster({
  viewport: document.querySelector('.darkchat > .main .groups'),
  content: document.querySelector('.darkchat > .main .groups'),
  scrollMode: 'native',
  direction: 'vertical',
}),
  darkchatattachmentsb = new ScrollBooster({
    viewport: document.querySelector('.darkchat .privatechat .attachments'),
    content: document.querySelector('.darkchat .privatechat .attachments'),
    scrollMode: 'native',
    direction: 'horizontal',
  })
ESX.Phone.functions.resetDarkchat = function () {
  $('.darkchat .main > .newgroup').addClass('no-transition').removeClass('open')
  setTimeout(() => {
    $('.darkchat .main > .newgroup').removeClass('no-transition')
  }, 5)
  ESX.Phone.settings.airplane.value
    ? ($('.darkchat > .main .groups').hide(), $('.darkchat-loader').show())
    : ($('.darkchat > .main .groups').show(), $('.darkchat-loader').hide())
  ESX.Phone.darkchatData.nickname
    ? ($('.darkchat').addClass('darker'),
      $('.darkchat .register').addClass('no-transition').removeClass('visible'),
      $('.darkchat .main')
        .addClass('no-transition')
        .removeClass('hidden')
        .removeClass('hidden-alt'),
      $('.darkchat .privatechat')
        .addClass('no-transition')
        .removeClass('visible'),
      !ESX.Phone.settings.airplane.value &&
      setTimeout(() => {
        ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
      }, 0),
      setTimeout(() => {
        $(
          '.darkchat .main, .darkchat .register, .darkchat .privatechat'
        ).removeClass('no-transition')
      }, 5))
    : ($('.darkchat .register').addClass('no-transition').addClass('visible'),
      $('.darkchat .main').addClass('no-transition').addClass('hidden-alt'),
      $('.darkchat .privatechat')
        .addClass('no-transition')
        .removeClass('visible'),
      setTimeout(() => {
        $(
          '.darkchat .register, .darkchat .main, .darkchat .privatechat'
        ).removeClass('no-transition')
      }, 5))
}
ESX.Phone.functions.addButton('#darkchatregister', function (_0x3a7797) {
  let _0x52fb3c = $('#darknickname').val()
  if (_0x52fb3c.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.darknicknamenotfilled,
      Config.Notifications.Error.length
    )
  }
  $('.darkchat .register').removeClass('visible')
  $('.darkchat .main').removeClass('hidden').removeClass('hidden-alt')
  $('.darkchat').addClass('darker')
  const _0xf9c38e = {
    nickname: _0x52fb3c,
    photo: '',
  }
  ESX.Phone.functions.updateDarkchatData(JSON.stringify(_0xf9c38e))
  const _0x18c4d4 = {
    nickname: _0x52fb3c,
    photo: '',
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/saveDarkchatData',
    JSON.stringify(_0x18c4d4)
  )
})
ESX.Phone.functions.updateDarkchatData = function (_0x52f236) {
  let _0x355ac3 = JSON.parse(_0x52f236)
  if (!_0x355ac3.nickname) {
    return
  }
  ESX.Phone.darkchatData = _0x355ac3
  $('#darkchatnickname').html(ESX.Phone.functions.cleanText(_0x355ac3.nickname))
  let _0x59701a = _0x355ac3.nickname.charAt(0).toUpperCase()
  _0x355ac3.photo != ''
    ? ($('#darkchatletter').hide(),
      $('#darkchatimage').attr('src', _0x355ac3.photo).show())
    : ($('#darkchatimage').hide(), $('#darkchatletter').show().html(_0x59701a))
}
ESX.Phone.functions.setupDarkGroups = function (_0x14a6e0) {
  $('.darkchat > .main .groups').html('')
  let _0x279894 =
    typeof _0x14a6e0 == 'string' ? JSON.parse(_0x14a6e0) : _0x14a6e0
  _0x279894.sort(function (_0x393ec2, _0x30329f) {
    if (!_0x393ec2.messages.length) {
      return 1
    }
    if (!_0x30329f.messages.length) {
      return -1
    }
    return (
      _0x30329f.messages[_0x30329f.messages.length - 1].time -
      _0x393ec2.messages[_0x393ec2.messages.length - 1].time
    )
  })
  Config.Applications.Darkchat.notifCount = 0
  ESX.Phone.functions.updateApp('Darkchat', 'notifications')
  ESX.Phone.darkchatGroups = _0x279894
  let _0x54885f = ''
  for (let [_0x2ab021, _0x50131f] of Object.entries(_0x279894)) {
    if (_0x50131f.id == ESX.Phone.currentDarkGroup.id) {
      ESX.Phone.currentDarkGroup = _0x50131f
      ESX.Phone.functions.loadDarkMessages(_0x50131f)
      $('#currentdarkchatletter').html(_0x50131f.name.charAt(0).toUpperCase())
      _0x50131f.photo != ''
        ? ($('#currentdarkchatimage').attr('src', _0x50131f.photo).show(),
          $('#currentdarkchatletter').hide())
        : ($('#currentdarkchatimage').hide(),
          $('#currentdarkchatletter').show())
      $('#currentdarkchatname').html(
        ESX.Phone.functions.cleanText(_0x50131f.name)
      )
      let _0x11e59b = JSON.parse(_0x50131f.members).length
      $('#currentdarkchatmembers').html(
        _0x11e59b +
        ' ' +
        (_0x11e59b < 2
          ? Locales[Config.Language].member
          : Locales[Config.Language].members)
      )
    }
    let _0x566f72
    if (_0x50131f.messages.length) {
      _0x566f72 = {
        time: _0x50131f.messages[_0x50131f.messages.length - 1].time,
      }
    }
    let _0x29fe51 = ''
    !_0x50131f.muted &&
      ((_0x29fe51 =
        _0x50131f.unread > 0
          ? '<p class="notifications">' + _0x50131f.unread + '</p>'
          : ''),
        (Config.Applications.Darkchat.notifCount += _0x50131f.unread),
        ESX.Phone.functions.updateApp('Darkchat', 'notifications'))
    if (ESX.Phone.currentApp != 'Darkchat') {
      continue
    }
    let _0x3bce6d = _0x50131f.name.charAt(0).toUpperCase()
    _0x54885f +=
      '<div class="group ' +
      (!_0x50131f.muted && _0x50131f.unread > 0 ? 'unread' : '') +
      '" data-id="' +
      _0x50131f.id +
      '">\n            ' +
      (_0x50131f.photo != ''
        ? '<img class="cover" style="background-color:rgb(80, 80, 80)" src="' +
        _0x50131f.photo +
        '">'
        : '<div class="cover">' + _0x3bce6d + '</div>') +
      '\n            <div class="info">\n                <p class="name">' +
      ESX.Phone.functions.cleanText(_0x50131f.name) +
      '</p>\n                <p class="invite">' +
      Locales[Config.Language].html.darkchatgroupinvite.formatText(
        _0x50131f.invitecode
      ) +
      '</p>    \n            </div>\n            <div class="otherinfo">\n                <p class="time">' +
      (_0x566f72 ? ESX.Phone.functions.formatDate(_0x566f72.time) : '') +
      '</p>\n                ' +
      (_0x50131f.muted ? '<i class="fas fa-bell-slash bell"></i>' : '') +
      '\n                ' +
      _0x29fe51 +
      '\n            </div>\n        </div>'
  }
  $('.darkchat > .main .groups').html(_0x54885f)
  darkchatsb.updateMetrics()
}
ESX.Phone.functions.deleteDarkGroup = function (_0x4f0241) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  if (ESX.Phone.currentDarkGroup.id == _0x4f0241) {
    closeDarkchat()
  }
  ESX.Phone.darkchatGroups.splice(
    ESX.Phone.functions.getDarkGroup(_0x4f0241),
    1
  )
  $('.darkchat .privatechat .text').blur()
  let _0x20cfeb = $(
    '.darkchat > .main .groups > .group[data-id="' + _0x4f0241 + '"]'
  )
  const _0x5438e5 = {
    height: '0vw',
    opacity: '0.0',
  }
  _0x5438e5['margin-bottom'] = '0vw'
  _0x20cfeb.css(_0x5438e5)
  setTimeout(() => {
    _0x20cfeb.remove()
  }, 200)
}
ESX.Phone.functions.addButton(
  '.darkchat > .main .header .buttons > button',
  function (_0xf7c13a) {
    let _0x7d78ec = $(_0xf7c13a).data('action')
    if (_0x7d78ec == 'joingroup') {
      $('.darkchat #joindarkgrouppopup').addClass('open')
      let _0x11f1c8 = document.forms.joindarkgroup
      _0x11f1c8.elements.invitecode.value = ''
    } else {
      if (_0x7d78ec == 'editprofile') {
        $('.darkchat #editdarkprofilepopup').addClass('open')
        let _0x3228aa = document.forms.editdarkprofile
        _0x3228aa.elements.name.value = ESX.Phone.darkchatData.nickname
        _0x3228aa.elements.photo.value = ESX.Phone.darkchatData.photo
      }
    }
  }
)
ESX.Phone.functions.addButton('#joindarkgroup', function () {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantjoindarkgroups,
      Config.Notifications.Error.length
    )
  }
  let _0x328243 = document.forms.joindarkgroup,
    _0x7a285a = _0x328243.elements.invitecode.value
  if (_0x7a285a.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.darkinvitecodenotfilled,
      Config.Notifications.Error.length
    )
  }
  const _0x3f976b = { invitecode: _0x7a285a }
  $.post(
    'http://' + ESX.Phone.resourceName + '/joinDarkGroup',
    JSON.stringify(_0x3f976b),
    function (_0x2a9f31) {
      _0x2a9f31 == 'SUCCESS'
        ? ($('#joindarkgrouppopup').addClass('closing'),
          setTimeout(() => {
            $('#joindarkgrouppopup').removeClass('closing').removeClass('open')
          }, 200))
        : ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x2a9f31,
          Config.Notifications.Error.length
        )
    }
  )
})
ESX.Phone.functions.addButton('#savedarkprofile', async function () {
  let _0x1c8d3e = document.forms.editdarkprofile,
    _0x6d48ed = _0x1c8d3e.elements.name.value,
    _0x16b9c3 = _0x1c8d3e.elements.photo.value
  if (_0x6d48ed.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.darknicknamenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x16b9c3 != '' && _0x16b9c3.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0x16b9c3 =
    _0x16b9c3 == '' || _0x16b9c3.indexOf('http') > -1
      ? _0x16b9c3
      : 'http://' + _0x16b9c3
  let _0x39743f = await ESX.Phone.functions.urlExists(_0x16b9c3)
  if (!_0x39743f) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  const _0x11ef3e = {
    nickname: _0x6d48ed,
    photo: _0x16b9c3,
  }
  ESX.Phone.functions.updateDarkchatData(JSON.stringify(_0x11ef3e))
  const _0x1adc2d = {
    nickname: _0x6d48ed,
    photo: _0x16b9c3,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/saveDarkchatData',
    JSON.stringify(_0x1adc2d)
  )
  $('#editdarkprofilepopup').addClass('closing')
  setTimeout(() => {
    $('#editdarkprofilepopup').removeClass('closing').removeClass('open')
  }, 200)
})
ESX.Phone.functions.addImageSelector(
  '#editdarkprofilepopup .upload',
  '#editdarkprofilepopup .image > input',
  true
)
ESX.Phone.functions.addDynamicButton(
  '.darkchat > .darkPopup .bg',
  function (_0x17d414) {
    $(_0x17d414).closest('.darkPopup').addClass('closing')
    setTimeout(() => {
      $(_0x17d414)
        .closest('.darkPopup')
        .removeClass('closing')
        .removeClass('open')
    }, 200)
  }
)
ESX.Phone.functions.addDynamicButton(
  '.darkchat > .darkPopup .close',
  function (_0x799332) {
    $(_0x799332).closest('.darkPopup').addClass('closing')
    setTimeout(() => {
      $(_0x799332)
        .closest('.darkPopup')
        .removeClass('closing')
        .removeClass('open')
    }, 200)
  }
)
ESX.Phone.functions.addDynamicButton(
  '.darkchat .main > .newgroup .toggle',
  function (_0x4fca49, _0x6abdbd) {
    _0x6abdbd.stopPropagation()
    $('.darkchat .main > .newgroup').toggleClass('open')
    let _0x4f8c47 = document.forms.newdarkgroup
    _0x4f8c47.elements.name.value = ''
    _0x4f8c47.elements.members.value = ''
    _0x4f8c47.elements.photo.value = ''
  }
)
ESX.Phone.functions.addDynamicButton(
  '.darkchat .main > .newgroup .creategroup',
  async function (_0x4cc159, _0x26868c) {
    if (ESX.Phone.settings.airplane.value) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.airplanecantcreatedarkgroup,
        Config.Notifications.Error.length
      )
    }
    if (groupCreating) {
      return
    }
    let _0x33d9d1 = document.forms.newdarkgroup,
      _0x2b508c = _0x33d9d1.elements.name.value,
      _0x5d56df = _0x33d9d1.elements.members.value,
      _0x1eeeac = _0x33d9d1.elements.photo.value
    if (_0x5d56df < 1 || _0x5d56df > Config.DarkMemberLimit) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.darkgroupmembersoutofrange,
        Config.Notifications.Error.length
      )
    }
    if (_0x2b508c.length < 1) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.darkgroupnamenotfilled,
        Config.Notifications.Error.length
      )
    }
    if (_0x1eeeac != '' && _0x1eeeac.match(/\.(jpeg|jpg|gif|png)$/) == null) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.wrongimageurl,
        Config.Notifications.Error.length
      )
    }
    _0x1eeeac =
      _0x1eeeac == '' || _0x1eeeac.indexOf('http') > -1
        ? _0x1eeeac
        : 'http://' + _0x1eeeac
    let _0x1eb11b = await ESX.Phone.functions.urlExists(_0x1eeeac)
    if (!_0x1eb11b) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.imagenotavailable,
        Config.Notifications.Error.length
      )
    }
    $('.darkchat .main > .newgroup').removeClass('open')
    groupCreating = true
    const _0x4f6401 = {
      name: _0x2b508c,
      photo: _0x1eeeac,
      maxmembers: _0x5d56df,
    }
    $.post(
      'http://' + ESX.Phone.resourceName + '/createDarkGroup',
      JSON.stringify(_0x4f6401),
      function (_0x6da0de) {
        groupCreating = false
        let _0x1e4369 = JSON.parse(_0x6da0de)
        ESX.Phone.functions.openDarkGroup({
          id: _0x1e4369.id,
          invitecode: _0x1e4369.invitecode,
          name: _0x2b508c,
          photo: _0x1eeeac,
          messages: [],
          maxmembers: _0x5d56df,
          members: JSON.stringify([ESX.Phone.identifier]),
          owned: true,
        })
        _0x33d9d1.elements.name.value = ''
        _0x33d9d1.elements.members.value = ''
        _0x33d9d1.elements.photo.value = ''
      }
    )
  }
)
ESX.Phone.functions.addImageSelector(
  '.darkchat .main > .newgroup .upload',
  '.darkchat .main > .newgroup .image > input',
  true
)
ESX.Phone.functions.getDarkGroup = function (_0x5212b3) {
  let _0x5e1d94 = ESX.Phone.darkchatGroups.findIndex(
    (_0xda6cf) => _0xda6cf.id == _0x5212b3
  )
  return _0x5e1d94
}
ESX.Phone.functions.addDynamicButton('#closedarkchat', function (_0x1a7c48) {
  closeDarkchat()
})
function closeDarkchat() {
  $('.darkchat .privatechat').removeClass('settings-focused')
  $('.darkchat .privatechat .header .buttons > button[data-action="edit"]').css(
    'display',
    ''
  )
  $('.darkchat .privatechat').removeClass('visible')
  $('.darkchat .main').removeClass('hidden').removeClass('hidden-alt')
  ESX.Phone.currentDarkGroup = {}
}
ESX.Phone.functions.addDynamicButton(
  '.darkchat .privatechat .settingsscreen .memberlist .member .buttons > *',
  function (_0x22ab81) {
    let _0x4abff5 = $(_0x22ab81).data('action')
    let _0x231c8b = $(_0x22ab81).closest('.member').data('identifier'),
      _0x143bcf = JSON.parse(ESX.Phone.currentDarkGroup.members).find(
        (_0x5d7c3d) => _0x5d7c3d.identifier == _0x231c8b
      )
    if (!_0x143bcf) {
      return
    }
    if (_0x4abff5 == 'kick') {
      ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        Locales[Config.Language].notifications.kickedmember.formatText(
          _0x143bcf.nickname
        ),
        Config.Notifications.Error.length
      )
      $.post(
        'http://' + ESX.Phone.resourceName + '/kickDarkMember',
        JSON.stringify({
          id: ESX.Phone.currentDarkGroup.id,
          member: _0x231c8b,
        })
      )
      $(_0x22ab81).closest('.member').addClass('hidden')
    } else {
      if (_0x4abff5 == 'ban') {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.bannedmember.formatText(
            _0x143bcf.nickname
          ),
          Config.Notifications.Error.length
        )
        $.post(
          'http://' + ESX.Phone.resourceName + '/banDarkMember',
          JSON.stringify({
            id: ESX.Phone.currentDarkGroup.id,
            member: _0x231c8b,
          })
        )
        $(_0x22ab81).closest('.member').addClass('hidden')
      }
    }
  }
)
ESX.Phone.functions.addDynamicButton(
  '.darkchat > .privatechat .header .buttons > button',
  function (_0xd886fa) {
    let _0x5e6f13 = $(_0xd886fa).data('action')
    if (_0x5e6f13 == 'edit') {
      let _0x18228b = document.forms.editdarkgroup
      _0x18228b.elements.name.value = ESX.Phone.currentDarkGroup.name
      _0x18228b.elements.members.value = ESX.Phone.currentDarkGroup.maxmembers
      _0x18228b.elements.photo.value = ESX.Phone.currentDarkGroup.photo
      $('.darkchat .privatechat .settingsscreen .memberlist').html('')
      JSON.parse(ESX.Phone.currentDarkGroup.members).forEach((_0x1f22ef) => {
        let _0x1fb7b0 = _0x1f22ef.nickname.charAt(0).toUpperCase(),
          _0x2c9ba8 =
            '<div class="member" data-identifier="' +
            _0x1f22ef.identifier +
            '">\n                ' +
            (_0x1f22ef.photo != ''
              ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
              _0x1f22ef.photo +
              '">'
              : '<div class="avatar">' + _0x1fb7b0 + '</div>') +
            '\n                <p class="name">' +
            ESX.Phone.functions.cleanText(_0x1f22ef.nickname) +
            ' <span style="color: rgba(255, 255, 255, 0.7);">' +
            (_0x1f22ef.identifier == ESX.Phone.identifier
              ? Locales[Config.Language].dark_you
              : '') +
            '</span></p>\n                <div class="buttons" ' +
            (_0x1f22ef.identifier == ESX.Phone.identifier
              ? 'style="display: none;"'
              : '') +
            '>\n                    <i class="fas fa-ban" data-action="ban"></i>\n                    <i class="far fa-times-circle" data-action="kick"></i>\n                </div>\n            </div>'
        $('.darkchat .privatechat .settingsscreen .memberlist').append(
          _0x2c9ba8
        )
      })
      $('.darkchat .privatechat').addClass('settings-focused')
      $(
        '.darkchat .privatechat .header .buttons > button[data-action="edit"]'
      ).fadeOut(150)
    } else {
      if (_0x5e6f13 == 'notifications') {
        ESX.Phone.currentDarkGroup.muted = !ESX.Phone.currentDarkGroup.muted
        $.post(
          'http://' + ESX.Phone.resourceName + '/muteDarkGroup',
          JSON.stringify({
            id: ESX.Phone.currentDarkGroup.id,
            muted: ESX.Phone.currentDarkGroup.muted,
          })
        )
        ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
        if (ESX.Phone.currentDarkGroup.muted) {
          $(_0xd886fa).find('*').attr('class', 'fas fa-bell-slash icon')
        } else {
          $(_0xd886fa).find('*').attr('class', 'fas fa-bell icon')
        }
      } else {
        _0x5e6f13 == 'leave' &&
          ($.post(
            'http://' + ESX.Phone.resourceName + '/leaveDarkGroup',
            JSON.stringify({ id: ESX.Phone.currentDarkGroup.id })
          ),
            closeDarkchat(),
            $(
              '.darkchat > .main .groups > .group[data-id="' +
              ESX.Phone.currentDarkGroup.id +
              '"]'
            ).css({
              height: '0vw',
              opacity: '0.0',
              'margin-bottom': '0vw',
            }))
      }
    }
  }
)
ESX.Phone.functions.addDynamicButton(
  '.darkchat .privatechat .settingsscreen .upload',
  function (_0x3c7fdd, _0x35dd9b) {
    let _0x37b133 = $(_0x3c7fdd).data('open')
    $(_0x3c7fdd).data('open', !_0x37b133)
    if (!_0x37b133) {
      $('.darkchat .privatechat .settingsscreen .upload #contextmenu').fadeIn(
        250
      )
    } else {
      $('.darkchat .privatechat .settingsscreen .upload #contextmenu').fadeOut(
        250
      )
    }
  }
)
$(document).on('click', function (_0x4ec1c0) {
  _0x4ec1c0.target.className != 'upload' &&
    ($('.darkchat .privatechat .settingsscreen .upload').data('open', false),
      $('.darkchat .privatechat .settingsscreen .upload #contextmenu').fadeOut(
        250
      ))
})
ESX.Phone.functions.addDynamicButton(
  '.darkchat .privatechat .settingsscreen .upload .contextbutton',
  function (_0x46afce, _0x446878) {
    let _0x8850e0 = $(_0x46afce).data('action')
    if (_0x8850e0 == 'selectimage') {
      ESX.Phone.functions.openPhotoSelector(function (_0x4b6bfa) {
        $('.darkchat .privatechat .settingsscreen .image > input').val(
          _0x4b6bfa
        )
      })
    } else {
      _0x8850e0 == 'takephoto' &&
        ESX.Phone.functions.openTakePhoto(function (_0x123c34) {
          $('.darkchat .privatechat .settingsscreen .image > input').val(
            _0x123c34
          )
        })
    }
  }
)
ESX.Phone.functions.addButton('#savedarkgroup', async function (_0x1d0be2) {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecanteditdarkgroup,
      Config.Notifications.Error.length
    )
  }
  let _0x36fe6e = document.forms.editdarkgroup,
    _0x60c045 = _0x36fe6e.elements.name.value,
    _0x1331d4 = _0x36fe6e.elements.members.value,
    _0x2f7cfe = _0x36fe6e.elements.photo.value
  if (_0x1331d4 < 1 || _0x1331d4 > Config.DarkMemberLimit) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.darkgroupmembersoutofrange,
      Config.Notifications.Error.length
    )
  }
  if (_0x60c045.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.darkgroupnamenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x2f7cfe != '' && _0x2f7cfe.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0x2f7cfe =
    _0x2f7cfe == '' || _0x2f7cfe.indexOf('http') > -1
      ? _0x2f7cfe
      : 'http://' + _0x2f7cfe
  let _0x13ae31 = await ESX.Phone.functions.urlExists(_0x2f7cfe)
  if (!_0x13ae31) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/saveDarkGroup',
    JSON.stringify({
      id: ESX.Phone.currentDarkGroup.id,
      name: _0x60c045,
      photo: _0x2f7cfe,
      maxmembers: _0x1331d4,
    })
  )
  ESX.Phone.currentDarkGroup.name = _0x60c045
  ESX.Phone.currentDarkGroup.photo = _0x2f7cfe
  ESX.Phone.currentDarkGroup.maxmembers = _0x1331d4
  ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
  _0x36fe6e.elements.name.value = ''
  _0x36fe6e.elements.members.value = ''
  _0x36fe6e.elements.photo.value = ''
  $('.darkchat .privatechat').removeClass('settings-focused')
  $(
    '.darkchat .privatechat .header .buttons > button[data-action="edit"]'
  ).fadeIn(150)
})
ESX.Phone.functions.addButton('#canceleditdarkgroup', function (_0x25d20) {
  $('.darkchat .privatechat').removeClass('settings-focused')
  $(
    '.darkchat .privatechat .header .buttons > button[data-action="edit"]'
  ).fadeIn(150)
})
ESX.Phone.functions.addDynamicButton(
  '#darkmessages .box img',
  function (_0x3ff1ec) {
    let _0x4e1f6d = $(_0x3ff1ec).attr('src')
    ESX.Phone.functions.previewImage(_0x4e1f6d)
  }
)
ESX.Phone.functions.addButton(
  '.darkchat .more > .more-items > .icon',
  function (_0x51e3bb) {
    let _0x3e453f = $(_0x51e3bb).data('action')
    switch (_0x3e453f) {
      case 'sendcoords':
        $.post(
          'http://' + ESX.Phone.resourceName + '/getCoords',
          JSON.stringify({}),
          function (_0x282bbc) {
            let _0x7fdc9f = JSON.parse(_0x282bbc),
              _0x36c6dd =
                '(GPS:' +
                _0x7fdc9f.x.toFixed(3) +
                ',' +
                _0x7fdc9f.y.toFixed(3) +
                ')'
            if (
              ($('.darkchat .privatechat .text').val() + _0x36c6dd).length <
              $('.darkchat .privatechat .text').attr('maxlength')
            ) {
              $('.darkchat .privatechat .text').val(
                $('.darkchat .privatechat .text').val() + _0x36c6dd
              )
            }
            $('.more').removeClass('active')
            $('.more .more-items').css('height', '1.3vw')
          }
        )
        break
      case 'openemojimenu':
        window.picker.togglePicker(_0x51e3bb)
        break
      case 'takephoto':
        ESX.Phone.functions.openTakePhoto(function (_0x12b7c7) {
          addDarkAttachment(_0x12b7c7)
        })
        break
      case 'selectphoto':
        ESX.Phone.functions.openPhotoSelector(function (_0x205c39) {
          addDarkAttachment(_0x205c39)
        })
        break
    }
  }
)
var currentDarkAttachments = []
function addDarkAttachment(_0x217338) {
  if (currentDarkAttachments.length >= Config.AttachmentLimit) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.toomanyattachments.formatText(
        Config.AttachmentLimit
      ),
      Config.Notifications.Error.length
    )
  }
  currentDarkAttachments.length < 1 &&
    ($('.darkchat .privatechat .content').addClass('attached'),
      $('.darkchat .privatechat .attachments').show())
  const _0xffc1a3 = {}
  _0xffc1a3.image = _0x217338
  currentDarkAttachments.push(_0xffc1a3)
  $('.darkchat .privatechat .attachments').append(
    '<div class="attachment" data-id="' +
    (currentDarkAttachments.length - 1) +
    '">\n        <img src="' +
    _0x217338 +
    '">\n        <p class="title">' +
    Locales[Config.Language].attachment.formatText(
      currentDarkAttachments.length
    ) +
    '</p>\n        <div class="delete"><i class="far fa-times"></i></div>\n    </div>'
  )
  darkchatattachmentsb.updateMetrics()
}
function resetDarkAttachments() {
  currentDarkAttachments = []
  $('.darkchat .privatechat .attachments > *').remove()
  $('.darkchat .privatechat .content').removeClass('attached')
  $('.darkchat .privatechat .attachments').hide()
}
ESX.Phone.functions.addDynamicButton(
  '.darkchat .attachment > .delete',
  function (_0x52fdf7) {
    let _0x2d16a8 = $(_0x52fdf7).parent().data('id')
    currentDarkAttachments.splice(_0x2d16a8, 1)
    $('.attachment[data-id="' + _0x2d16a8 + '"]').remove()
    currentAttachments.length < 1 &&
      ($('.darkchat .privatechat .content').removeClass('attached'),
        $('.darkchat .privatechat .attachments').hide())
  }
)
$('.darkchat .privatechat .text').on('keyup', function (_0x28c441) {
  _0x28c441.keyCode == 13 && sendNewDarkMessage()
})
function sendNewDarkMessage() {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantsend,
      Config.Notifications.Error.length
    )
  }
  let _0x150c2d = $('.darkchat .privatechat .text').val()
  if (_0x150c2d.length < 1 && currentDarkAttachments.length < 1) {
    return
  }
  let _0x5a5fe7 = ESX.Phone.functions.replaceLocations(
    !Config.EnableHTMLDarkchat
      ? ESX.Phone.functions.cleanText(_0x150c2d)
      : _0x150c2d
  ),
    _0x466c1e = ''
  currentDarkAttachments.forEach((_0xef9433) => {
    _0x466c1e += '<img src="' + _0xef9433.image + '">'
  })
  $('.darkchat .privatechat .text').val('')
  let _0x45d372 = Date.now()
  $('.darkchat > .privatechat .chatmessages').append(
    '<div class="me" data-time="' +
    _0x45d372 +
    '">\n        <div class="box">\n            ' +
    _0x466c1e +
    '\n            ' +
    _0x5a5fe7 +
    '\n        </div>\n        <p class="time">' +
    ESX.Phone.functions.formatDate(new Date()) +
    '</p>\n    </div>'
  )
  $('.darkchat > .privatechat .chatmessages').scrollTop(
    document.getElementById('darkmessages').scrollHeight
  )
  ESX.Phone.currentDarkGroup.messages.push({
    from: ESX.Phone.identifier,
    to: ESX.Phone.currentDarkGroup.id,
    message: _0x150c2d,
    attachments: JSON.stringify(currentDarkAttachments),
    time: _0x45d372,
    unread: 0,
  })
  ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
  $.post(
    'http://' + ESX.Phone.resourceName + '/sendDarkMessage',
    JSON.stringify({
      id: ESX.Phone.currentDarkGroup.id,
      content: _0x150c2d,
      attachments: JSON.stringify(currentDarkAttachments),
      time: _0x45d372,
    })
  )
  resetDarkAttachments()
}
ESX.Phone.functions.addButton('.darkchat .privatechat .send', function () {
  sendNewDarkMessage()
})
ESX.Phone.functions.addDynamicButton(
  '.darkchat > .main .groups > .group',
  function (_0x521713) {
    let _0x4f2040 = $(_0x521713).data('id')
    let _0x5b79b4 = ESX.Phone.darkchatGroups.find(
      (_0x77a5c8) => _0x77a5c8.id == _0x4f2040
    )
    ESX.Phone.functions.openDarkGroup(_0x5b79b4)
  }
)
ESX.Phone.functions.openDarkGroup = function (_0x9abfa8) {
  ESX.Phone.currentDarkGroup = _0x9abfa8
  $.post(
    'http://' + ESX.Phone.resourceName + '/readDarkMessages',
    JSON.stringify({
      id: _0x9abfa8.id,
      time: Date.now(),
    })
  )
  ESX.Phone.functions.readDarkMessages(ESX.Phone.currentDarkGroup)
  $('#currentdarkchatletter').html(_0x9abfa8.name.charAt(0).toUpperCase())
  if (_0x9abfa8.photo != '') {
    $('#currentdarkchatimage').attr('src', _0x9abfa8.photo).show()
    $('#currentdarkchatletter').hide()
  } else {
    $('#currentdarkchatimage').hide()
    $('#currentdarkchatletter').show()
  }
  $('#currentdarkchatname').html(_0x9abfa8.name)
  let _0x44a2cf = JSON.parse(_0x9abfa8.members).length
  $('#currentdarkchatmembers').html(
    _0x44a2cf +
    ' ' +
    (_0x44a2cf < 2
      ? Locales[Config.Language].member
      : Locales[Config.Language].members)
  )
  $('.darkchat > .main').addClass('hidden')
  $('.darkchat > .privatechat').addClass('visible')
  if (_0x9abfa8.owned) {
    $('.darkchat > .privatechat').addClass('owned')
  } else {
    $('.darkchat > .privatechat').removeClass('owned')
  }
  if (_0x9abfa8.muted) {
    $(
      '.darkchat .privatechat .header .buttons > button[data-action="notifications"] > *'
    ).attr('class', 'fas fa-bell-slash icon')
  } else {
    $(
      '.darkchat .privatechat .header .buttons > button[data-action="notifications"] > *'
    ).attr('class', 'fas fa-bell icon')
  }
  ESX.Phone.functions.loadDarkMessages(_0x9abfa8)
}
ESX.Phone.functions.updateDarkGroup = function (_0x434292) {
  let _0x556102 =
    typeof _0x434292 == 'string' ? JSON.parse(_0x434292) : _0x434292,
    _0x4c4bd2 = ESX.Phone.darkchatGroups.findIndex(
      (_0x7b8321) => _0x7b8321.id == _0x556102.id
    )
  ESX.Phone.darkchatGroups[_0x4c4bd2] = _0x556102
  ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
}
ESX.Phone.functions.addDynamicContextMenu(
  '.darkchat > .main .groups > .group',
  false,
  function (_0x66f5b) {
    let _0x546cb6 = $(_0x66f5b).data('id'),
      _0x559ed1 = ESX.Phone.darkchatGroups.find(
        (_0x38320d) => _0x38320d.id == _0x546cb6
      )
    if (!_0x559ed1.owned) {
      ESX.Phone.functions.addButtonToContext(
        'fas fa-sign-out-alt',
        Locales[Config.Language].leavegroup,
        'red',
        function () {
          if (ESX.Phone.currentDarkGroup.id == _0x559ed1.id) {
            closeDarkchat()
          }
          $(_0x66f5b).css({
            height: '0vw',
            opacity: '0.0',
            'margin-bottom': '0vw',
          })
          const _0x5a7d32 = { id: _0x559ed1.id }
          $.post(
            'http://' + ESX.Phone.resourceName + '/leaveDarkGroup',
            JSON.stringify(_0x5a7d32)
          )
        }
      )
    } else {
      ESX.Phone.functions.addButtonToContext(
        'far fa-trash-alt',
        Locales[Config.Language].delete,
        'red',
        function () {
          if (ESX.Phone.currentDarkGroup.id == _0x559ed1.id) {
            closeDarkchat()
          }
          $(_0x66f5b).css({
            height: '0vw',
            opacity: '0.0',
            'margin-bottom': '0vw',
          })
          const _0x4b33b5 = { id: _0x559ed1.id }
          $.post(
            'http://' + ESX.Phone.resourceName + '/deleteDarkGroup',
            JSON.stringify(_0x4b33b5)
          )
        }
      )
    }
    ESX.Phone.functions.addButtonToContext(
      _0x559ed1.muted ? 'fas fa-bell' : 'fas fa-bell-slash',
      _0x559ed1.muted
        ? Locales[Config.Language].unmutegroup
        : Locales[Config.Language].mutegroup,
      false,
      function () {
        _0x559ed1.muted = !_0x559ed1.muted
        const _0x7a1db0 = {
          id: _0x559ed1.id,
          muted: _0x559ed1.muted,
        }
        $.post(
          'http://' + ESX.Phone.resourceName + '/muteDarkGroup',
          JSON.stringify(_0x7a1db0)
        )
        ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
      }
    )
    _0x559ed1.unread > 0 &&
      !_0x559ed1.muted &&
      ESX.Phone.functions.addButtonToContext(
        'fas fa-eye',
        Locales[Config.Language].markasread,
        false,
        function () {
          $.post(
            'http://' + ESX.Phone.resourceName + '/readDarkMessages',
            JSON.stringify({
              id: _0x559ed1.id,
              time: Date.now(),
            })
          ),
            ESX.Phone.functions.readDarkMessages(_0x559ed1)
        }
      )
    ESX.Phone.functions.addButtonToContext(
      'fas fa-clipboard',
      Locales[Config.Language].copyinvite,
      false,
      function () {
        ESX.Phone.functions.copyToClipboard(_0x559ed1.invitecode)
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.copiedinvite,
          Config.Notifications.Error.length
        )
      }
    )
  }
)
ESX.Phone.functions.addDynamicContextMenu(
  '.darkchat > .privatechat .chatmessages > .me > .box',
  false,
  function (_0x109e4b) {
    ESX.Phone.functions.addButtonToContext(
      'far fa-trash-alt',
      Locales[Config.Language].delete,
      'red',
      function () {
        let _0x2d3ff2 = $(_0x109e4b).parent().data('time')
        $(_0x109e4b).parent().remove()
        $.post(
          'http://' + ESX.Phone.resourceName + '/deleteDarkMessage',
          JSON.stringify({
            time: _0x2d3ff2,
            id: ESX.Phone.currentDarkGroup.id,
          })
        )
      }
    )
  }
)
ESX.Phone.functions.loadDarkMessages = function (_0x581dfe) {
  $('.darkchat > .privatechat .chatmessages').html('')
  if (_0x581dfe.messages.length) {
    _0x581dfe.messages.forEach((_0x2a6577, _0x3c579e) => {
      let _0xebde13 = ESX.Phone.functions.replaceLocations(
        !Config.EnableHTMLDarkchat
          ? ESX.Phone.functions.cleanText(_0x2a6577.message)
          : _0x2a6577.message
      )
      let _0x1ce91a = JSON.parse(_0x2a6577.attachments),
        _0x1239c8 = ''
      _0x1ce91a.forEach((_0x32eaef) => {
        _0x1239c8 += '<img src="' + _0x32eaef.image + '">'
      })
      if (_0x2a6577.from != 'SYSTEM') {
        let _0x52b1a9 = JSON.parse(_0x581dfe.members).find(
          (_0x2d89c6) => _0x2d89c6.identifier == _0x2a6577.from
        )
        const _0x4ab861 = {
          nickname: Locales[Config.Language].unknown,
          photo: '',
        }
        if (!_0x52b1a9) {
          _0x52b1a9 = _0x4ab861
        }
        let _0xc8517 =
          _0x2a6577.from != ESX.Phone.identifier && _0x52b1a9.photo != ''
            ? '<img class="avatar" src="' + _0x52b1a9.photo + '">'
            : _0x2a6577.from != ESX.Phone.identifier
              ? '<div class="avatar">' +
              _0x52b1a9.nickname.charAt(0).toUpperCase() +
              '</div>'
              : ''
        $('.darkchat > .privatechat .chatmessages').append(
          '<div class="' +
          (_0x2a6577.from == ESX.Phone.identifier ? 'me' : 'other') +
          '" data-time="' +
          _0x2a6577.time +
          '">\n                    ' +
          (_0x2a6577.from != ESX.Phone.identifier
            ? _0xc8517 + '<div class="right">'
            : '') +
          '\n                        ' +
          (_0x2a6577.from != ESX.Phone.identifier
            ? '<p class="time"><span class="nickname">' +
            ESX.Phone.functions.cleanText(_0x52b1a9.nickname) +
            '</span> ' +
            ESX.Phone.functions.formatDate(_0x2a6577.time) +
            '</p>'
            : '') +
          '\n                        <div class="box">\n                            ' +
          _0x1239c8 +
          '\n                            ' +
          _0xebde13 +
          '\n                        </div>\n                        ' +
          (_0x2a6577.from == ESX.Phone.identifier
            ? '<p class="time">' +
            ESX.Phone.functions.formatDate(_0x2a6577.time) +
            '</p>'
            : '') +
          '\n                    ' +
          (_0x2a6577.from != ESX.Phone.identifier ? '</div>' : '') +
          '\n                </div>'
        )
      } else {
        $('.darkchat > .privatechat .chatmessages').append(
          '<p class="system">' + _0x2a6577.message + '</p>'
        )
      }
      _0x3c579e == _0x581dfe.messages.length - 1 &&
        $('.darkchat > .privatechat .chatmessages').scrollTop(
          document.getElementById('darkmessages').scrollHeight
        )
    })
  }
}
ESX.Phone.functions.readDarkMessages = function (_0x2d51b8) {
  Config.Applications.Darkchat.notifCount -= _0x2d51b8.unread
  ESX.Phone.functions.updateApp('Darkchat', 'notifications')
  _0x2d51b8.unread = 0
  _0x2d51b8.messages.length &&
    _0x2d51b8.messages.forEach((_0x196b6a, _0x182343) => {
      _0x196b6a.unread = 0
      _0x182343 == _0x2d51b8.messages.length - 1 &&
        ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
    })
}
ESX.Phone.functions.addDarkGroupMessage = async function (
  _0x153a79,
  _0x59f6ca,
  _0x5cd2c4,
  _0xb599ae
) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0xae0ee1 = ESX.Phone.functions.replaceLocations(
    !Config.EnableHTMLDarkchat
      ? ESX.Phone.functions.cleanText(_0x5cd2c4)
      : _0x5cd2c4
  ),
    _0x53acc9 = ESX.Phone.functions.getDarkGroup(_0x153a79)
  if (_0x53acc9 == -1) {
    return
  }
  let _0x3c630b
  if (_0x59f6ca != 'SYSTEM') {
    _0x3c630b = JSON.parse(ESX.Phone.darkchatGroups[_0x53acc9].members).find(
      (_0x8bd405) => _0x8bd405.identifier == _0x59f6ca
    )
    const _0x2f8997 = {
      nickname: Locales[Config.Language].unknown,
      photo: '',
    }
    if (!_0x3c630b) {
      _0x3c630b = _0x2f8997
    }
  }
  if (ESX.Phone.currentDarkGroup.id == _0x153a79) {
    let _0x4e4a39 = JSON.parse(_0xb599ae),
      _0x29e3d6 = ''
    _0x4e4a39.forEach((_0x4c5cd7) => {
      _0x29e3d6 += '<img src="' + _0x4c5cd7.image + '">'
    })
    if (_0x59f6ca != 'SYSTEM') {
      let _0x52df92 = _0x3c630b.nickname.charAt(0).toUpperCase(),
        _0x2f3c9a =
          _0x3c630b.photo != ''
            ? '<img class="avatar" src="' + _0x3c630b.photo + '">'
            : '<div class="avatar">' + _0x52df92 + '</div>'
      $('.darkchat > .privatechat .chatmessages').append(
        '<div class="other">\n                ' +
        (_0x2f3c9a + '<div class="right">') +
        '\n                    <p class="time">' +
        (_0x59f6ca == ESX.Phone.identifier
          ? ESX.Phone.functions.formatDate(Date.now())
          : '<span class="nickname">' +
          ESX.Phone.functions.cleanText(_0x3c630b.nickname) +
          '</span> ' +
          ESX.Phone.functions.formatDate(Date.now())) +
        '</p>\n                    <div class="box">\n                        ' +
        _0x29e3d6 +
        '\n                        ' +
        _0xae0ee1 +
        '\n                    </div>\n                </div>\n            </div>'
      )
    } else {
      $('.darkchat > .privatechat .chatmessages').append(
        '<p class="system">' + _0x5cd2c4 + '</p>'
      )
    }
    $('.darkchat > .privatechat .chatmessages').scrollTop(
      document.getElementById('darkmessages').scrollHeight
    )
    $.post(
      'http://' + ESX.Phone.resourceName + '/readDarkMessages',
      JSON.stringify({
        id: _0x153a79,
        time: Date.now(),
      })
    )
    ESX.Phone.functions.readDarkMessages(ESX.Phone.currentDarkGroup)
    ESX.Phone.currentDarkGroup.messages.push({
      from: _0x59f6ca,
      to: _0x153a79,
      message: _0xae0ee1,
      attachments: _0xb599ae,
      time: Date.now(),
      unread: 0,
    })
  } else {
    ESX.Phone.darkchatGroups[_0x53acc9].messages.push({
      from: _0x59f6ca,
      to: _0x153a79,
      message: _0xae0ee1,
      attachments: _0xb599ae,
      time: Date.now(),
      unread: 1,
    })
    ESX.Phone.darkchatGroups[_0x53acc9].unread++
  }
  Config.Applications.Darkchat.notifCount++
  ESX.Phone.functions.updateApp('Darkchat', 'notifications')
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp('Darkchat')) {
    if (ESX.Phone.currentApp == 'Darkchat') {
      ESX.Phone.functions.setupDarkGroups(ESX.Phone.darkchatGroups)
    }
    if (_0x53acc9 != -1 && !ESX.Phone.darkchatGroups[_0x53acc9].muted) {
      if (ESX.Phone.open && ESX.Phone.currentDarkGroup.id != _0x153a79) {
        const _0x410979 = {
          app: 'Darkchat',
          group: _0x153a79,
        }
        ESX.Phone.functions.sendNotification(
          Config.Applications.Darkchat.notifications.icon,
          Config.Applications.Darkchat.notifications.color,
          Config.Applications.Darkchat.label,
          _0x59f6ca != 'SYSTEM'
            ? Locales[Config.Language].new_dark_group_message.formatText(
              !Config.EnableHTMLDarkchat
                ? ESX.Phone.functions.cleanText(_0x3c630b.nickname)
                : _0x3c630b.nickname,
              ESX.Phone.darkchatGroups[_0x53acc9].name,
              !Config.EnableHTMLDarkchat
                ? ESX.Phone.functions.cleanText(_0xae0ee1)
                : _0xae0ee1
            )
            : '<strong>' +
            ESX.Phone.darkchatGroups[_0x53acc9].name +
            '</strong><br>' +
            (!Config.EnableHTMLDarkchat
              ? ESX.Phone.functions.cleanText(_0xae0ee1)
              : _0xae0ee1),
          Config.Notifications.NewDarkMessage.length,
          JSON.stringify(_0x410979)
        )
        ESX.Phone.functions.playSound(Config.Sounds.NewDarkMessage)
      } else {
        !ESX.Phone.open &&
          (ESX.Phone.functions.sendOffNotification(
            Config.Applications.Darkchat.notifications.icon,
            Config.Applications.Darkchat.notifications.color,
            Config.Applications.Darkchat.label,
            _0x59f6ca != 'SYSTEM'
              ? Locales[Config.Language].new_dark_group_message.formatText(
                !Config.EnableHTMLDarkchat
                  ? ESX.Phone.functions.cleanText(_0x3c630b.nickname)
                  : _0x3c630b.nickname,
                ESX.Phone.darkchatGroups[_0x53acc9].name,
                !Config.EnableHTMLDarkchat
                  ? ESX.Phone.functions.cleanText(_0xae0ee1)
                  : _0xae0ee1
              )
              : '<strong>' +
              ESX.Phone.darkchatGroups[_0x53acc9].name +
              '</strong><br>' +
              (!Config.EnableHTMLDarkchat
                ? ESX.Phone.functions.cleanText(_0xae0ee1)
                : _0xae0ee1),
            Config.Notifications.NewDarkMessage.length,
            JSON.stringify({
              app: 'Darkchat',
              group: _0x153a79,
            })
          ),
            ESX.Phone.functions.playSound(Config.Sounds.NewDarkMessage))
      }
    }
  }
}
const twittersb = new ScrollBooster({
  viewport: document.querySelector('#tweetscontent'),
  content: document.querySelector('#tweetscontent'),
  scrollMode: 'native',
  direction: 'vertical',
})
ESX.Phone.functions.resetTwitter = function () {
  $('.twitter .twtsettings, .twitter .post')
    .addClass('no-transition')
    .removeClass('visible')
  setTimeout(() => {
    $('.twitter .twtsettings, .twitter .post').removeClass('no-transition')
  }, 5)
  if (ESX.Phone.settings.airplane.value) {
    $('#tweetscontent').hide(), $('.tweet-loader').show()
  } else {
    $('#tweetscontent').show()
    $('.tweet-loader').hide()
    ESX.Phone.twitterLogged &&
      setTimeout(() => {
        ESX.Phone.functions.loadTweets(ESX.Phone.tweets)
      }, 0)
  }
  if (ESX.Phone.twitterLogged) {
    $('.twitter > .login').hide()
    $('.twitter > .register').hide()
    $.post(
      'http://' + ESX.Phone.resourceName + '/updateTweets',
      JSON.stringify({})
    )
    $.post(
      'http://' + ESX.Phone.resourceName + '/viewTweets',
      JSON.stringify({})
    )
    Config.Applications.Twitter.notifCount = 0
    ESX.Phone.functions.updateApp('Twitter', 'notifications')
  } else {
    $('.twitter > .login')
      .addClass('no-transition')
      .addClass('visible')
      .css('top', '0%')
    $('.twitter > .register')
      .addClass('no-transition')
      .removeClass('visible')
      .css('top', '0%')
    setTimeout(() => {
      $('.twitter > .login').removeClass('no-transition').show()
      $('.twitter > .register').removeClass('no-transition').show()
    }, 5)
  }
}
ESX.Phone.functions.loadTweets = function (_0x1ebc9f) {
  let _0x47005b =
    typeof _0x1ebc9f == 'string' ? JSON.parse(_0x1ebc9f) : _0x1ebc9f
  $('#tweetscontent').html('')
  ESX.Phone.tweets = _0x47005b
  if (ESX.Phone.currentApp != 'Twitter') {
    return
  }
  let _0x3a427f = ''
  _0x47005b.forEach((_0x103ae4, _0x4cbf34) => {
    if (!_0x103ae4.reply) {
      let _0x569656 = ESX.Phone.twitterData.email == _0x103ae4.email,
        _0x47c65d =
          _0x103ae4.image != ''
            ? '<img class="embed" src="' + _0x103ae4.image + '">'
            : '',
        _0x4ea254 =
          _0x103ae4.authorrank.icon != ''
            ? '<div class="rank-icon" data-label="' +
            _0x103ae4.authorrank.label +
            '"><i class="' +
            _0x103ae4.authorrank.icon +
            '" style="color: ' +
            _0x103ae4.authorrank.iconColor +
            '"></i></div>'
            : ''
      _0x3a427f +=
        '<div class="tweet" data-id="' +
        _0x103ae4.id +
        '" data-self="' +
        _0x569656 +
        '">\n                <div class="content">\n                    <div class="tools" data-open="false">\n                        <i class="fas fa-ellipsis-h icon"></i>\n                    </div>\n                    <div class="author">\n                        <img src="' +
        (_0x103ae4.authorimg != null && _0x103ae4.authorimg != ''
          ? _0x103ae4.authorimg
          : Config.DefaultImageSrc) +
        '">\n                        <p class="name">' +
        ESX.Phone.functions.cleanText(_0x103ae4.author) +
        '</p>\n                        ' +
        _0x4ea254 +
        '\n                    </div>\n                    <div class="content">\n                        <p class="title">' +
        (!Config.EnableHTMLTweets
          ? ESX.Phone.functions.cleanText(_0x103ae4.title)
          : _0x103ae4.title) +
        '</p>\n                        <p class="text">' +
        (!Config.EnableHTMLTweets
          ? ESX.Phone.functions.cleanText(_0x103ae4.content)
          : _0x103ae4.content) +
        '</p>\n                        ' +
        _0x47c65d +
        '\n                    </div>\n                    <div class="footer">\n                        <p class="timestamp">' +
        ESX.Phone.functions.formatDate(_0x103ae4.time) +
        '</p>\n                        <div class="info">\n                            <div class="icon tweet-reply" data-open="false">\n                                <i class="fas fa-reply icon" style="margin-right: 0.2vw"></i>\n                            </div>\n                            <p id="tweet-views-' +
        _0x103ae4.id +
        '">' +
        _0x103ae4.views +
        '</p>\n                            <i class="fas fa-eye icon"></i>\n                            <p' +
        _0x103ae4.id +
        '">' +
        '</p>\n                            <div class="icon tweet-like"' +
        '">\n                                <i class="' +
        (_0x103ae4.liked == true ? 'fas fa-heart icon' : 'far fa-heart icon') +
        '" id="tweet-' +
        _0x103ae4.id +
        '"></i>\n                            </div>\n                        </div>\n                    </div>\n                    <div class="reply-line"></div>\n                    <div class="reply">\n                        <input spellcheck="false" maxlength="500" placeholder="' +
        Locales[Config.Language].html.placeholders.your_reply +
        '">\n                        <i class="far fa-smile emoji"></i>\n                        <div class="send"><i class="fas fa-location-arrow"></i></div>\n                    </div>\n                </div>\n                <div class="replies"></div>\n            </div>'
    }
    _0x4cbf34 == _0x47005b.length - 1 &&
      ($('#tweetscontent').html(_0x3a427f),
        ESX.Phone.functions.loadReplies(_0x47005b),
        twittersb.updateMetrics())
  })
}
ESX.Phone.functions.loadReplies = function (_0x24a218) {
  _0x24a218.forEach((_0x105218, _0x1cd2a4) => {
    _0x105218.replies.forEach((_0x55dbba, _0xb04e0b) => {
      let _0x177ca2 = ESX.Phone.twitterData.email == _0x55dbba.email,
        _0x404aac =
          _0x55dbba.authorrank.icon != ''
            ? '<div class="rank-icon" data-label="' +
            _0x55dbba.authorrank.label +
            '"><i class="' +
            _0x55dbba.authorrank.icon +
            '" style="color: ' +
            _0x55dbba.authorrank.iconColor +
            '"></i></div>'
            : ''
      $(
        '.tweet[data-id="' + _0x105218.id + '"] > .replies > .tweet .reply-line'
      ).css('height', 'calc(100% - 1.5vw)')
      $('.tweet[data-id="' + _0x105218.id + '"] > .replies').append(
        '<div class="tweet" data-reply="' +
        _0x105218.id +
        '" data-self="' +
        _0x177ca2 +
        '" data-id="' +
        _0x55dbba.id +
        '">\n                <div class="content">\n                    <div class="tools" data-open="false">\n                        <i class="fas fa-ellipsis-h icon"></i>\n                    </div>\n                    <div class="author">\n                        <img src="' +
        (_0x55dbba.authorimg != null && _0x55dbba.authorimg != ''
          ? _0x55dbba.authorimg
          : Config.DefaultImageSrc) +
        '">\n                        <p class="name">' +
        _0x55dbba.author +
        '</p>\n                        ' +
        _0x404aac +
        '\n                        <p class="title">' +
        Locales[Config.Language].html.replying.formatText(_0x105218.author) +
        '</p>\n                    </div>\n                    <div class="content">\n                        <p class="text">' +
        (!Config.EnableHTMLTweets
          ? ESX.Phone.functions.cleanText(_0x55dbba.content)
          : _0x55dbba.content) +
        '</p>\n                    </div>\n                    <div class="footer">\n                        <p class="timestamp">' +
        ESX.Phone.functions.formatDate(_0x55dbba.time) +
        '</p>\n                        <div class="info">\n                            <p' +
        _0x55dbba.id +
        '">' +

        '</p>\n                            <div class="icon tweet-like"' +
        '">\n                                <i class="' +
        (_0x55dbba.liked == true
          ? 'fas fa-heart icon'
          : 'far fa-heart icon') +
        '" id="tweet-' +
        _0x55dbba.id +
        '"></i>\n                            </div>\n                        </div>\n                    </div>\n                    <div class="reply-line"></div>\n                </div>\n            </div>'
      )
      $('.tweet[data-id="' + _0x105218.id + '"] > .content > .reply-line').css(
        'height',
        'calc(100% - 1.3vw)'
      )
      if (!$('.tweet[data-id="' + _0x105218.id + '"]').hasClass('comments')) {
        $('.tweet[data-id="' + _0x105218.id + '"]').addClass('comments')
      }
      if (_0xb04e0b == _0x105218.replies.length - 1) {
        twittersb.updateMetrics()
      }
    })
  })
}
ESX.Phone.functions.addDynamicButton('.tweet .embed', function (_0x173a41) {
  let _0x1d5fc5 = $(_0x173a41).attr('src')
  ESX.Phone.functions.previewImage(_0x1d5fc5)
})
ESX.Phone.functions.addTweet = async function (_0x2166d9) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0xa7589e = ESX.Phone.twitterData.email == _0x2166d9.email
  if (ESX.Phone.currentApp == 'Twitter') {
    let _0x432098 =
      _0x2166d9.image != ''
        ? '<img class="embed" src="' + _0x2166d9.image + '">'
        : '',
      _0x198d0b =
        _0x2166d9.authorrank.icon != ''
          ? '<div class="rank-icon" data-label="' +
          _0x2166d9.authorrank.label +
          '"><i class="' +
          _0x2166d9.authorrank.icon +
          '" style="color: ' +
          _0x2166d9.authorrank.iconColor +
          '"></i></div>'
          : ''
    $('#tweetscontent').prepend(
      '<div class="tweet" data-id="' +
      _0x2166d9.id +
      '" data-self="' +
      _0xa7589e +
      '">\n            <div class="content">\n                <div class="tools" data-open="false">\n                    <i class="fas fa-ellipsis-h icon"></i>\n                </div>\n                <div class="author">\n                    <img src="' +
      (_0x2166d9.authorimg != null && _0x2166d9.authorimg != ''
        ? _0x2166d9.authorimg
        : Config.DefaultImageSrc) +
      '">\n                    <p class="name">' +
      ESX.Phone.functions.cleanText(_0x2166d9.author) +
      '</p>\n                    ' +
      _0x198d0b +
      '\n                </div>\n                <div class="content">\n                    <p class="title">' +
      (!Config.EnableHTMLTweets
        ? ESX.Phone.functions.cleanText(_0x2166d9.title)
        : _0x2166d9.title) +
      '</p>\n                    <p class="text">' +
      (!Config.EnableHTMLTweets
        ? ESX.Phone.functions.cleanText(_0x2166d9.content)
        : _0x2166d9.content) +
      '</p>\n                    ' +
      _0x432098 +
      '\n                </div>\n                <div class="footer">\n                    <p class="timestamp">' +
      ESX.Phone.functions.formatDate(_0x2166d9.time) +
      '</p>\n                    <div class="info">\n                        <div class="icon tweet-reply" data-open="false">\n                            <i class="fas fa-reply icon" style="margin-right: 0.2vw"></i>\n                        </div>\n                        <p id="tweet-views-' +
      _0x2166d9.id +
      '">0</p>\n                        <i class="fas fa-eye icon"></i>\n                        <p' +
      _0x2166d9.id +
      '">0</p>\n                        <div class="icon tweet-like">\n                            <i class="far fa-heart icon" id="tweet-' +
      _0x2166d9.id +
      '"></i>\n                        </div>\n                    </div>\n                </div>\n                <div class="reply-line"></div>\n                <div class="reply">\n                    <input spellcheck="false" maxlength="500" placeholder="' +
      Locales[Config.Language].html.placeholders.your_reply +
      '">\n                    <i class="far fa-smile emoji"></i>\n                    <div class="send"><i class="fas fa-location-arrow"></i></div>\n                </div>\n            </div>\n            <div class="replies"></div>\n        </div>'
    )
  }
  twittersb.updateMetrics()
  if (_0xa7589e) {
    return
  }
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (
    ESX.Phone.hasPhone &&
    ESX.Phone.twitterLogged &&
    ESX.Phone.functions.hasApp('Twitter')
  ) {
    if (!ESX.Phone.settings.twtnotifications.value) {
      return
    }
    if (ESX.Phone.open) {
      ESX.Phone.currentApp != 'Twitter' &&
        (Config.Applications.Twitter.notifCount++,
          ESX.Phone.functions.updateApp('Twitter', 'notifications'))
      ESX.Phone.functions.sendNotification(
        Config.Applications.Twitter.notifications.icon,
        Config.Applications.Twitter.notifications.color,
        Config.Applications.Twitter.label,
        '<strong>' +
        ESX.Phone.functions.cleanText(_0x2166d9.author) +
        ':</strong><br>' +
        (Config.EnableHTMLTweets
          ? ESX.Phone.functions.cleanText(_0x2166d9.content)
          : _0x2166d9.content),
        Config.Notifications.NewTweet.length,
        JSON.stringify({
          app: 'Twitter',
          tweet: _0x2166d9.id,
        })
      )
      ESX.Phone.functions.playSound(Config.Sounds.NewTweet)
    } else {
      !ESX.Phone.open &&
        (ESX.Phone.currentApp != 'Twitter' &&
          (Config.Applications.Twitter.notifCount++,
            ESX.Phone.functions.updateApp('Twitter', 'notifications')),
          ESX.Phone.functions.sendOffNotification(
            Config.Applications.Twitter.notifications.icon,
            Config.Applications.Twitter.notifications.color,
            Config.Applications.Twitter.label,
            '<strong>' +
            ESX.Phone.functions.cleanText(_0x2166d9.author) +
            ':</strong><br>' +
            (!Config.EnableHTMLTweets
              ? ESX.Phone.functions.cleanText(_0x2166d9.content)
              : _0x2166d9.content),
            Config.Notifications.NewTweet.length,
            JSON.stringify({
              app: 'Twitter',
              tweet: _0x2166d9.id,
            })
          ),
          ESX.Phone.functions.playSound(Config.Sounds.NewTweet))
    }
  }
}
ESX.Phone.functions.addReply = async function (_0x21677e, _0x1171d9) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0x356fa5 = ESX.Phone.twitterData.email == _0x1171d9.email
  if (ESX.Phone.currentApp == 'Twitter') {
    let _0x15a08e =
      _0x1171d9.authorrank.icon != ''
        ? '<div class="rank-icon" data-label="' +
        _0x1171d9.authorrank.label +
        '"><i class="' +
        _0x1171d9.authorrank.icon +
        '" style="color: ' +
        _0x1171d9.authorrank.iconColor +
        '"></i></div>'
        : ''
    $(
      '.tweet[data-id="' + _0x21677e + '"] > .replies > .tweet .reply-line'
    ).css('height', 'calc(100% - 1.5vw)')
    $('.tweet[data-id="' + _0x21677e + '"] > .replies').append(
      '<div class="tweet" data-reply="' +
      _0x21677e +
      '" data-self="' +
      _0x356fa5 +
      '" data-id="' +
      _0x1171d9.id +
      '">\n            <div class="content">\n                <div class="tools" data-open="false">\n                    <i class="fas fa-ellipsis-h icon"></i>\n                </div>\n                <div class="author">\n                    <img src="' +
      (_0x1171d9.authorimg != null && _0x1171d9.authorimg != ''
        ? _0x1171d9.authorimg
        : Config.DefaultImageSrc) +
      '">\n                    <p class="name">' +
      _0x1171d9.author +
      '</p>\n                    ' +
      _0x15a08e +
      '\n                    <p class="title">' +
      Locales[Config.Language].html.replying.formatText(
        $(
          '.tweet[data-id="' + _0x21677e + '"] > .content .author .name'
        ).text()
      ) +
      '</p>\n                </div>\n                <div class="content">\n                    <p class="text">' +
      (!Config.EnableHTMLTweets
        ? ESX.Phone.functions.cleanText(_0x1171d9.content)
        : _0x1171d9.content) +
      '</p>\n                </div>\n                <div class="footer">\n                    <p class="timestamp">' +
      ESX.Phone.functions.formatDate(_0x1171d9.time) +
      '</p>\n                    <div class="info">\n                        <p' +
      _0x1171d9.id +
      '"></p>\n                        <div class="icon tweet-like>\n                            <i class="far fa-heart icon" id="tweet-' +
      _0x1171d9.id +
      '"></i>\n                        </div>\n                    </div>\n                </div>\n                <div class="reply-line"></div>\n            </div>\n        </div>'
    )
    $('.tweet[data-id="' + _0x21677e + '"] > .content > .reply-line').css(
      'height',
      'calc(100% - 1.3vw)'
    )
    if (!$('.tweet[data-id="' + _0x21677e + '"]').hasClass('comments')) {
      $('.tweet[data-id="' + _0x21677e + '"]').addClass('comments')
    }
  }
  twittersb.updateMetrics()
  if (_0x356fa5) {
    return
  }
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.twitterLogged) {
    if (!ESX.Phone.settings.twtnotifications.value) {
      return
    }
    if (ESX.Phone.open) {
      if (ESX.Phone.currentApp != 'Twitter') {
        Config.Applications.Twitter.notifCount++
        ESX.Phone.functions.updateApp('Twitter', 'notifications')
      }
      ESX.Phone.functions.sendNotification(
        Config.Applications.Twitter.notifications.icon,
        Config.Applications.Twitter.notifications.color,
        Config.Applications.Twitter.label,
        Locales[Config.Language].notifications.replying.formatText(
          $(
            '.tweet[data-id="' + _0x21677e + '"] > .content .author .name'
          ).text()
        ) +
        '<br>' +
        _0x1171d9.content,
        Config.Notifications.NewTweetReply.length,
        JSON.stringify({
          app: 'Twitter',
          tweet: _0x21677e,
        })
      )
      ESX.Phone.functions.playSound(Config.Sounds.NewTweet)
    } else {
      !ESX.Phone.open &&
        (ESX.Phone.currentApp != 'Twitter' &&
          (Config.Applications.Twitter.notifCount++,
            ESX.Phone.functions.updateApp('Twitter', 'notifications')),
          ESX.Phone.functions.sendOffNotification(
            Config.Applications.Twitter.notifications.icon,
            Config.Applications.Twitter.notifications.color,
            Config.Applications.Twitter.label,
            Locales[Config.Language].notifications.replying.formatText(
              $(
                '.tweet[data-id="' + _0x21677e + '"] > .content .author .name'
              ).text()
            ) +
            '<br>' +
            _0x1171d9.content,
            Config.Notifications.NewTweetReply.length,
            JSON.stringify({
              app: 'Twitter',
              tweet: _0x21677e,
            })
          ),
          ESX.Phone.functions.playSound(Config.Sounds.NewTweet))
    }
  }
}
ESX.Phone.functions.addDynamicButton(
  '.tweet > .content > .tools',
  function (_0x1a2743, _0x289cea) {
    contextElementFunction(_0x1a2743, _0x289cea, _0x1a2743, false, function () {
      let _0x53dd52 = $(_0x1a2743).closest('.tweet'),
        _0x2ed6a2 = $(_0x53dd52).data('id'),
        _0x32f371 = $(_0x53dd52).data('self')
      Config.ReportingTweets &&
        ESX.Phone.functions.addButtonToContext(
          'far fa-flag icon',
          Locales[Config.Language].report,
          'red',
          function () {
            const _0x14c3cc = { id: _0x2ed6a2 }
            $.post(
              'http://' + ESX.Phone.resourceName + '/reportTweet',
              JSON.stringify(_0x14c3cc)
            )
          }
        )
      Config.DeletingTweets &&
        (_0x32f371 ||
          (ESX.Phone.twitterData.rank && ESX.Phone.twitterData.rank.admin)) &&
        ESX.Phone.functions.addButtonToContext(
          'far fa-trash-alt icon',
          Locales[Config.Language].delete,
          'red',
          function () {
            let _0x315d3b = $(_0x53dd52).data('reply')
            _0x315d3b &&
              $('.tweet[data-id="' + _0x315d3b + '"] > .replies').children()
                .length == 1 &&
              ($('.tweet[data-id="' + _0x315d3b + '"]').removeClass('comments'),
                $(
                  '.tweet[data-id="' + _0x315d3b + '"] > .content > .reply-line'
                ).css('height', '0vw'))
            $(_0x53dd52).css({
              opacity: '0.0',
              'margin-top': -$(_0x53dd52).get(0).clientHeight + 'px',
              'margin-bottom': '0vw',
            })
            setTimeout(() => {
              $(_0x53dd52).remove()
              _0x315d3b &&
                ((replies = $(
                  '.tweet[data-id="' + _0x315d3b + '"] > .replies'
                ).children()),
                  $(replies[replies.length - 1])
                    .find('.content > .reply-line')
                    .css('height', '0vw'))
            }, 500)
            const _0x1916a2 = { id: _0x2ed6a2 }
            $.post(
              'http://' + ESX.Phone.resourceName + '/deleteTweet',
              JSON.stringify(_0x1916a2)
            )
          }
        )
    })
  }
)
ESX.Phone.functions.addDynamicButton(
  '.tweet > .content > .tools .contextbutton',
  function (_0x3d6a06, _0x24c5b6) {
    let _0xea7375 = $(_0x3d6a06).data('action')
    let _0x53956a = $(_0x3d6a06).closest('.tweet'),
      _0x3c3f1c = $(_0x53956a).data('id')
    if (_0xea7375 == 'report') {
      const _0x28e0ac = { id: _0x3c3f1c }
      $.post(
        'http://' + ESX.Phone.resourceName + '/reportTweet',
        JSON.stringify(_0x28e0ac)
      )
    } else {
      if (_0xea7375 == 'delete') {
        let _0x4a967c = $(_0x53956a).data('reply')
        _0x4a967c &&
          $('.tweet[data-id="' + _0x4a967c + '"] > .replies').children()
            .length == 1 &&
          ($('.tweet[data-id="' + _0x4a967c + '"]').removeClass('comments'),
            $('.tweet[data-id="' + _0x4a967c + '"] > .content > .reply-line').css(
              'height',
              '0vw'
            ))
        $(_0x53956a).css({
          opacity: '0.0',
          'margin-top': -$(_0x53956a).get(0).clientHeight + 'px',
          'margin-bottom': '0vw',
        })
        setTimeout(() => {
          $(_0x53956a).remove()
          _0x4a967c &&
            ((replies = $(
              '.tweet[data-id="' + _0x4a967c + '"] > .replies'
            ).children()),
              $(replies[replies.length - 1])
                .find('.content > .reply-line')
                .css('height', '0vw'))
        }, 500)
        const _0x48edc5 = { id: _0x3c3f1c }
        $.post(
          'http://' + ESX.Phone.resourceName + '/deleteTweet',
          JSON.stringify(_0x48edc5)
        )
      }
    }
  }
)
ESX.Phone.functions.deleteTweet = function (_0x398a84) {
  let _0x48ce89 = $('.tweet[data-id="' + _0x398a84 + '"]'),
    _0x18b321 = $(_0x48ce89).data('reply'),
    _0x4665bf = []
  if (_0x18b321) {
    _0x4665bf = $('.tweet[data-id="' + _0x18b321 + '"] > .replies').children()
  }
  if (_0x18b321 && _0x4665bf.length == 1) {
    $('.tweet[data-id="' + _0x18b321 + '"]').removeClass('comments')
    $('.tweet[data-id="' + _0x18b321 + '"] > .content > .reply-line').css(
      'height',
      '0vw'
    )
  }
  $(_0x48ce89).css({
    opacity: '0.0',
    'margin-top': -$(_0x48ce89).get(0).clientHeight + 'px',
    'margin-bottom': '0vw',
  })
  setTimeout(() => {
    $(_0x48ce89).remove()
    _0x18b321 &&
      ((_0x4665bf = $(
        '.tweet[data-id="' + _0x18b321 + '"] > .replies'
      ).children()),
        $(_0x4665bf[_0x4665bf.length - 1])
          .find('.content > .reply-line')
          .css('height', '0vw'))
  }, 500)
}
// ESX.Phone.functions.addDynamicButton('.tweet-like', function (_0x54ca3e) {
//   let _0x4cfcc8 = $(_0x54ca3e).closest('.tweet').data('id')
//   let _0x9edc9a = $(_0x54ca3e).data('liked')
//   $(_0x54ca3e).data('liked', !_0x9edc9a)
//   let _0x563f81 = _0x9edc9a ? -1 : 1
//   $('#tweet-likes-' + _0x4cfcc8).html(
//     parseInt($('#tweet-likes-' + _0x4cfcc8).html()) + _0x563f81
//   )
//   $('#tweet-' + _0x4cfcc8).attr(
//     'class',
//     _0x9edc9a ? 'far fa-heart icon' : 'fas fa-heart icon'
//   )
//   const _0x32315d = { id: _0x4cfcc8 }
//   $.post(
//     'http://' + ESX.Phone.resourceName + '/likeTweet',
//     JSON.stringify(_0x32315d)
//   )
// })
ESX.Phone.functions.addDynamicButton('.tweet-reply', function (_0x293a2a) {
  let _0x534706 = $(_0x293a2a).closest('.tweet').data('id')
  let _0x3202a8 = $(_0x293a2a).data('open')
  $(_0x293a2a).data('open', !_0x3202a8)
  !_0x3202a8
    ? ($(
      '.tweet[data-id="' + _0x534706 + '"] > .content > .reply > input'
    ).focus(),
      $('.tweet[data-id="' + _0x534706 + '"] > .content > .reply').css(
        'height',
        '1.9vw'
      ))
    : ($('input, textarea').blur(),
      $('.tweet[data-id="' + _0x534706 + '"] > .content > .reply').css(
        'height',
        '0vw'
      ))
})
ESX.Phone.functions.addDynamicButton(
  '.tweet .reply .send',
  function (_0x1f8e13) {
    let _0x24a56b = $(_0x1f8e13).closest('.tweet').data('id')
    sendReply(_0x24a56b)
  }
)
function sendReply(_0x16a39f) {
  let _0x184d75 = $(
    '.tweet[data-id="' + _0x16a39f + '"] > .content > .reply > input'
  ).val()
  if (_0x184d75.length < 2) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.replytooshort,
      Config.Notifications.Error.length
    )
  }
  $('.tweet-reply').data('open', false)
  $('input, textarea').blur()
  $('.tweet[data-id="' + _0x16a39f + '"] > .content > .reply').css(
    'height',
    '0vw'
  )
  $('.tweet[data-id="' + _0x16a39f + '"] > .content > .reply > input').val('')
  const _0x38a5ec = {
    id: _0x16a39f,
    content: _0x184d75,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/postReply',
    JSON.stringify(_0x38a5ec)
  )
}
$(document).on('keyup', '.tweet .reply input', function (_0x2738e5) {
  if (_0x2738e5.keyCode == 13) {
    let _0x5524ea = $(_0x2738e5.target).closest('.tweet').data('id')
    sendReply(_0x5524ea)
  }
})
var lastClosestTweet
ESX.Phone.functions.addDynamicButton(
  '.tweet .reply .emoji',
  function (_0x41e1a3) {
    window.picker.togglePicker(_0x41e1a3)
    lastClosestTweet = $(_0x41e1a3).closest('.tweet').data('id')
  }
)
ESX.Phone.functions.addButton('.newtweet', function () {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantpost,
      Config.Notifications.Error.length
    )
  }
  $('.twitter > .post').addClass('visible')
})
ESX.Phone.functions.addButton('#closepost', function () {
  $('.twitter > .post').removeClass('visible')
})
ESX.Phone.functions.addButton('#posttweet', async function () {
  let _0x405828 = document.forms.tweet,
    _0x5f1752 = _0x405828.elements.title.value,
    _0x3107b9 = _0x405828.elements.content.value,
    _0x27a8d8 = _0x405828.elements.image.value
  if (_0x3107b9.length < 3) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.tweettooshort,
      Config.Notifications.Error.length
    )
  }
  if (_0x27a8d8 != '' && _0x27a8d8.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0x27a8d8 =
    _0x27a8d8 == '' || _0x27a8d8.indexOf('http') > -1
      ? _0x27a8d8
      : 'http://' + _0x27a8d8
  let _0x4845e9 = await ESX.Phone.functions.urlExists(_0x27a8d8)
  if (!_0x4845e9) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  const _0x4850c6 = {
    title: _0x5f1752,
    content: _0x3107b9,
    image: _0x27a8d8,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/postTweet',
    JSON.stringify(_0x4850c6)
  )
  _0x405828.elements.title.value = ''
  _0x405828.elements.content.value = ''
  _0x405828.elements.image.value = ''
  $('.twitter > .post').removeClass('visible')
  $('#tweetscontent').scrollTop(0)
})
ESX.Phone.functions.addDynamicButton(
  '.twitter > .post .inputs .content .emoji',
  function (_0x5bfd1c) {
    window.picker.togglePicker(_0x5bfd1c)
  }
)
ESX.Phone.functions.addImageSelector(
  '.twitter > .post .upload',
  '.twitter > .post .image > input',
  false
)
ESX.Phone.functions.addDynamicButton('#loginscreen', function () {
  $('.twitter > .login').addClass('visible')
  $('.twitter > .register').removeClass('visible')
})
ESX.Phone.functions.addDynamicButton('#registerscreen', function () {
  $('.twitter > .login').removeClass('visible')
  $('.twitter > .register').addClass('visible')
})
ESX.Phone.functions.addButton('#login', function () {
  let _0x38164e = document.forms['twitter-login'],
    _0x2a7b6e = _0x38164e.elements.email.value,
    _0x376824 = _0x38164e.elements.password.value
  const _0x14bb3c = {
    email: _0x2a7b6e,
    password: _0x376824,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/twitterLogin',
    JSON.stringify(_0x14bb3c),
    function (_0xe4b24a) {
      _0xe4b24a == 'SUCCESS'
        ? ((ESX.Phone.twitterLogged = true),
          $('.twitter > .login').css('top', '-100%'),
          setTimeout(() => {
            _0x38164e.elements.email.value = ''
            _0x38164e.elements.password.value = ''
            $('.twitter > .login').hide()
            $('.twitter > .register').hide()
            $('.twitter > .login').addClass('visible').css('top', '0%')
          }, 400),
          $.post(
            'http://' + ESX.Phone.resourceName + '/updateTweets',
            JSON.stringify({})
          ),
          $.post(
            'http://' + ESX.Phone.resourceName + '/updateTwitterUserData',
            JSON.stringify({})
          ))
        : ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0xe4b24a,
          Config.Notifications.Error.length
        )
    }
  )
})
ESX.Phone.functions.addButton('#register', function () {
  let _0x35e44a = document.forms['twitter-register']
  let _0x35fd27 = _0x35e44a.elements.nickname.value,
    _0x4d418e = _0x35e44a.elements.email.value,
    _0x1de758 = _0x35e44a.elements.password.value
  if (_0x35fd27.length < Config.TwitterMinNicknameLength) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.nicknametooshort,
      Config.Notifications.Error.length
    )
  }
  if (_0x1de758.length < Config.TwitterMinPasswordLength) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.passwordtooshort,
      Config.Notifications.Error.length
    )
  }
  if (!_0x4d418e.match(Config.MailAddressRegex)) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongaddressformat,
      Config.Notifications.Error.length
    )
  }
  const _0x518b43 = {
    nickname: _0x35fd27,
    email: _0x4d418e,
    password: _0x1de758,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/twitterRegister',
    JSON.stringify(_0x518b43),
    function (_0x2b3422) {
      _0x2b3422 == 'SUCCESS'
        ? ((ESX.Phone.twitterLogged = true),
          $('.twitter > .register').css('top', '-100%'),
          setTimeout(() => {
            _0x35e44a.elements.nickname.value = ''
            _0x35e44a.elements.email.value = ''
            _0x35e44a.elements.password.value = ''
            $('.twitter > .login').hide()
            $('.twitter > .register').hide()
            $('.twitter > .register').addClass('visible').css('top', '0%')
          }, 400),
          $.post(
            'http://' + ESX.Phone.resourceName + '/updateTweets',
            JSON.stringify({})
          ),
          $.post(
            'http://' + ESX.Phone.resourceName + '/updateTwitterUserData',
            JSON.stringify({})
          ))
        : ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x2b3422,
          Config.Notifications.Error.length
        )
    }
  )
})
ESX.Phone.functions.addButton('#twitterlogout', function () {
  ESX.Phone.twitterLogged = false
  $('.twitter > .login')
    .show()
    .addClass('no-transition')
    .addClass('visible')
    .css('top', '-100%')
  $('.twitter > .register')
    .show()
    .addClass('no-transition')
    .removeClass('visible')
    .css('top', '-100%')
  setTimeout(() => {
    $('.twitter > .login').removeClass('no-transition').css('top', '0%')
    $('.twitter > .register').removeClass('no-transition').css('top', '0%')
  }, 0)
  $('.twitter .twtsettings, .twitter .post').removeClass('visible')
  $.post(
    'http://' + ESX.Phone.resourceName + '/twitterLogout',
    JSON.stringify()
  )
})
var resetTimeouts = [],
  currentResetEmail
ESX.Phone.functions.addButton('#getcode', function () {
  let _0x31b6d0 = document.forms['twitter-forgotpassword'],
    _0xbe6b71 = _0x31b6d0.elements.email.value
  if (!_0xbe6b71.match(Config.MailAddressRegex)) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongaddressformat,
      Config.Notifications.Error.length
    )
  }
  if (resetTimeouts[_0xbe6b71]) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.resettimer.formatText(
        Math.floor((resetTimeouts[_0xbe6b71].until - Date.now()) / 1000)
      ),
      Config.Notifications.Error.length
    )
  }
  const _0x37a564 = { email: _0xbe6b71 }
  $.post(
    'http://' + ESX.Phone.resourceName + '/sendResetCode',
    JSON.stringify(_0x37a564)
  )
  currentResetEmail = _0xbe6b71
  resetTimeouts[_0xbe6b71] = {
    timeout: setTimeout(() => {
      resetTimeouts[_0xbe6b71] = undefined
    }, Config.twitterResetTimer * 1000),
    until: Date.now() + Config.twitterResetTimer * 1000,
  }
  $('.twitter > .login').addClass('reset')
})
ESX.Phone.functions.addDynamicButton('#cancelreset', function () {
  $('.twitter > .login').removeClass('forgot')
  let _0x43494f = document.forms['twitter-forgotpassword']
  _0x43494f.elements.email.value = ''
})
ESX.Phone.functions.addButton('.twitter > .login .forgotpassword', function () {
  $('.twitter > .login').addClass('forgot')
  let _0x59c339 = document.forms['twitter-forgotpassword']
  _0x59c339.elements.email.value = ''
})
ESX.Phone.functions.addButton('#backforgot', function () {
  $('.twitter > .login').removeClass('reset')
  let _0x5d8edb = document.forms['twitter-reset']
  _0x5d8edb.elements.code.value = ''
  _0x5d8edb.elements.newpassword.value = ''
  _0x5d8edb.elements.repeatpassword.value = ''
})
ESX.Phone.functions.addButton('#resettwitteraccount', function () {
  let _0x730c91 = document.forms['twitter-reset'],
    _0x3c3496 = _0x730c91.elements.code.value,
    _0x1abfbd = _0x730c91.elements.newpassword.value,
    _0x4d3547 = _0x730c91.elements.repeatpassword.value
  if (_0x1abfbd != '' && _0x1abfbd.length < 3) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.passwordtooshort,
      Config.Notifications.Error.length
    )
  }
  if (_0x1abfbd != _0x4d3547) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.passwordnotmatching,
      Config.Notifications.Error.length
    )
  }
  const _0x5f4f74 = {
    email: currentResetEmail,
    code: _0x3c3496,
    password: _0x1abfbd,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/resetTwitterAccount',
    JSON.stringify(_0x5f4f74),
    function (_0x2f31b8) {
      if (_0x2f31b8 == 'SUCCESS') {
        currentResetEmail = undefined
        $('.twitter > .login').removeClass('reset forgot')
        let _0x1a0dc7 = document.forms['twitter-reset']
        _0x1a0dc7.elements.code.value = ''
        _0x1a0dc7.elements.newpassword.value = ''
        _0x1a0dc7.elements.repeatpassword.value = ''
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.resetsuccess,
          Config.Notifications.Success.length
        )
      } else {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x2f31b8,
          Config.Notifications.Error.length
        )
      }
    }
  )
})
ESX.Phone.functions.addButton('#closesettings', function () {
  $('.twitter .twtsettings').removeClass('visible')
})
ESX.Phone.functions.addButton('#opensettings', function () {
  $('.twitter .twtsettings').addClass('visible')
  $.post(
    'http://' + ESX.Phone.resourceName + '/updateTwitterUserData',
    JSON.stringify({})
  )
})
ESX.Phone.functions.addButton('#twitter-notifications', function () {
  ESX.Phone.functions.setSetting(
    'twtnotifications',
    !ESX.Phone.settings.twtnotifications.value,
    true
  )
})
ESX.Phone.functions.addButton('#twittersavesettings', async function () {
  let _0x1e7edb = document.forms['twitter-settings'],
    _0x5e5ebd = _0x1e7edb.elements.nickname.value,
    _0x1b8c1e = _0x1e7edb.elements.password.value,
    _0x358bcb = _0x1e7edb.elements.image.value
  if (_0x5e5ebd != '' && _0x5e5ebd.length < 3) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.nicknametooshort,
      Config.Notifications.Error.length
    )
  }
  if (_0x1b8c1e != '' && _0x1b8c1e.length < 3) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.passwordtooshort,
      Config.Notifications.Error.length
    )
  }
  if (_0x358bcb != '' && _0x358bcb.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0x358bcb =
    _0x358bcb == '' || _0x358bcb.indexOf('http') > -1
      ? _0x358bcb
      : 'http://' + _0x358bcb
  let _0x5018b = await ESX.Phone.functions.urlExists(_0x358bcb)
  if (!_0x5018b) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  const _0x135afd = {
    nickname: _0x5e5ebd,
    password: _0x1b8c1e,
    image: _0x358bcb,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/twittersaveSettings',
    JSON.stringify(_0x135afd),
    function (_0x4988ab) {
      _0x4988ab == 'SUCCESS'
        ? ((_0x1e7edb.elements.nickname.value = ''),
          (_0x1e7edb.elements.password.value = ''),
          (_0x1e7edb.elements.image.value = ''),
          ESX.Phone.functions.sendNotification(
            Config.Applications[ESX.Phone.currentApp].notifications.icon,
            Config.Applications[ESX.Phone.currentApp].notifications.color,
            Config.Applications[ESX.Phone.currentApp].label,
            Locales[Config.Language].notifications.settingssaved,
            Config.Notifications.Success.length
          ))
        : ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x4988ab,
          Config.Notifications.Error.length
        )
    }
  )
})
ESX.Phone.functions.updateTwitterUser = function (_0x5abd5f) {
  let _0x3d22a2 = JSON.parse(_0x5abd5f)
  if (_0x3d22a2.name != '') {
    ESX.Phone.twitterLogged = true
  }
  ESX.Phone.twitterData = _0x3d22a2
  _0x3d22a2.rank.icon != ''
    ? ($('#twitter-myrank').attr('data-label', _0x3d22a2.rank.label).show(),
      $('#twitter-myrank').html(
        '<i class="' +
        _0x3d22a2.rank.icon +
        '" style="color: ' +
        _0x3d22a2.rank.color +
        '"></i>'
      ))
    : $('#twitter-myrank').hide()
  $('#twitter-myviews').html(_0x3d22a2.views)
  $('#twitter-mylikes').html('')
  $('#twitter-myposts').html(_0x3d22a2.posts)
  $('#twitter-myname').html(_0x3d22a2.name)
  $('#twitter-myimg').attr(
    'src',
    _0x3d22a2.image != null && _0x3d22a2.image != ''
      ? _0x3d22a2.image
      : Config.DefaultImageSrc
  )
}
const contactsb = new ScrollBooster({
  viewport: document.querySelector('.contactlist'),
  content: document.querySelector('.contactlist'),
  scrollMode: 'native',
  direction: 'vertical',
})
ESX.Phone.functions.updateContacts = function (_0x47389d) {
  let _0x4e4d8a = $('.contacts .mainscreen .contactlist'),
    _0x531a59 = typeof _0x47389d == 'string' ? JSON.parse(_0x47389d) : _0x47389d
  ESX.Phone.contacts = _0x531a59
  _0x4e4d8a.html('')
  _0x4e4d8a.append(
    '<div class="searchresults" style="display:none">\n        <p class="title">' +
    Locales[Config.Language].html.contacts_foundresults +
    '</p>\n    </div>'
  )
  for (i = 0; i < 26; i++) {
    let _0x21fc32 = (i + 10).toString(36)
    _0x4e4d8a.append(
      '<div class="' +
      _0x21fc32 +
      '" style="display:none">\n            <p class="title">' +
      _0x21fc32.toUpperCase() +
      '</p>\n        </div>'
    )
  }
  _0x4e4d8a.append(
    '<div class="other" style="display:none">\n        <p class="title">#</p>\n    </div>'
  )
  if (ESX.Phone.currentApp != 'Contacts') {
    return
  }
  _0x531a59.forEach((_0x361765, _0x3507d6) => {
    if (_0x361765.preAdded == false) {
      return
    }
    let _0x5e9497 = _0x361765.name.charAt(0).toString().toLowerCase(),
      _0x164e4d =
        '<div class="contact" data-id="' +
        _0x361765.id +
        '">\n            ' +
        (_0x361765.photo != ''
          ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
          _0x361765.photo +
          '">'
          : '<div class="avatar">' + _0x5e9497.toUpperCase() + '</div>') +
        '\n            <p class="name">' +
        ESX.Phone.functions.cleanText(_0x361765.name) +
        '</p>\n            <p class="number">' +
        ESX.Phone.functions.cleanText(_0x361765.number) +
        '</p>\n        </div>'
    !/[^a-zA-Z]/.test(_0x5e9497)
      ? $('.contacts .mainscreen .contactlist .' + _0x5e9497)
        .show()
        .append(_0x164e4d)
      : $('.contacts .mainscreen .contactlist .other').show().append(_0x164e4d)
    _0x361765.id == ESX.Phone.currentContact.id &&
      ESX.Phone.functions.loadContact(_0x361765)
    _0x3507d6 == _0x531a59.length - 1 && contactsb.updateMetrics()
  })
}
ESX.Phone.functions.addDynamicButton(
  '.contacts .mainscreen .contactlist > * > .contact',
  function (_0x5271b1) {
    let _0x4a4d89 = $(_0x5271b1).data('id')
    let _0x3355f5 = ESX.Phone.contacts.find(
      (_0x569130) => _0x569130.id == _0x4a4d89
    )
    ESX.Phone.functions.loadContact(_0x3355f5)
  }
)
$('#searchcontacts').on('input', function () {
  let _0x520622 = $(this).val()
  let _0x34b49a = 0
  _0x520622 != ''
    ? ESX.Phone.contacts.forEach((_0x320af5, _0x20582b) => {
      if (
        _0x320af5.name.toString().toLowerCase().includes(_0x520622.toString().toLowerCase()) ||
        (_0x320af5.tag &&
          _0x320af5.tag.toString().toLowerCase().includes(_0x520622.toString().toLowerCase())) ||
        _0x320af5.number.includes(_0x520622)
      ) {
        if (
          _0x320af5.tag &&
          _0x320af5.tag.toString().toLowerCase().includes(_0x520622.toString().toLowerCase())
        ) {
          $(
            '.contacts .contactlist > * > .contact[data-id="' +
            _0x320af5.id +
            '"] > .number'
          ).html(
            '' +
            _0x320af5.tag.toString()
              .toLowerCase()
              .replace(
                _0x520622.toString().toLowerCase(),
                "<span style='color: white;'>" +
                _0x520622.toString().toLowerCase() +
                '</span>'
              )
          )
        } else {
          if (_0x320af5.number.includes(_0x520622)) {
            $(
              '.contacts .contactlist > * > .contact[data-id="' +
              _0x320af5.id +
              '"] > .number'
            ).html(
              '' +
              _0x320af5.number.replace(
                _0x520622,
                "<span style='color: white;'>" + _0x520622 + '</span>'
              )
            )
          } else {
            $(
              '.contacts .contactlist > * > .contact[data-id="' +
              _0x320af5.id +
              '"] > .number'
            ).html(_0x320af5.number)
          }
        }
        $(
          '.contacts .contactlist > * > .contact[data-id="' +
          _0x320af5.id +
          '"]'
        )
          .detach()
          .appendTo('.contacts .mainscreen .contactlist .searchresults')
          .show()
        _0x34b49a++
      } else {
        $(
          '.contacts .contactlist > * > .contact[data-id="' +
          _0x320af5.id +
          '"] > .number'
        ).html(_0x320af5.number)
        $(
          '.contacts .contactlist > * > .contact[data-id="' +
          _0x320af5.id +
          '"]'
        ).hide()
      }
      if (_0x20582b == ESX.Phone.contacts.length - 1) {
        _0x34b49a > 0
          ? ($('.contacts .mainscreen .contactlist > *').hide(),
            $('.contacts .mainscreen .contactlist .searchresults').show(),
            $('.contacts .mainscreen .noresults').hide())
          : ($('.contacts .mainscreen .contactlist > *').hide(),
            $('.contacts .mainscreen .noresults').show(),
            $('.contacts .mainscreen .noresults > .description').html(
              Locales[Config.Language].searchquery.formatText(_0x520622)
            ))
      }
    })
    : (ESX.Phone.functions.updateContacts(ESX.Phone.contacts),
      $('.contacts .mainscreen .noresults').hide())
})
ESX.Phone.functions.loadContact = function (_0xd9402e) {
  ESX.Phone.currentContact = _0xd9402e
  let _0x9cacf3 = _0xd9402e.name.charAt(0).toUpperCase()
  $('#contact-letter').html(_0x9cacf3)
  $('#contact-name').html(_0xd9402e.name)
  if (_0xd9402e.photo != '') {
    $('#contact-image').attr('src', _0xd9402e.photo).show()
  } else {
    $('#contact-image').hide()
  }
  $('#contact-number').html(_0xd9402e.number)
  $('.contacts > .contactscreen').addClass('visible')
  $('.contacts > .contactscreen > .calls > .callslist').html('')
  _0xd9402e.calls.forEach((_0x570a3a) => {
    $('.contacts > .contactscreen > .calls > .callslist').append(
      '<div class="call">\n            <p class="name" ' +
      (_0x570a3a.length == 0 && _0x570a3a.to == ESX.Phone.number
        ? 'style="color: #c42929"'
        : '') +
      '>' +
      ESX.Phone.functions.formatDate(_0x570a3a.time) +
      '</p>\n            <p class="number">' +
      (_0x570a3a.to == ESX.Phone.number ? '&#8592;' : '&#8594;') +
      ' ' +
      (_0x570a3a.to == ESX.Phone.number ? _0x570a3a.from : _0x570a3a.to) +
      '</p>\n            <p class="time">' +
      (_0x570a3a.length > 0
        ? ESX.Phone.functions.formatTime(_0x570a3a.length)
        : '&#10005;') +
      '</p>\n        </div>'
    )
  })
}
ESX.Phone.functions.resetContacts = function () {
  ESX.Phone.currentContact = {}
  $('.contacts .editcontact').addClass('no-transition').removeClass('visible')
  $('.contacts .contactscreen').addClass('no-transition').removeClass('visible')
  $('.newcontact').addClass('no-transition').removeClass('visible')
  $('.contacts .mainscreen .noresults').hide()
  setTimeout(() => {
    $(
      '.contacts .editcontact, .contacts .contactscreen, .newcontact'
    ).removeClass('no-transition')
  }, 5)
  $('#searchcontacts').val('')
  setTimeout(() => {
    ESX.Phone.functions.updateContacts(ESX.Phone.contacts)
  }, 0)
}
ESX.Phone.functions.updateMyData = function (_0x500eaf, _0x451452) {
  $('#contacts-myname').text(_0x500eaf)
  $('#contacts-mynumber').text(_0x451452)
  let _0x1bb748 = ''
  _0x500eaf.split(' ').forEach((_0x32f296) => {
    _0x1bb748 += _0x32f296.charAt(0).toUpperCase()
  })
  $('#contacts-myletter').text(_0x1bb748)
}
var shareCooldown
ESX.Phone.functions.addButton('.shareowncontact', function () {
  if (shareCooldown) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.sharingcooldown,
      Config.Notifications.Error.length
    )
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/shareContact',
    JSON.stringify({
      photo: '',
      number: ESX.Phone.number,
      name: ESX.Phone.fullname,
      tag: '',
    })
  )
  ESX.Phone.functions.sendNotification(
    Config.Applications[ESX.Phone.currentApp].notifications.icon,
    Config.Applications[ESX.Phone.currentApp].notifications.color,
    Config.Applications[ESX.Phone.currentApp].label,
    Locales[Config.Language].notifications.sharedcontact,
    Config.Notifications.Success.length
  )
  shareCooldown = setTimeout(() => {
    shareCooldown = undefined
  }, Config.ShareContactCooldown)
})
ESX.Phone.functions.getContact = function (_0x3dca18) {
  let _0x26c117 = ESX.Phone.contacts.find(
    (_0x3afa86) => _0x3afa86.number == _0x3dca18
  )
  return _0x26c117 ? _0x26c117 : Locales[Config.Language].unknown
}
ESX.Phone.functions.addButton('#closecontact', function () {
  $('.contacts > .contactscreen').removeClass('visible')
  ESX.Phone.currentContact = {}
})
ESX.Phone.functions.addButton('#clearcalls', function () {
  $.post(
    'http://' + ESX.Phone.resourceName + '/clearCalls',
    JSON.stringify({ number: ESX.Phone.currentContact.number })
  )
  ESX.Phone.currentContact.calls = []
  $('.contacts > .contactscreen > .calls > .callslist')
    .children()
    .each(function () {
      $(this).css('height', '0vw')
      $(this)
        .children()
        .each(function () {
          $(this).css('opacity', '0.0')
        })
      setTimeout(() => {
        $(this).remove()
      }, 300)
    })
})
ESX.Phone.functions.addButton('#message-contact', function () {
  let _0x51e539 = ESX.Phone.chats.find(
    (_0x32d5b3) => _0x32d5b3.number == ESX.Phone.currentContact.number
  )
  if (_0x51e539) {
    ESX.Phone.functions.openChat(_0x51e539)
  } else {
    ESX.Phone.functions.newChat(
      ESX.Phone.currentContact.name,
      ESX.Phone.currentContact.number
    )
  }
})
let gpsCooldown
ESX.Phone.functions.addButton('#sendgps-contact', function () {
  if (gpsCooldown) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.locationcooldown,
      Config.Notifications.Error.length
    )
  }
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantlocation,
      Config.Notifications.Error.length
    )
  }
  let _0x5143be = ESX.Phone.currentContact.number
  $.post(
    'http://' + ESX.Phone.resourceName + '/getCoords',
    JSON.stringify({}),
    function (_0x5cdc4d) {
      gpsCooldown = setTimeout(() => {
        gpsCooldown = undefined
      }, Config.LocationCooldown)
      let _0x4c0954 = JSON.parse(_0x5cdc4d),
        _0x555e0f =
          '(GPS:' + _0x4c0954.x.toFixed(3) + ',' + _0x4c0954.y.toFixed(3) + ')'
      if (ESX.Phone.functions.getChat(_0x5143be) != -1) {
        ESX.Phone.chats[ESX.Phone.functions.getChat(_0x5143be)].messages.push({
          from: ESX.Phone.number,
          to: _0x5143be,
          message: _0x555e0f,
          attachments: '[]',
          time: Date.now(),
        })
      }
      $.post(
        'http://' + ESX.Phone.resourceName + '/sendMessage',
        JSON.stringify({
          number: _0x5143be,
          content: _0x555e0f,
          attachments: '[]',
          time: Date.now(),
        })
      )
      ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        Locales[Config.Language].notifications.locationsent,
        Config.Notifications.Success.length
      )
    }
  )
})
ESX.Phone.functions.addButton('#share-contact', function () {
  if (shareCooldown) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.sharingcooldown,
      Config.Notifications.Error.length
    )
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/shareContact',
    JSON.stringify(ESX.Phone.currentContact)
  )
  ESX.Phone.functions.sendNotification(
    Config.Applications[ESX.Phone.currentApp].notifications.icon,
    Config.Applications[ESX.Phone.currentApp].notifications.color,
    Config.Applications[ESX.Phone.currentApp].label,
    Locales[Config.Language].notifications.sharedcontact,
    Config.Notifications.Success.length
  )
  shareCooldown = setTimeout(() => {
    shareCooldown = undefined
  }, Config.ShareContactCooldown)
})
ESX.Phone.functions.addButton('#delete-contact', function () {
  if (ESX.Phone.currentContact.preAdded) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotdeletecontact,
      Config.Notifications.Error.length
    )
  }
  let _0x115b49 = ESX.Phone.currentContact.id,
    _0xb1d621 = ESX.Phone.currentContact.number
  ESX.Phone.currentContact = {}
  $('.contacts > .contactscreen').removeClass('visible')
  ESX.Phone.contacts.splice(
    ESX.Phone.contacts.findIndex((_0x2b623a) => _0x2b623a.id == _0x115b49),
    1
  )
  ESX.Phone.functions.updateContacts(ESX.Phone.contacts)
  const _0x1c85f1 = {
    id: _0x115b49,
    number: _0xb1d621,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/deleteContact',
    JSON.stringify(_0x1c85f1)
  )
})
ESX.Phone.functions.addButton('#edit-contact', function () {
  if (ESX.Phone.currentContact.preAdded) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannoteditcontact,
      Config.Notifications.Error.length
    )
  }
  $('.contacts > .editcontact').addClass('visible')
  let _0x3c3655 = document.forms.editcontact
  _0x3c3655.elements.name.value = ESX.Phone.currentContact.name
  _0x3c3655.elements.number.value = ESX.Phone.currentContact.number
  _0x3c3655.elements.photo.value = ESX.Phone.currentContact.photo
  _0x3c3655.elements.tag.value = ESX.Phone.currentContact.tag
})
ESX.Phone.functions.addButton('#closeeditcontact', function () {
  $('.contacts > .editcontact').removeClass('visible')
})
ESX.Phone.functions.addButton('.newcontactbutton', function () {
  $('.newcontact').detach().appendTo('.contacts')
  setTimeout(() => {
    $('.newcontact').addClass('visible')
  }, 5)
})
ESX.Phone.functions.addDynamicButton('#closenewcontact', function () {
  let _0x5b640b = document.forms.newcontact
  _0x5b640b.elements.name.value = ''
  _0x5b640b.elements.number.value = ''
  _0x5b640b.elements.tag.value = ''
  $('.newcontact').removeClass('visible')
})
ESX.Phone.functions.addButton('#createnewcontact', async function () {
  let _0x41b4da = document.forms.newcontact,
    _0x29dd68 = _0x41b4da.elements.name.value,
    _0x10c3ec = _0x41b4da.elements.number.value,
    _0x2f1a60 = _0x41b4da.elements.photo.value,
    _0x3923a9 = _0x41b4da.elements.tag.value
  if (_0x29dd68.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.namenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x10c3ec.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x2f1a60 != '' && _0x2f1a60.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  if (
    ESX.Phone.functions.getContact(_0x10c3ec) !=
    Locales[Config.Language].unknown
  ) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.contactalreadyexists,
      Config.Notifications.Error.length
    )
  }
  if (_0x10c3ec == ESX.Phone.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotcreatecontactyourself,
      Config.Notifications.Error.length
    )
  }
  _0x2f1a60 =
    _0x2f1a60 == '' || _0x2f1a60.indexOf('http') > -1
      ? _0x2f1a60
      : 'http://' + _0x2f1a60
  let _0xfeeb75 = await ESX.Phone.functions.urlExists(_0x2f1a60)
  if (!_0xfeeb75) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  _0x41b4da.elements.name.value = ''
  _0x41b4da.elements.number.value = ''
  _0x41b4da.elements.tag.value = ''
  $('.newcontact').removeClass('visible')
  ESX.Phone.contacts.push({
    id: -1,
    owner: ESX.Phone.identifier,
    name: _0x29dd68,
    number: _0x10c3ec,
    photo: _0x2f1a60,
    tag: _0x3923a9,
    calls: [],
  })
  let _0x4b6db0 = ESX.Phone.contacts.length - 1
  ESX.Phone.functions.updateContacts(ESX.Phone.contacts)
  const _0x3d6a24 = {
    name: _0x29dd68,
    number: _0x10c3ec,
    photo: _0x2f1a60,
    tag: _0x3923a9,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/createContact',
    JSON.stringify(_0x3d6a24),
    function (_0xd79508) {
      if (ESX.Phone.currentContact.number == _0x10c3ec) {
        ESX.Phone.currentContact.id = _0xd79508
      }
      ESX.Phone.contacts[_0x4b6db0].id = _0xd79508
      ESX.Phone.functions.updateContacts(ESX.Phone.contacts)
    }
  )
})
ESX.Phone.functions.addImageSelector(
  '.newcontact .upload',
  '.newcontact .image > input',
  false
)
ESX.Phone.functions.addButton('#editcontact', async function () {
  let _0x5b0a11 = document.forms.editcontact,
    _0x51e3e8 = _0x5b0a11.elements.name.value,
    _0x4c399a = _0x5b0a11.elements.number.value,
    _0x45e17f = _0x5b0a11.elements.photo.value,
    _0x7f44 = _0x5b0a11.elements.tag.value
  if (_0x51e3e8.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.namenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x4c399a.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x45e17f != '' && _0x45e17f.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  if (_0x4c399a == ESX.Phone.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotsetnumbertoyourown,
      Config.Notifications.Error.length
    )
  }
  _0x45e17f =
    _0x45e17f == '' || _0x45e17f.indexOf('http') > -1
      ? _0x45e17f
      : 'http://' + _0x45e17f
  let _0x2fabcd = await ESX.Phone.functions.urlExists(_0x45e17f)
  if (!_0x2fabcd) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  _0x5b0a11.elements.name.value = ''
  _0x5b0a11.elements.number.value = ''
  _0x5b0a11.elements.photo.value = ''
  _0x5b0a11.elements.tag.value = ''
  $('#contact-letter').html(_0x51e3e8.charAt(0).toUpperCase())
  $('#contact-name').html(_0x51e3e8)
  if (_0x45e17f != '') {
    $('#contact-image').attr('src', _0x45e17f).show()
  } else {
    $('#contact-image').hide()
  }
  $('#contact-number').html(_0x4c399a)
  ESX.Phone.currentContact.name = _0x51e3e8
  ESX.Phone.currentContact.number = _0x4c399a
  ESX.Phone.currentContact.photo = _0x45e17f
  ESX.Phone.currentContact.tag = _0x7f44
  $('.contacts > .editcontact').removeClass('visible')
  $.post(
    'http://' + ESX.Phone.resourceName + '/editContact',
    JSON.stringify({
      id: ESX.Phone.currentContact.id,
      name: _0x51e3e8,
      number: _0x4c399a,
      photo: _0x45e17f,
      tag: _0x7f44,
    })
  )
})
ESX.Phone.functions.addImageSelector(
  '.contacts > .editcontact .upload',
  '.contacts > .editcontact .image > input',
  false
)
ESX.Phone.functions.addButton('#canceleditcontact', function () {
  let _0x36fcda = document.forms.editcontact
  _0x36fcda.elements.name.value = ''
  _0x36fcda.elements.number.value = ''
  _0x36fcda.elements.tag.value = ''
  $('.contacts > .editcontact').removeClass('visible')
})
ESX.Phone.functions.resetGarage = function () {
  ESX.Phone.currentVeh = {}
  $('.garage .mainheader').addClass('no-transition').removeClass('search')
  $('.garage > .main').addClass('no-transition').css('left', '0%')
  $('.garage > .notescreen').addClass('no-transition').css('right', '-100%')
  $('.garage > .main .noresults').hide()
  setTimeout(() => {
    $('.notes .mainheader, .notes > .main, .notes > .notescreen').removeClass(
      'no-transition'
    )
  }, 5)
  
  $.post(
    'http://' + ESX.Phone.resourceName + '/updateVehicles',
    JSON.stringify("")
  )
}
ESX.Phone.functions.resetNotes = function () {
  ESX.Phone.currentNote = {}
  $('.notes .mainheader').addClass('no-transition').removeClass('search')
  $('.notes > .main').addClass('no-transition').css('left', '0%')
  $('.notes > .notescreen').addClass('no-transition').css('right', '-100%')
  $('.notes > .main .noresults').hide()
  setTimeout(() => {
    $('.notes .mainheader, .notes > .main, .notes > .notescreen').removeClass(
      'no-transition'
    )
  }, 5)
  setTimeout(() => {
    ESX.Phone.functions.updateNotes(ESX.Phone.notes)
  }, 0)
}

ESX.Phone.functions.updateVehicles = function (vehicles) {
  let _0x28d5d4 = vehicles
  ESX.Phone.vehicles = _0x28d5d4
  
  $('.notes .main .vehiclelist').html('')
  if (ESX.Phone.currentApp != 'Garage') {
    return
  }
  let _0x35c3c6 = _0x28d5d4.length,
    _0xe826f2 = ''
  _0x28d5d4.forEach((_0x10a81f, _0x20cad7) => {
    _0xe826f2 +=
      '<div class="vehicle" data-plate="' +
      _0x10a81f.plate +
      '" style="' +
      (_0x10a81f.color ? 'background-color: ' + _0x10a81f.color : '') +
      '">\n            <p class="title">' +
      _0x10a81f.brand + ' ' + _0x10a81f.name + 
      '</p>\n            <p class="timestamp">' +
      _0x10a81f.plate + ' | Garaj: ' + _0x10a81f.garage +
      '</p></div>'
    _0x20cad7 == _0x35c3c6 - 1 && $('.notes .main .vehiclelist').html(_0xe826f2)
  })
}

ESX.Phone.functions.addDynamicButton(
  '.notes .vehiclelist .vehicle',
  function (_0x18ef24) {
    $('.notes .main').css('left', '-100%')
    $('.notes .vehiclescreen').css('right', '3%')
    $('.notes .mainheader').fadeOut(150)
    $('.notes .vehicleheader').fadeIn(150)
    let _0x99920e = ESX.Phone.vehicles.find(
      (_0x526a0e) => _0x526a0e.plate == $(_0x18ef24).data('plate')
    )

    ESX.Phone.currentVeh = _0x99920e
  }
)

ESX.Phone.functions.addButton(
  '.notes .vehicleheader > .back',
  function (_0x3dc752) {
    $('.notes .main').css('left', '0%')
    $('.notes .vehiclescreen').css('right', '-100%')
    $.post(
      'http://' + ESX.Phone.resourceName + '/updateVehicles',
      JSON.stringify("")
    )
    $('.notes .mainheader').fadeIn(150)
    $('.notes .vehicleheader').fadeOut(150)
  }
)

ESX.Phone.functions.addButton(
  '.notes .vehicleheader > .vale',
  function (_0x29677e) {    
    $.post(
      'http://' + ESX.Phone.resourceName + '/getCarVale',
      JSON.stringify({ plate: ESX.Phone.currentVeh.plate })
    )

    ESX.Phone.currentNote = {}
    $('.notes .main').css('left', '0%')
    $('.notes .vehiclescreen').css('right', '-100%')
    $('.notes .mainheader').fadeIn(150)
    $('.notes .vehicleheader').fadeOut(150)
  }
)

ESX.Phone.functions.updateNotes = function (_0x5ea785) {
  if (!_0x5ea785 || _0x5ea785 == '{}') {
    _0x5ea785 = '[]'
  }
  let _0x28d5d4 =
    typeof _0x5ea785 == 'string' ? JSON.parse(_0x5ea785) : _0x5ea785
  ESX.Phone.notes = _0x28d5d4
  if (ESX.Phone.currentApp != 'Notes') {
    return
  }
  $('.notes .main .noteslist').html('')
  let _0x35c3c6 = _0x28d5d4.length,
    _0xe826f2 = ''
  _0x28d5d4.forEach((_0x10a81f, _0x20cad7) => {
    _0xe826f2 +=
      '<div class="note" data-id="' +
      _0x10a81f.id +
      '" style="' +
      (_0x10a81f.color ? 'background-color: ' + _0x10a81f.color : '') +
      '">\n            <p class="title">' +
      _0x10a81f.title +
      '</p>\n            <p class="timestamp">' +
      ESX.Phone.functions.formatDate5(_0x10a81f.time) +
      '</p>\n            <div class="delete">\n                <i class="far fa-times"></i>\n            </div>\n        </div>'
    _0x20cad7 == _0x35c3c6 - 1 && $('.notes .main .noteslist').html(_0xe826f2)
  })
}
ESX.Phone.functions.addDynamicButton(
  '.notes .main .noteslist .note > .delete',
  function (_0x481d36, _0x3d5989) {
    let _0x2d14a8 = $(_0x481d36).parent().data('id'),
      _0xb60542 = ESX.Phone.notes.findIndex(
        (_0x19aa40) => _0x19aa40.id == _0x2d14a8
      )
    ESX.Phone.notes.splice(_0xb60542, 1)
    _0x3d5989.stopPropagation()
    removeFlexItem(
      document.querySelector('.notes .main .noteslist'),
      $(_0x481d36).parent().get(0)
    )
    $.post(
      'http://' + ESX.Phone.resourceName + '/updateNotes',
      JSON.stringify({ notes: ESX.Phone.notes })
    )
  }
)
ESX.Phone.functions.addButton('.newnote', function () {
  $('.notes .main').css('left', '-100%')
  $('.notes .notescreen').css('right', '3%')
  let _0x10eca8 = {
    id: Math.floor(Math.random() * 10000),
    title: Locales[Config.Language].new_note,
    content: '',
    color: '#fff',
    time: Date.now(),
  }
  ESX.Phone.notes.push(_0x10eca8)
  ESX.Phone.functions.setupNote(ESX.Phone.notes[ESX.Phone.notes.length - 1])
  setTimeout(() => {
    ESX.Phone.functions.updateNotes(ESX.Phone.notes)
  }, 400)
  $.post(
    'http://' + ESX.Phone.resourceName + '/updateNotes',
    JSON.stringify({ notes: ESX.Phone.notes })
  )
  $('.notes .mainheader').fadeOut(150)
  $('.notes .noteheader').fadeIn(150)
})
ESX.Phone.functions.addButton(
  '.notes .mainheader > .search',
  function (_0x3e75ea) {
    if (!$('.notes .mainheader').hasClass('search')) {
      $('.notes .mainheader').addClass('search')
      $('.notes .mainheader > .searchinput input').val('')
    } else {
      $('.notes .mainheader').removeClass('search')
      $('.notes .noteslist > .note').show()
      $('.notes > .main .noresults').hide()
    }
  }
)
$('#notecolor').on('input', function () {
  let _0x57f1d7 = $('#notecolor').val()
  ESX.Phone.currentNote.color = _0x57f1d7
  $('.note[data-id="' + ESX.Phone.currentNote.id + '"]').css(
    'background-color',
    _0x57f1d7
  )
})
$('.notes .notescreen input.title').on('input', function () {
  ESX.Phone.currentNote.title = $(this).val()
  $(
    '.notes .noteslist .note[data-id="' +
    ESX.Phone.currentNote.id +
    '"] > .title'
  ).html($(this).val())
})
$('.notes .notescreen textarea.content').on('input', function () {
  ESX.Phone.currentNote.content = $(this).val()
  $(this)
    .css('height', '1px')
    .css('height', $(this).get(0).scrollHeight + 'px')
})
ESX.Phone.functions.addDynamicButton(
  '.notes .noteslist .note',
  function (_0x18ef24) {
    $('.notes .main').css('left', '-100%')
    $('.notes .notescreen').css('right', '3%')
    $('.notes .mainheader').fadeOut(150)
    $('.notes .noteheader').fadeIn(150)
    let _0x99920e = ESX.Phone.notes.find(
      (_0x526a0e) => _0x526a0e.id == $(_0x18ef24).data('id')
    )
    ESX.Phone.functions.setupNote(_0x99920e)
  }
)
$('#searchnotes').on('input', function () {
  let _0x1df0eb = $(this).val(),
    _0x1263c5 = 0
  if (_0x1df0eb != '') {
    ESX.Phone.notes.forEach((_0xaee908, _0x238d08) => {
      if (!_0xaee908.title.toString().toLowerCase().includes(_0x1df0eb.toString().toLowerCase())) {
        $('.notes .noteslist > .note[data-id="' + _0xaee908.id + '"]').hide()
      } else {
        $('.notes .noteslist > .note[data-id="' + _0xaee908.id + '"]').show()
        _0x1263c5++
      }
      _0x238d08 == ESX.Phone.notes.length - 1 &&
        (_0x1263c5 > 0
          ? $('.notes > .main .noresults').hide()
          : ($('.notes > .main .noresults').show(),
            $('.notes > .main .noresults > .description').html(
              Locales[Config.Language].searchquery.formatText(_0x1df0eb)
            )))
    })
  } else {
    $('.notes .noteslist > .note').show(), $('.notes > .main .noresults').hide()
  }
})
ESX.Phone.functions.setupNote = function (_0x50f93d) {
  ESX.Phone.currentNote = _0x50f93d
  $('#notecolor').val(_0x50f93d.color)
  $('.notes .notescreen .title > .title').val(_0x50f93d.title)
  $('.notes .notescreen .title > .clr-field').css('color', _0x50f93d.color)
  $('.notes .notescreen .timestamp').html(
    ESX.Phone.functions.formatDate5(_0x50f93d.time)
  )
  $('.notes .notescreen .content')
    .val(_0x50f93d.content)
    .css('height', '1px')
    .css('height', $('.notes .notescreen .content').get(0).scrollHeight + 'px')
}
ESX.Phone.functions.addButton(
  '.notes .noteheader > .delete',
  function (_0x29677e) {
    let _0x4cba55 = ESX.Phone.notes.findIndex(
      (_0x4d84d1) => _0x4d84d1.id == ESX.Phone.currentNote.id
    )
    $(
      '.notes .noteslist .note[data-id="' + ESX.Phone.notes[_0x4cba55].id + '"]'
    ).remove()
    ESX.Phone.notes.splice(_0x4cba55, 1)
    $.post(
      'http://' + ESX.Phone.resourceName + '/updateNotes',
      JSON.stringify({ notes: ESX.Phone.notes })
    )
    ESX.Phone.currentNote = {}
    $('.notes .main').css('left', '0%')
    $('.notes .notescreen').css('right', '-100%')
    $('.notes .mainheader').fadeIn(150)
    $('.notes .noteheader').fadeOut(150)
  }
)
ESX.Phone.functions.addButton(
  '.notes .noteheader > .back',
  function (_0x3dc752) {
    $('.notes .main').css('left', '0%')
    $('.notes .notescreen').css('right', '-100%')
    $.post(
      'http://' + ESX.Phone.resourceName + '/updateNotes',
      JSON.stringify({ notes: ESX.Phone.notes })
    )
    $('.notes .mainheader').fadeIn(150)
    $('.notes .noteheader').fadeOut(150)
  }
)
function removeFlexItem(_0x33ff1e, _0x4056a5) {
  const _0x1820e2 = getFlexItemsInfo(_0x33ff1e)
  $(_0x4056a5).css('opacity', '0.0')
  setTimeout(() => {
    _0x33ff1e.removeChild(_0x4056a5)
    const _0x161d39 = getFlexItemsInfo(_0x33ff1e)
    animateFlexItems(_0x1820e2, _0x161d39)
  }, 150)
}
function getFlexItemsInfo(_0x75097d) {
  return Array.from(_0x75097d.children).map((_0x5d4b82) => {
    const _0x3fdb68 = _0x5d4b82
    return {
      element: _0x5d4b82,
      x: _0x3fdb68.offsetLeft - _0x75097d.offsetLeft,
      y: _0x3fdb68.offsetTop - _0x75097d.offsetTop,
      width: _0x5d4b82.clientWidth,
      height: _0x5d4b82.clientHeight,
    }
  })
}
function animateFlexItems(_0x43811c, _0x1a20e9) {
  for (const _0x153c86 of _0x1a20e9) {
    const _0xafcdae = _0x43811c.find(
      (_0x3867f5) => _0x3867f5.element === _0x153c86.element
    )
    let _0x1695ec = $(_0x153c86.element)
    _0x1695ec.addClass('no-transition').css({
      position: 'absolute',
      left: 'calc(' + _0xafcdae.x + 'px + 0.5vw)',
      top: 'calc(' + _0xafcdae.y + 'px - 0.3vw)',
      width: _0xafcdae.width + 'px',
      height: _0xafcdae.height + 'px',
    })
    setTimeout(() => {
      _0x1695ec.removeClass('no-transition').css({
        left: 'calc(' + _0x153c86.x + 'px + 0.5vw)',
        top: 'calc(' + _0x153c86.y + 'px - 0.3vw)',
        width: _0x153c86.width + 'px',
        height: _0x153c86.height + 'px',
      })
      setTimeout(() => {
        const _0x5bd37f = {
          position: '',
          left: '',
          top: '',
          width: '',
          height: '',
        }
        _0x1695ec.css(_0x5bd37f)
      }, 200)
    }, 5)
  }
}
const chatsb = new ScrollBooster({
  viewport: document.querySelector('.messages .chats .chatlist'),
  content: document.querySelector('.messages .chats .chatlist'),
  scrollMode: 'native',
  direction: 'vertical',
}),
  newchatattachmentsb = new ScrollBooster({
    viewport: document.querySelector('.newchat .attachments'),
    content: document.querySelector('.newchat .attachments'),
    scrollMode: 'native',
    direction: 'horizontal',
  }),
  chatattachmentsb = new ScrollBooster({
    viewport: document.querySelector('.messages .privatechat .attachments'),
    content: document.querySelector('.messages .privatechat .attachments'),
    scrollMode: 'native',
    direction: 'horizontal',
  }),
  grouplistsb = new ScrollBooster({
    viewport: document.querySelector('.messages .groups .grouplist'),
    content: document.querySelector('.messages .groups .grouplist'),
    scrollMode: 'native',
    direction: 'horizontal',
  }),
  groupmembersb = new ScrollBooster({
    viewport: document.querySelector('.groupmembers'),
    content: document.querySelector('.groupmembers'),
    scrollMode: 'native',
    direction: 'horizontal',
  })
var groupNotifs = 0,
  messageNotifs = 0
ESX.Phone.functions.resetMessages = function () {
  ESX.Phone.currentChat = {}
  setTimeout(() => {
    ESX.Phone.functions.setupChats(ESX.Phone.chats)
    ESX.Phone.functions.setupGroups(ESX.Phone.groups)
  }, 0)
  $('.messages .privatechat').addClass('no-transition').removeClass('visible')
  $('.messages .newgroup, .messages .managegroup')
    .addClass('no-transition')
    .removeClass('visible')
  $('.newcontact, .newchat').addClass('no-transition').removeClass('visible')
  $('.messages > .chats .header')
    .addClass('no-transition')
    .removeClass('search')
  $('.messages .chats .noresults').hide()
  setTimeout(() => {
    $(
      '.messages .newgroup, .messages .managegroup, .messages .privatechat, .messages > .chats .header, .newchat, .newcontact'
    ).removeClass('no-transition')
  }, 5)
}
ESX.Phone.functions.addButton('.open-more', function () {
  !$('.more').hasClass('active')
    ? ($('.more').addClass('active'),
      $('.more .more-items').css('height', '6.3vw'))
    : ($('.more').removeClass('active'),
      $('.more .more-items').css('height', '1.3vw'))
})
$(document).on('click', function (_0x403e82) {
  _0x403e82.target.className != 'open-more' &&
    _0x403e82.target.className != 'icon' &&
    ($('.more').removeClass('active'),
      $('.more .more-items').css('height', '1.3vw'))
})
ESX.Phone.functions.addButton('#closechat', function () {
  $('.messages > .privatechat').removeClass('visible')
  ESX.Phone.currentChat = {}
})
ESX.Phone.functions.addDynamicButton('.location', function (_0x579976) {
  let _0x3de806 = {
    x: $(_0x579976).data('x'),
    y: $(_0x579976).data('y'),
  }
  const _0x53b505 = {
    x: _0x3de806.x,
    y: _0x3de806.y,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/setWaypoint',
    JSON.stringify(_0x53b505)
  )
  ESX.Phone.functions.sendNotification(
    Config.Applications[ESX.Phone.currentApp].notifications.icon,
    Config.Applications[ESX.Phone.currentApp].notifications.color,
    Config.Applications[ESX.Phone.currentApp].label,
    Locales[Config.Language].notifications.waypointset,
    Config.Notifications.Success.length
  )
})
ESX.Phone.functions.replaceLocations = function (_0x2686ad) {
  do {
    if (_0x2686ad.indexOf('(GPS:') != -1 && _0x2686ad.search(/[0-9]\)/) != -1) {
      let _0x453eb3 = _0x2686ad.substring(
        _0x2686ad.indexOf('(GPS:'),
        _0x2686ad.search(/[0-9]\)/) + 2
      ),
        _0xd9f61c = _0x2686ad.substring(
          _0x2686ad.indexOf('(GPS:') + '(GPS:'.length,
          _0x2686ad.search(/[0-9]\)/) + 1
        ),
        _0x58d1f8 = _0xd9f61c.split(',')[0],
        _0x2dd542 = _0xd9f61c.split(',')[1]
      if (_0x58d1f8 && _0x2dd542) {
        _0x2686ad = _0x2686ad.replace(
          _0x453eb3,
          '<a href="#" class="location" data-x="' +
          _0x58d1f8 +
          '" data-y="' +
          _0x2dd542 +
          '">' +
          Locales[Config.Language].location +
          '</a>'
        )
      } else {
        _0x2686ad = _0x2686ad.replace(_0x453eb3, '')
      }
    }
  } while (
    _0x2686ad.indexOf('(GPS:') != -1 &&
    _0x2686ad.search(/[0-9]\)/) != -1
  )
  return _0x2686ad
}
ESX.Phone.functions.addButton('#sendnewmessage', function () {
  let _0xf4a863 = document.forms.newmessage,
    _0xff57ee = _0xf4a863.elements.name.value,
    _0x3abfaa = _0xf4a863.elements.number.value,
    _0x3687d5 = _0xf4a863.elements.content.value
  if (_0xff57ee.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.namenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x3abfaa.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x3687d5.length < 1 && currentAttachments.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.messagenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantsend,
      Config.Notifications.Error.length
    )
  }
  _0xf4a863.elements.name.value = ''
  _0xf4a863.elements.number.value = ''
  _0xf4a863.elements.content.value = ''
  $('.newchat').removeClass('visible')
  let _0x208d00 = Date.now(),
    _0x399835 = ESX.Phone.functions.getChat(_0x3abfaa)
  if (_0x399835 == -1) {
    let _0x49b7de = [
      {
        from: ESX.Phone.number,
        to: _0x3abfaa,
        message: _0x3687d5,
        attachments: JSON.stringify(currentAttachments),
        time: _0x208d00,
      },
    ]
    ESX.Phone.chats.push({
      owner: ESX.Phone.identifier,
      number: _0x3abfaa,
      name: _0xff57ee,
      messages: _0x49b7de,
      unread: 0,
      muted: 0,
      lastOpened: _0x208d00,
    })
    
    let _0x1258fb = ESX.Phone.chats.length - 1
    const _0x4a1952 = {
      number: _0x3abfaa,
      name: _0xff57ee,
      messages: _0x49b7de,
    }
    ESX.Phone.functions.openChat(_0x4a1952)
    const _0x2f449c = {
      name: _0xff57ee,
      number: _0x3abfaa,
    }
    $.post(
      'http://' + ESX.Phone.resourceName + '/createChat',
      JSON.stringify(_0x2f449c),
      function (_0xe808c6) {
        if (ESX.Phone.currentChat.number == _0x3abfaa) {
          ESX.Phone.currentChat.id = _0xe808c6
        }
        ESX.Phone.chats[_0x1258fb].id = _0xe808c6
        ESX.Phone.functions.setupChats(ESX.Phone.chats)
      }
    )
  } else {
    ESX.Phone.chats[_0x399835].messages.push({
      from: ESX.Phone.number,
      to: _0x3abfaa,
      message: _0x3687d5,
      attachments: JSON.stringify(currentAttachments),
      time: _0x208d00,
    })
    let _0x1980e1 = ESX.Phone.functions.getContact(_0x3abfaa)
    _0xff57ee =
      _0x1980e1 != Locales[Config.Language].unknown
        ? _0x1980e1.name
        : ESX.Phone.chats[_0x399835].name
    ESX.Phone.functions.openChat({
      id: ESX.Phone.chats[_0x399835].id,
      number: _0x3abfaa,
      name: _0xff57ee,
      messages: ESX.Phone.chats[_0x399835].messages,
    })
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/sendMessage',
    JSON.stringify({
      number: _0x3abfaa,
      content: _0x3687d5,
      attachments: JSON.stringify(currentAttachments),
      time: _0x208d00,
    })
  )
  resetAttachments()
})
$('.messages .privatechat .text').on('keyup', function (_0x692c65) {
  _0x692c65.keyCode == 13 && sendNewMessage()
})
ESX.Phone.functions.addButton(
  '.messages .more > .more-items > .icon, .newchat .more > .more-items > .icon',
  function (_0x599fb) {
    let _0x3411e5 = $(_0x599fb).data('action')
    switch (_0x3411e5) {
      case 'sendcoords':
        $.post(
          'http://' + ESX.Phone.resourceName + '/getCoords',
          JSON.stringify({}),
          function (_0xaafd9c) {
            let _0x5b390a = JSON.parse(_0xaafd9c)
            let _0x5a39f4 =
              '(GPS:' +
              _0x5b390a.x.toFixed(3) +
              ',' +
              _0x5b390a.y.toFixed(3) +
              ')'
            if (ESX.Phone.currentChat.number) {
              if (
                ($('.messages .privatechat .text').val() + _0x5a39f4).length <
                $('.messages .privatechat .text').attr('maxlength')
              ) {
                $('.messages .privatechat .text').val(
                  $('.messages .privatechat .text').val() + _0x5a39f4
                )
              }
            } else {
              if (
                (form.elements.content.value + _0x5a39f4).length <
                form.elements.content.maxLength
              ) {
                form.elements.content.value += _0x5a39f4
              }
            }
            $('.more').removeClass('active')
            $('.more .more-items').css('height', '1.3vw')
          }
        )
        break
      case 'openemojimenu':
        window.picker.togglePicker(_0x599fb)
        break
      case 'takephoto':
        ESX.Phone.functions.openTakePhoto(function (_0x2fd48e) {
          addAttachment(_0x2fd48e)
        })
        break
      case 'selectphoto':
        ESX.Phone.functions.openPhotoSelector(function (_0x535019) {
          addAttachment(_0x535019)
        })
        break
    }
  }
)
var currentAttachments = []
function addAttachment(_0x6e226b) {
  if (!ESX.Phone.currentChat.number) {
    if (currentAttachments.length >= Config.AttachmentLimit) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.toomanyattachments.formatText(
          Config.AttachmentLimit
        ),
        Config.Notifications.Error.length
      )
    }
    currentAttachments.length < 1 &&
      ($('.newchat .content > textarea').addClass('attached'),
        $('.newchat .content > .attachments').show())
    const _0x50ed40 = { image: _0x6e226b }
    currentAttachments.push(_0x50ed40)
    $('.newchat .content > .attachments').append(
      '<div class="attachment" data-id="' +
      (currentAttachments.length - 1) +
      '">\n            <img src="' +
      _0x6e226b +
      '">\n            <p class="title">' +
      Locales[Config.Language].attachment.formatText(
        currentAttachments.length
      ) +
      '</p>\n            <div class="delete"><i class="far fa-times"></i></div>\n        </div>'
    )
    newchatattachmentsb.updateMetrics()
  } else {
    if (currentAttachments.length >= Config.AttachmentLimit) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.toomanyattachments.formatText(
          Config.AttachmentLimit
        ),
        Config.Notifications.Error.length
      )
    }
    if (currentAttachments.length < 1) {
      $('.messages .privatechat .content').addClass('attached')
      $('.messages .privatechat .attachments').show()
    }
    const _0x29781c = { image: _0x6e226b }
    currentAttachments.push(_0x29781c)
    $('.messages .privatechat .attachments').append(
      '<div class="attachment" data-id="' +
      (currentAttachments.length - 1) +
      '">\n            <img src="' +
      _0x6e226b +
      '">\n            <p class="title">' +
      Locales[Config.Language].attachment.formatText(
        currentAttachments.length
      ) +
      '</p>\n            <div class="delete"><i class="far fa-times"></i></div>\n        </div>'
    )
    chatattachmentsb.updateMetrics()
  }
}
function resetAttachments() {
  currentAttachments = []
  if (!ESX.Phone.currentChat.number) {
    $('.newchat .content > .attachments > *').remove()
    $('.newchat .content > textarea').removeClass('attached')
    $('.newchat .content > .attachments').hide()
  } else {
    $('.messages .privatechat .attachments > *').remove()
    $('.messages .privatechat .content').removeClass('attached')
    $('.messages .privatechat .attachments').hide()
  }
}
ESX.Phone.functions.addDynamicButton(
  '.messages .attachment > .delete, .newchat .attachment > .delete',
  function (_0x2db52b) {
    let _0x217cd4 = $(_0x2db52b).parent().data('id')
    currentAttachments.splice(_0x217cd4, 1)
    if (!ESX.Phone.currentChat.number) {
      $('.attachment[data-id="' + _0x217cd4 + '"]').remove()
      if (currentAttachments.length < 1) {
        $('.newchat .content > textarea').removeClass('attached')
        $('.newchat .content > .attachments').hide()
      }
    } else {
      $('.attachment[data-id="' + _0x217cd4 + '"]').remove()
      currentAttachments.length < 1 &&
        ($('.messages .privatechat .content').removeClass('attached'),
          $('.messages .privatechat .attachments').hide())
    }
  }
)
function sendNewMessage() {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantsend,
      Config.Notifications.Error.length
    )
  }
  let _0x440080 = $('.messages .privatechat .text').val()
  if (_0x440080.length < 1 && currentAttachments.length < 1) {
    return
  }
  let _0x556adf = ESX.Phone.functions.replaceLocations(
    ESX.Phone.functions.cleanText(_0x440080)
  ),
    _0x370213 = ''
  currentAttachments.forEach((_0x3be7cb) => {
    _0x370213 += '<img src="' + _0x3be7cb.image + '">'
  })
  $('.messages .privatechat .text').val('')
  let _0x238f91 = Date.now()
  $('.messages > .privatechat > .chatmessages').append(
    '<div class="me" data-time="' +
    _0x238f91 +
    '">\n        <p class="time">' +
    ESX.Phone.functions.formatDate(new Date()) +
    '</p>\n        <div class="box">\n            ' +
    _0x370213 +
    '\n            ' +
    _0x556adf +
    '\n        </div>\n    </div>'
  )
  $('.messages > .privatechat > .chatmessages').scrollTop(
    document.getElementById('messages').scrollHeight
  )
  ESX.Phone.currentChat.messages.push({
    from: ESX.Phone.number,
    to: ESX.Phone.currentChat.number,
    message: _0x440080,
    attachments: JSON.stringify(currentAttachments),
    time: _0x238f91,
  })
  ESX.Phone.functions.setupChats(ESX.Phone.chats)
  $.post(
    'http://' + ESX.Phone.resourceName + '/sendMessage',
    JSON.stringify({
      number: ESX.Phone.currentChat.number,
      content: _0x440080,
      attachments: JSON.stringify(currentAttachments),
      time: _0x238f91,
    })
  )
  resetAttachments()
}
ESX.Phone.functions.addButton('.messages .privatechat .send', function () {
  sendNewMessage()
})
ESX.Phone.functions.setupGroups = function (_0x62f1c1) {
  $('.messages .groups .grouplist').html('')
  let _0x21c1f4 = typeof _0x62f1c1 == 'string' ? JSON.parse(_0x62f1c1) : _0x62f1c1

  _0x21c1f4.sort((_0x30ea22, _0x2eff71) => {
    if (!_0x30ea22.messages.length) {
      return 1
    }
    if (!_0x2eff71.messages.length) {
      return -1
    }

    return (
      _0x2eff71.messages[_0x2eff71.messages.length - 1].time -
      _0x30ea22.messages[_0x30ea22.messages.length - 1].time
    )
  })
  groupNotifs = 0
  Config.Applications.Messages.notifCount = 0
  ESX.Phone.functions.updateApp('Messages', 'notifications')
  ESX.Phone.groups = _0x21c1f4
  for (let [_0x1b3e5e, _0x391cb6] of Object.entries(_0x21c1f4)) {
    if (
      ESX.Phone.currentChat.members &&
      _0x391cb6.id == ESX.Phone.currentChat.id
    ) {
      ESX.Phone.currentChat = _0x391cb6
      ESX.Phone.currentChat.number = 'GROUP-' + _0x391cb6.id
      ESX.Phone.functions.loadMessages(_0x391cb6)
      $('#currentchatletter').html(_0x391cb6.name.charAt(0).toUpperCase())
      if (_0x391cb6.photo != '') {
        $('#currentchatimage').attr('src', _0x391cb6.photo).show()
      } else {
        $('#currentchatimage').hide()
      }
      $('#currentchatname').html(ESX.Phone.functions.cleanText(_0x391cb6.name))
      let _0x363863 = JSON.parse(_0x391cb6.members).length
      $('#currentchatnumber').html(
        _0x363863 +
        ' ' +
        (_0x363863 < 2
          ? Locales[Config.Language].person
          : Locales[Config.Language].people)
      )
    }
    let _0x4e2d33 = ''
    !_0x391cb6.muted &&
      ((_0x4e2d33 =
        _0x391cb6.unread > 0
          ? '<div class="notifications">' + _0x391cb6.unread + '</div>'
          : ''),
        (groupNotifs += _0x391cb6.unread))
    if (ESX.Phone.currentApp != 'Messages') {
      continue
    }
    let _0x3231c1 = _0x391cb6.name.charAt(0).toUpperCase(),
      _0x2c2a3f =
        '<div class="group ' +
        (_0x391cb6.muted ? 'muted' : '') +
        '" data-id="' +
        _0x391cb6.id +
        '">\n            ' +
        (_0x391cb6.photo != ''
          ? '<img class="cover" style="background-color:rgb(80, 80, 80)" src="' +
          _0x391cb6.photo +
          '">'
          : '<div class="cover">' + _0x3231c1 + '</div>') +
        '\n            <p class="title">' +
        ESX.Phone.functions.cleanText(_0x391cb6.name) +
        '</p>\n            ' +
        _0x4e2d33 +
        '\n        </div>'
    $('.messages .groups .grouplist').append(_0x2c2a3f)
  }
  Config.Applications.Messages.notifCount = groupNotifs + messageNotifs
  ESX.Phone.functions.updateApp('Messages', 'notifications')
  let _0x5c5ea2 =
    '<div class="group new" id="newgroup">\n        <div class="cover">+</div>\n        <p class="title">' +
    Locales[Config.Language].html.create_group +
    '</p>\n    </div>'
  $('.messages .groups .grouplist').append(_0x5c5ea2)
  grouplistsb.updateMetrics()
}
ESX.Phone.functions.updateGroup = function (_0x5ef571) {
  let _0x258a04 =
    typeof _0x5ef571 == 'string' ? JSON.parse(_0x5ef571) : _0x5ef571,
    _0x8cd81e = ESX.Phone.groups.findIndex(
      (_0x3d45f2) => _0x3d45f2.id == _0x258a04.id
    )
  ESX.Phone.groups[_0x8cd81e] = _0x258a04
  ESX.Phone.functions.setupGroups(ESX.Phone.groups)
}
ESX.Phone.functions.addDynamicButton('#newgroup', function () {
  if (!ESX.Phone.settings.group_messaging.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cantcreategroupsoff,
      Config.Notifications.Error.length
    )
  }
  $('.messages .newgroup').addClass('visible')
  $('.groupmembers > input').val('')
  $('.messages .newgroup .noresults').hide()
  $('.messages .newgroup .leftcontacts').html(
    Locales[Config.Language].left_contacts.formatText(Config.MaxGroupMembers)
  )
  $('.groupmembers > .contact').remove()
  $('.messages .newgroup .contactlist').html('')
  ESX.Phone.contacts.forEach((_0x4c8373, _0x2481a1) => {
    if (_0x4c8373.preAdded) {
      return
    }
    if (_0x4c8373.number == ESX.Phone.number) {
      return
    }
    let _0x20af77 = _0x4c8373.name.charAt(0).toUpperCase(),
      _0x5e141b =
        '<div class="contact" data-id="' +
        _0x4c8373.id +
        '">\n            ' +
        (_0x4c8373.photo != ''
          ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
          _0x4c8373.photo +
          '">'
          : '<div class="avatar">' + _0x20af77 + '</div>') +
        '\n            <p class="name">' +
        _0x4c8373.name +
        '</p>\n            <p class="number">' +
        _0x4c8373.number +
        '</p>\n            <div class="addmember">\n                <i class="far fa-plus"></i>\n            </div>\n        </div>'
    $('.messages .newgroup .contactlist').append(_0x5e141b)
  })
})
var groupCreating = false
ESX.Phone.functions.addButton('#createnewgroup', async function () {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantcreategroup,
      Config.Notifications.Error.length
    )
  }
  if (groupCreating) {
    return
  }
  let _0x5d2cc5 = document.forms.newgroup,
    _0x15bf7a = _0x5d2cc5.elements.name.value
  let _0xe82c9c = _0x5d2cc5.elements.image.value
  if (currentGroupMembers.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.selectgroupmembers,
      Config.Notifications.Error.length
    )
  }
  if (_0x15bf7a.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.groupnamenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0xe82c9c != '' && _0xe82c9c.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0xe82c9c =
    _0xe82c9c == '' || _0xe82c9c.indexOf('http') > -1
      ? _0xe82c9c
      : 'http://' + _0xe82c9c
  let _0x519f0d = await ESX.Phone.functions.urlExists(_0xe82c9c)
  if (!_0x519f0d) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  $('.messages .newgroup').removeClass('visible')
  currentGroupMembers.push(ESX.Phone.number)
  groupCreating = true
  $.post(
    'http://' + ESX.Phone.resourceName + '/createGroup',
    JSON.stringify({
      name: _0x15bf7a,
      photo: _0xe82c9c,
      members: JSON.stringify(currentGroupMembers),
    }),
    function (_0x3b130c) {
      groupCreating = false
      ESX.Phone.functions.openChat({
        id: _0x3b130c,
        number: 'GROUP-' + _0x3b130c,
        name: _0x15bf7a,
        photo: _0xe82c9c,
        members: JSON.stringify(currentGroupMembers),
        messages: [],
        owned: true,
      })
      currentGroupMembers = []
      _0x5d2cc5.elements.name.value = ''
      _0x5d2cc5.elements.image.value = ''
      $('.groupmembers > input').val('')
    }
  )
})
ESX.Phone.functions.addGroup = async function (
  _0x323f7,
  _0x510817,
  _0x5a3db1,
  _0x3ae074
) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  const _0xd1dec2 = { id: _0x323f7 }
  if (!ESX.Phone.settings.group_messaging.value) {
    return $.post(
      'http://' + ESX.Phone.resourceName + '/leaveGroup',
      JSON.stringify(_0xd1dec2)
    )
  }
  const _0x321e8a = {
    id: _0x323f7,
    name: _0x510817,
    photo: _0x5a3db1,
    members: _0x3ae074,
    messages: [],
  }
  ESX.Phone.groups.push(_0x321e8a)
  ESX.Phone.functions.setupGroups(ESX.Phone.groups)
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp('Messages')) {
    if (ESX.Phone.open) {
      ESX.Phone.functions.sendNotification(
        Config.Applications.Messages.notifications.icon,
        Config.Applications.Messages.notifications.color,
        Config.Applications.Messages.label,
        Locales[Config.Language].notifications.addedtogroup.formatText(
          _0x510817
        ),
        Config.Notifications.NewMessage.length,
        JSON.stringify({
          app: 'Messages',
          number: 'GROUP-' + _0x323f7,
        })
      )
    } else {
      ESX.Phone.functions.sendOffNotification(
        Config.Applications.Messages.notifications.icon,
        Config.Applications.Messages.notifications.color,
        Config.Applications.Messages.label,
        Locales[Config.Language].notifications.addedtogroup.formatText(
          _0x510817
        ),
        Config.Notifications.NewMessage.length,
        JSON.stringify({
          app: 'Messages',
          number: 'GROUP-' + _0x323f7,
        })
      )
    }
  }
}
ESX.Phone.functions.deleteGroup = function (_0x59e2cb) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  if (ESX.Phone.currentChat.members && ESX.Phone.currentChat.id == _0x59e2cb) {
    $('.messages > .privatechat').removeClass('visible')
  }
  ESX.Phone.groups.splice(ESX.Phone.functions.getGroup(_0x59e2cb), 1)
  let _0x4b9618 = $(
    '.messages .grouplist > .group[data-id="' + _0x59e2cb + '"]'
  )
  _0x4b9618.css('width', $(_0x4b9618).width() + 'px')
  setTimeout(() => {
    const _0x5cc1ca = {
      width: '0vw',
      margin: '0',
      opacity: '0.0',
    }
    _0x4b9618.css(_0x5cc1ca)
    setTimeout(() => {
      _0x4b9618.remove()
    }, 200)
  }, 5)
}
ESX.Phone.functions.addImageSelector(
  '.messages .newgroup .upload',
  '.messages .newgroup .image > input',
  false
)
$('.groupmembers > input').on('input', function () {
  let _0x2653a1 = $(this).val()
  let _0x48cfbf = 0
  _0x2653a1 != ''
    ? ESX.Phone.contacts.forEach((_0x1c45b6, _0x55d7c6) => {
      !_0x1c45b6.name.toString().toLowerCase().includes(_0x2653a1.toString().toLowerCase())
        ? $(
          '.messages .newgroup .contactlist > .contact[data-id="' +
          _0x1c45b6.id +
          '"]'
        ).hide()
        : ($(
          '.messages .newgroup .contactlist > .contact[data-id="' +
          _0x1c45b6.id +
          '"]'
        ).show(),
          _0x48cfbf++)
      if (_0x55d7c6 == ESX.Phone.contacts.length - 1) {
        _0x48cfbf > 0
          ? $('.messages .newgroup .noresults').hide()
          : ($('.messages .newgroup .noresults').show(),
            $('.messages .newgroup .noresults > .description').html(
              Locales[Config.Language].searchquery.formatText(_0x2653a1)
            ))
      }
    })
    : ($('.messages .newgroup .contactlist > .contact').show(),
      $('.messages .newgroup .noresults').hide())
})
ESX.Phone.functions.addButton('#leavegroup', function (_0x42d4d8) {
  $('.messages > .privatechat').removeClass('visible')
  $.post(
    'http://' + ESX.Phone.resourceName + '/leaveGroup',
    JSON.stringify({ id: ESX.Phone.currentChat.id })
  )
  ESX.Phone.currentChat = {}
})
ESX.Phone.functions.addImageSelector(
  '.messages .managegroup .upload',
  '.messages .managegroup .image > input',
  false
)
ESX.Phone.functions.addButton('#managegroup', function (_0x30e6c0) {
  $('.messages .managegroup').addClass('visible')
  $('.groupmembers > input').val('')
  $('.messages .managegroup .noresults').hide()
  $('.messages .managegroup .leftcontacts').html(
    Locales[Config.Language].left_contacts.formatText(Config.MaxGroupMembers)
  )
  let _0x443a63 = document.forms.managegroup
  _0x443a63.elements.name.value = ESX.Phone.currentChat.name
  _0x443a63.elements.image.value = ESX.Phone.currentChat.photo
  currentGroupMembers = JSON.parse(ESX.Phone.currentChat.members)
  $('.groupmembers > .contact').remove()
  currentGroupMembers.forEach((_0x9a1802) => {
    if (_0x9a1802 == ESX.Phone.number) {
      return
    }
    let _0x5cd621 = ESX.Phone.contacts.find(
      (_0x566c7c) => _0x566c7c.number == _0x9a1802
    ),
      _0x53e2af =
        _0x5cd621 != Locales[Config.Language].unknown
          ? _0x5cd621.name
          : _0x9a1802,
      _0x3be3e3 =
        _0x5cd621 != Locales[Config.Language].unknown ? _0x5cd621.photo : '',
      _0x6666af =
        _0x5cd621 != Locales[Config.Language].unknown ? _0x5cd621.id : _0x9a1802
    $('.managegroup .groupmembers').prepend(
      '<div class="contact" data-id="' +
      _0x6666af +
      '">\n            ' +
      (_0x3be3e3 != '' ? '<img src="' + _0x3be3e3 + '">' : '') +
      '\n            <p class="title">' +
      _0x53e2af +
      '</p>\n            <div class="delete"><i class="far fa-times"></i></div>\n        </div>'
    )
    let _0x2da546 = $(
      '.managegroup .groupmembers > .contact[data-id="' + _0x6666af + '"]'
    ).width()
    $('.managegroup .groupmembers > .contact[data-id="' + _0x6666af + '"]').css(
      'width',
      _0x2da546 + 'px'
    )
  })
  $('.messages .managegroup .contactlist').html('')
  ESX.Phone.contacts.forEach((_0x31d29b, _0x3c8777) => {
    if (_0x31d29b.preAdded) {
      return
    }
    if (_0x31d29b.number == ESX.Phone.number) {
      return
    }
    let _0x10f83e = _0x31d29b.name.charAt(0).toUpperCase()
    let _0x39ef8d =
      '<div class="contact ' +
      (currentGroupMembers.includes(_0x31d29b.number) ? 'hidden' : '') +
      '" data-id="' +
      _0x31d29b.id +
      '">\n            ' +
      (_0x31d29b.photo != ''
        ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
        _0x31d29b.photo +
        '">'
        : '<div class="avatar">' + _0x10f83e + '</div>') +
      '\n            <p class="name">' +
      ESX.Phone.functions.cleanText(_0x31d29b.name) +
      '</p>\n            <p class="number">' +
      _0x31d29b.number +
      '</p>\n            <div class="addmember">\n                <i class="far fa-plus"></i>\n            </div>\n        </div>'
    $('.messages .managegroup .contactlist').append(_0x39ef8d)
  })
})
ESX.Phone.functions.addButton('#savegroup', async function () {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecanteditgroup,
      Config.Notifications.Error.length
    )
  }
  let _0x3181ed = document.forms.managegroup,
    _0x1e5798 = _0x3181ed.elements.name.value,
    _0x295700 = _0x3181ed.elements.image.value
  if (currentGroupMembers.length < 2) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.selectgroupmembers,
      Config.Notifications.Error.length
    )
  }
  if (_0x1e5798.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.groupnamenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x295700 != '' && _0x295700.match(/\.(jpeg|jpg|gif|png)$/) == null) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.wrongimageurl,
      Config.Notifications.Error.length
    )
  }
  _0x295700 =
    _0x295700 == '' || _0x295700.indexOf('http') > -1
      ? _0x295700
      : 'http://' + _0x295700
  let _0x3dd5bd = await ESX.Phone.functions.urlExists(_0x295700)
  if (!_0x3dd5bd) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.imagenotavailable,
      Config.Notifications.Error.length
    )
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/saveGroup',
    JSON.stringify({
      id: ESX.Phone.currentChat.id,
      name: _0x1e5798,
      photo: _0x295700,
      members: JSON.stringify(currentGroupMembers),
    })
  )
  ESX.Phone.currentChat.name = _0x1e5798
  ESX.Phone.currentChat.photo = _0x295700
  ESX.Phone.currentChat.members = JSON.stringify(currentGroupMembers)
  ESX.Phone.functions.setupGroups(ESX.Phone.groups)
  currentGroupMembers = []
  _0x3181ed.elements.name.value = ''
  _0x3181ed.elements.image.value = ''
  $('.groupmembers > input').val('')
  $('.messages .managegroup').removeClass('visible')
})
ESX.Phone.functions.addButton('#closemanagegroup', function () {
  let _0x3c0806 = document.forms.managegroup
  currentGroupMembers = []
  _0x3c0806.elements.name.value = ''
  _0x3c0806.elements.image.value = ''
  $('.groupmembers > input').val('')
  $('.messages .managegroup').removeClass('visible')
})
ESX.Phone.functions.addDynamicButton(
  '.messages .groups .grouplist > .group:not(.new)',
  function (_0x167cde) {
    let _0x55b182 = $(_0x167cde).data('id'),
      _0x2eb797 = ESX.Phone.groups.find(
        (_0x559821) => _0x559821.id == _0x55b182
      )
    ESX.Phone.currentChat = _0x2eb797
    ESX.Phone.currentChat.number = 'GROUP-' + _0x2eb797.id
    $.post(
      'http://' + ESX.Phone.resourceName + '/readGroupMessages',
      JSON.stringify({
        id: _0x2eb797.id,
        time: Date.now(),
      })
    )
    ESX.Phone.functions.readMessages(ESX.Phone.currentChat)
    $('#currentchatletter').html(_0x2eb797.name.charAt(0).toUpperCase())
    if (_0x2eb797.photo != '') {
      $('#currentchatimage').attr('src', _0x2eb797.photo).show()
    } else {
      $('#currentchatimage').hide()
    }
    $('#currentchatname').html(_0x2eb797.name)
    let _0x9ab6a6 = JSON.parse(_0x2eb797.members).length
    $('#currentchatnumber').html(
      _0x9ab6a6 +
      ' ' +
      (_0x9ab6a6 < 2
        ? Locales[Config.Language].person
        : Locales[Config.Language].people)
    )
    $('.messages > .privatechat').addClass('visible')
    $('.messages .privatechat').addClass('group')
    if (_0x2eb797.owned) {
      $('.messages .privatechat').addClass('owned')
    } else {
      $('.messages .privatechat').removeClass('owned')
    }
    ESX.Phone.functions.loadMessages(_0x2eb797)
  }
)
ESX.Phone.functions.addDynamicContextMenu(
  '.messages .groups .grouplist > .group:not(.new)',
  false,
  function (_0x5f1cdd) {
    let _0x156242 = $(_0x5f1cdd).data('id')
    let _0x1f004f = ESX.Phone.groups.find(
      (_0x59a5da) => _0x59a5da.id == _0x156242
    )
    if (!_0x1f004f.owned) {
      ESX.Phone.functions.addButtonToContext(
        'fas fa-sign-out-alt',
        Locales[Config.Language].leavegroup,
        'red',
        function () {
          if (
            ESX.Phone.currentChat.members &&
            ESX.Phone.currentChat.id == _0x1f004f.id
          ) {
            $('.messages .privatechat').removeClass('visible')
          }
          $(_0x5f1cdd).css('width', $(_0x5f1cdd).width() + 'px')
          setTimeout(() => {
            $(_0x5f1cdd).css({
              width: '0vw',
              margin: '0',
              opacity: '0.0',
            })
          }, 5)
          const _0x52e353 = { id: _0x1f004f.id }
          $.post(
            'http://' + ESX.Phone.resourceName + '/leaveGroup',
            JSON.stringify(_0x52e353)
          )
        }
      )
    } else {
      ESX.Phone.functions.addButtonToContext(
        'far fa-trash-alt',
        Locales[Config.Language].deletegroup,
        'red',
        function () {
          if (
            ESX.Phone.currentChat.members &&
            ESX.Phone.currentChat.id == _0x1f004f.id
          ) {
            $('.messages .privatechat').removeClass('visible')
          }
          $(_0x5f1cdd).css('width', $(_0x5f1cdd).width() + 'px')
          setTimeout(() => {
            const _0x1e1b00 = {
              width: '0vw',
              margin: '0',
              opacity: '0.0',
            }
            $(_0x5f1cdd).css(_0x1e1b00)
          }, 5)
          const _0x391778 = { id: _0x1f004f.id }
          $.post(
            'http://' + ESX.Phone.resourceName + '/deleteGroup',
            JSON.stringify(_0x391778)
          )
        }
      )
    }
    ESX.Phone.functions.addButtonToContext(
      _0x1f004f.muted ? 'fas fa-bell' : 'fas fa-bell-slash',
      _0x1f004f.muted
        ? Locales[Config.Language].unmutegroup
        : Locales[Config.Language].mutegroup,
      false,
      function () {
        _0x1f004f.muted = !_0x1f004f.muted
        const _0x22cf02 = {
          id: _0x1f004f.id,
          muted: _0x1f004f.muted,
        }
        $.post(
          'http://' + ESX.Phone.resourceName + '/muteGroup',
          JSON.stringify(_0x22cf02)
        )
        ESX.Phone.functions.setupGroups(ESX.Phone.groups)
      }
    )
    _0x1f004f.unread > 0 &&
      !_0x1f004f.muted &&
      ESX.Phone.functions.addButtonToContext(
        'fas fa-eye',
        Locales[Config.Language].markasread,
        false,
        function () {
          $.post(
            'http://' + ESX.Phone.resourceName + '/readGroupMessages',
            JSON.stringify({
              id: _0x1f004f.id,
              time: Date.now(),
            })
          )
          ESX.Phone.functions.readMessages(_0x1f004f)
        }
      )
  }
)
ESX.Phone.functions.addButton('#closenewgroup', function () {
  let _0x1545bd = document.forms.newgroup
  currentGroupMembers = []
  _0x1545bd.elements.name.value = ''
  _0x1545bd.elements.image.value = ''
  $('.groupmembers > input').val('')
  $('.messages .newgroup').removeClass('visible')
})
var currentGroupMembers = []
ESX.Phone.functions.addDynamicButton(
  '.messages .newgroup .contactlist > .contact, .messages .managegroup .contactlist > .contact',
  function (_0x12b73f) {
    if (currentGroupMembers.length == Config.MaxGroupMembers) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.max_contacts.formatText(
          Config.MaxGroupMembers
        ),
        Config.Notifications.Error.length
      )
    }
    let _0x5d584f = $(_0x12b73f).data('id'),
      _0x106c63 = ESX.Phone.contacts.find(
        (_0x4fc56b) => _0x4fc56b.id == _0x5d584f
      )
    $(_0x12b73f).addClass('hidden')
    currentGroupMembers.push(_0x106c63.number)
    $('.groupmembers').prepend(
      '<div class="contact" style="opacity: 0.0" data-id="' +
      _0x106c63.id +
      '">\n        ' +
      (_0x106c63.photo != '' ? '<img src="' + _0x106c63.photo + '">' : '') +
      '\n        <p class="title">' +
      ESX.Phone.functions.cleanText(_0x106c63.name) +
      '</p>\n        <div class="delete"><i class="far fa-times"></i></div>\n    </div>'
    )
    currentGroupMembers.length < Config.MaxGroupMembers
      ? $('.messages .leftcontacts').html(
        Locales[Config.Language].left_contacts.formatText(
          Config.MaxGroupMembers - currentGroupMembers.length
        )
      )
      : $('.messages .leftcontacts').html(
        Locales[Config.Language].max_contacts.formatText(
          Config.MaxGroupMembers
        )
      )
    let _0x87ae3c = $(
      '.groupmembers > .contact[data-id="' + _0x5d584f + '"]'
    ).width()
    groupmembersb.updateMetrics()
    $('.groupmembers > .contact[data-id="' + _0x5d584f + '"]').css({
      width: '0px',
      opacity: '1.0',
      'margin-right': '',
    })
    setTimeout(() => {
      $('.groupmembers > .contact[data-id="' + _0x5d584f + '"]').css(
        'width',
        _0x87ae3c + 'px'
      )
    }, 5)
  }
)
ESX.Phone.functions.addDynamicButton(
  '.newgroup .groupmembers > .contact > .delete',
  function (_0x20d083) {
    let _0x350182 = $(_0x20d083).parent().data('id'),
      _0x27bec4 = ESX.Phone.contacts.find(
        (_0x431089) => _0x431089.id == _0x350182
      )
    currentGroupMembers.splice(
      currentGroupMembers.findIndex(
        (_0x324ecc) => _0x324ecc == _0x27bec4.number
      ),
      1
    )
    const _0x29a196 = {
      width: '0px',
      opacity: '0.0',
    }
    _0x29a196['margin-right'] = '0'
    $('.newgroup .groupmembers > .contact[data-id="' + _0x350182 + '"]')
      .first()
      .css(_0x29a196)
    setTimeout(() => {
      $('.newgroup .groupmembers > .contact[data-id="' + _0x350182 + '"]')
        .first()
        .remove()
    }, 200)
    $('.messages .newgroup .leftcontacts').html(
      Locales[Config.Language].left_contacts.formatText(
        Config.MaxGroupMembers - currentGroupMembers.length
      )
    )
    $(
      '.messages .newgroup .contactlist > .contact[data-id="' + _0x350182 + '"]'
    ).removeClass('hidden')
  }
)
ESX.Phone.functions.addDynamicButton(
  '.managegroup .groupmembers > .contact > .delete',
  function (_0x15a46b) {
    let _0x4b875f = $(_0x15a46b).parent().data('id'),
      _0x181928 = ESX.Phone.contacts.find(
        (_0x3d0bd0) => _0x3d0bd0.id == _0x4b875f
      )
    currentGroupMembers.splice(
      currentGroupMembers.findIndex(
        (_0x1301f5) => _0x1301f5 == _0x181928.number
      ),
      1
    )
    $('.managegroup .groupmembers > .contact[data-id="' + _0x4b875f + '"]')
      .first()
      .css({
        width: '0px',
        opacity: '0.0',
        'margin-right': '0',
      })
    setTimeout(() => {
      $('.managegroup .groupmembers > .contact[data-id="' + _0x4b875f + '"]')
        .first()
        .remove()
    }, 200)
    $('.messages .managegroup .leftcontacts').html(
      Locales[Config.Language].left_contacts.formatText(
        Config.MaxGroupMembers - currentGroupMembers.length
      )
    )
    $(
      '.messages .managegroup .contactlist > .contact[data-id="' +
      _0x4b875f +
      '"]'
    ).removeClass('hidden')
  }
)
ESX.Phone.functions.addButton(
  '.messages > .chats .header > .search',
  function (_0x5d2432) {
    if (!$('.messages > .chats .header').hasClass('search')) {
      $('.messages > .chats .header').addClass('search'),
        $('.messages > .chats .header > .searchinput input').val('')
    } else {
      $('.messages > .chats .header').removeClass('search')
      $('.messages .chatlist > .chat').show()
      $('.messages .chats .noresults').hide()
    }
  }
)
$('#searchchats').on('input', function () {
  let _0xb7ce51 = $(this).val()
  let _0x276a7f = 0
  _0xb7ce51 != ''
    ? ESX.Phone.chats.forEach((_0x4968a6, _0x69e8d) => {
      !_0x4968a6.name.toString().toLowerCase().includes(_0xb7ce51.toString().toLowerCase())
        ? $(
          '.messages .chatlist > .chat[data-id="' + _0x4968a6.id + '"]'
        ).hide()
        : ($(
          '.messages .chatlist > .chat[data-id="' + _0x4968a6.id + '"]'
        ).show(),
          _0x276a7f++)
      _0x69e8d == ESX.Phone.chats.length - 1 &&
        (_0x276a7f > 0
          ? $('.messages .chats .noresults').hide()
          : ($('.messages .chats .noresults').show(),
            $('.messages .chats .noresults > .description').html(
              Locales[Config.Language].searchquery.formatText(_0xb7ce51)
            )))
    })
    : ($('.messages .chatlist > .chat').show(),
      $('.messages .chats .noresults').hide())
})
ESX.Phone.functions.addDynamicButton(
  '#messages .box img',
  function (_0x3bbed0) {
    let _0x256a06 = $(_0x3bbed0).attr('src')
    ESX.Phone.functions.previewImage(_0x256a06)
  }
)
ESX.Phone.functions.getChat = function (_0x530a39) {
  let _0xf69f5d = ESX.Phone.chats.findIndex(
    (_0x38af2a) => _0x38af2a.number == _0x530a39
  )
  return _0xf69f5d
}
ESX.Phone.functions.getGroup = function (_0x283b18) {
  let _0x17fb79 = ESX.Phone.groups.findIndex(
    (_0x1ca09a) => _0x1ca09a.id.high_phone == _0x283b18.high_phone
  )
  return _0x17fb79
}
ESX.Phone.functions.setupChats = function (_0x440aed) {
  $('.messages .chats .chatlist').html('')
  let _0x4657d7 =
    typeof _0x440aed == 'string' ? JSON.parse(_0x440aed) : _0x440aed
  if (_0x4657d7[0] == null || _0x4657d7[0] == "" || _0x4657d7[0] == {}) return
  _0x4657d7.sort(function (_0x5e784e, _0x30c9b8) {
    if (!_0x5e784e.messages.length) {
      return 1
    }
    if (!_0x30c9b8.messages.length) {
      return -1
    }
    return (
      _0x30c9b8.messages[_0x30c9b8.messages.length - 1].time -
      _0x5e784e.messages[_0x5e784e.messages.length - 1].time
    )
  })
  messageNotifs = 0
  Config.Applications.Messages.notifCount = 0
  ESX.Phone.functions.updateApp('Messages', 'notifications')
  ESX.Phone.chats = _0x4657d7
  let _0x5a2fe4 = ''
  for (let [_0x236605, _0x5ef9a3] of Object.entries(_0x4657d7)) {
    if (_0x5ef9a3.number == ESX.Phone.currentChat.number) {
      ESX.Phone.currentChat = _0x5ef9a3
      ESX.Phone.functions.loadMessages(_0x5ef9a3)
    }
    let _0x59a9b2
    if (_0x5ef9a3.messages.length) {
      _0x59a9b2 = {
        content: ESX.Phone.functions.replaceLocations(
          !Config.EnableHTMLMessages
            ? ESX.Phone.functions.cleanText(
              _0x5ef9a3.messages[_0x5ef9a3.messages.length - 1].message
            )
            : _0x5ef9a3.messages[_0x5ef9a3.messages.length - 1].message
        ),
        attachments: JSON.parse(
          _0x5ef9a3.messages[_0x5ef9a3.messages.length - 1].attachments
        ),
        time: _0x5ef9a3.messages[_0x5ef9a3.messages.length - 1].time,
      }
    }
    let _0x291c6d = ''
    !_0x5ef9a3.muted &&
      ((_0x291c6d =
        _0x5ef9a3.unread > 0
          ? '<div class="notifications">' + _0x5ef9a3.unread + '</div>'
          : ''),
        (messageNotifs += _0x5ef9a3.unread))
    if (ESX.Phone.currentApp != 'Messages') {
      continue
    }
    let _0xfd5067 = ESX.Phone.functions.getContact(_0x5ef9a3.number),
      _0x5cde09 =
        _0xfd5067 != Locales[Config.Language].unknown
          ? _0xfd5067.name
          : _0x5ef9a3.name,
      _0x2a9a2b = _0x5cde09.charAt(0).toUpperCase(),
      _0x1a110b =
        _0xfd5067 != Locales[Config.Language].unknown ? _0xfd5067.photo : ''
    _0x5a2fe4 +=
      '<div class="chat ' +
      (!_0x5ef9a3.muted && _0x5ef9a3.unread > 0 ? 'unread' : '') +
      '" data-id="' +
      _0x5ef9a3.id +
      '">\n            <div class="inner">\n                ' +
      (_0x1a110b != ''
        ? '<img class="avatar" style="background-color:rgb(80, 80, 80)" src="' +
        _0x1a110b +
        '">'
        : '<div class="avatar">' + _0x2a9a2b + '</div>') +
      '\n                <div class="info">\n                    <p class="name">' +
      ESX.Phone.functions.cleanText(_0x5cde09) +
      '</p>\n                    <p class="lastmessage">' +
      (_0x59a9b2
        ? _0x59a9b2.content.length < 1 && _0x59a9b2.attachments.length > 0
          ? Locales[Config.Language].attached_image
          : _0x59a9b2.content
        : '') +
      '</p>\n                </div>\n                <div class="rightinfo">\n                    <p class="time">' +
      (_0x59a9b2 ? ESX.Phone.functions.formatDate(_0x59a9b2.time) : '') +
      '</p>\n                    ' +
      (_0x5ef9a3.muted ? '<i class="fas fa-bell-slash bell"></i>' : '') +
      '\n                    ' +
      _0x291c6d +
      '\n                </div>\n            </div>\n            <div class="delete">\n                <i class="fas fa-trash"></i>\n                <p class="title">' +
      Locales[Config.Language].remove +
      '</p>\n            </div>\n        </div>'
  }
  $('.messages .chats .chatlist').html(_0x5a2fe4)
  chatsb.updateMetrics()
  Config.Applications.Messages.notifCount = groupNotifs + messageNotifs
  ESX.Phone.functions.updateApp('Messages', 'notifications')
}
ESX.Phone.functions.updateChat = function (_0x160e93) {
  let _0x52a483 =
    typeof _0x160e93 == 'string' ? JSON.parse(_0x160e93) : _0x160e93,
    _0x35b2cc = ESX.Phone.chats.findIndex(
      (_0x1d6cda) => _0x1d6cda.id == _0x52a483.id
    )
  ESX.Phone.chats[_0x35b2cc] = _0x52a483
  ESX.Phone.functions.setupChats(ESX.Phone.chats)
}
var lastMouseX = 0
$(document).on(
  {
    mousedown: function (_0x3da031) {
      lastMouseX = _0x3da031.pageX
    },
    mouseup: function (_0x38bbc3) {
      if (_0x38bbc3.which != 1) {
        return
      }
      if (
        _0x38bbc3.target.classList[0] != 'delete' &&
        Math.abs(lastMouseX - _0x38bbc3.pageX) < 5
      ) {
        let _0x15beac = $(this).data('id'),
          _0x4f5dd2 = ESX.Phone.chats.find(
            (_0x4c809f) => _0x4c809f.id == _0x15beac
          ),
          
          _0x49f475 = ESX.Phone.functions.getContact(_0x4f5dd2.number),
          _0x38f219 =
            _0x49f475 != Locales[Config.Language].unknown
              ? _0x49f475.name
              : _0x4f5dd2.name,
          _0x5dcd37 =
            _0x49f475 != Locales[Config.Language].unknown ? _0x49f475.photo : ''
        
        ESX.Phone.currentChat = _0x4f5dd2
        $.post(
          'http://' + ESX.Phone.resourceName + '/readMessages',
          JSON.stringify({ number: ESX.Phone.currentChat.number })
        )
        ESX.Phone.functions.readMessages(ESX.Phone.currentChat)
        $('#currentchatletter').html(_0x38f219.charAt(0).toUpperCase())
        if (_0x5dcd37 != '') {
          $('#currentchatimage').attr('src', _0x5dcd37).show()
        } else {
          $('#currentchatimage').hide()
        }
        $('#currentchatname').html(ESX.Phone.functions.cleanText(_0x38f219))
        $('#currentchatnumber').html(_0x4f5dd2.number)
        $('.messages > .privatechat').addClass('visible')
        $('.messages .privatechat').removeClass('group')
        ESX.Phone.functions.loadMessages(_0x4f5dd2)
      }
    },
  },
  '.messages .chats .chatlist > .chat'
)
ESX.Phone.functions.addDynamicContextMenu(
  '.messages .chats .chatlist > .chat',
  false,
  function (_0xfde98b) {
    let _0x8ca61 = $(_0xfde98b).data('id'),
      _0x51bfc4 = ESX.Phone.chats.find((_0x4f9b25) => _0x4f9b25.id == _0x8ca61)
    ESX.Phone.functions.addButtonToContext(
      'far fa-trash-alt',
      Locales[Config.Language].delete,
      'red',
      function () {
        if (ESX.Phone.currentChat.id == _0x51bfc4.id) {
          $('.messages .privatechat').removeClass('visible')
        }
        $(_0xfde98b).css({
          height: '0vw',
          opacity: '0.0',
        })
        const _0x113694 = { id: _0x51bfc4.id }
        $.post(
          'http://' + ESX.Phone.resourceName + '/deleteChat',
          JSON.stringify(_0x113694)
        )
        ESX.Phone.chats.splice(
          ESX.Phone.chats.findIndex(
            (_0x1e7c0a) => _0x1e7c0a.id == _0x51bfc4.id
          ),
          1
        )
      }
    )
    ESX.Phone.functions.addButtonToContext(
      'fas fa-user-plus',
      Locales[Config.Language].addcontact,
      false,
      function () {
        if (
          ESX.Phone.functions.getContact(_0x51bfc4.number) ==
          Locales[Config.Language].unknown
        ) {
          $('.newcontact').detach().appendTo('.messages')
          setTimeout(() => {
            $('.newcontact').addClass('visible')
          }, 5)
          let _0x3ac995 = document.forms.newcontact
          _0x3ac995.elements.name.value = _0x51bfc4.name
          _0x3ac995.elements.number.value = _0x51bfc4.number
        } else {
          ESX.Phone.functions.sendNotification(
            Config.Applications[ESX.Phone.currentApp].notifications.icon,
            Config.Applications[ESX.Phone.currentApp].notifications.color,
            Config.Applications[ESX.Phone.currentApp].label,
            '<strong>' +
            Locales[Config.Language].notifications.error +
            '</strong><br>' +
            Locales[Config.Language].notifications.contactalreadyexists,
            Config.Notifications.Error.length
          )
        }
      }
    )
    ESX.Phone.functions.addButtonToContext(
      _0x51bfc4.muted ? 'fas fa-bell' : 'fas fa-bell-slash',
      _0x51bfc4.muted
        ? Locales[Config.Language].unmutechat
        : Locales[Config.Language].mutechat,
      false,
      function () {
        _0x51bfc4.muted = !_0x51bfc4.muted
        const _0x241ff7 = {
          id: _0x51bfc4.id,
          muted: _0x51bfc4.muted,
        }
        $.post(
          'http://' + ESX.Phone.resourceName + '/muteChat',
          JSON.stringify(_0x241ff7)
        )
        ESX.Phone.functions.setupChats(ESX.Phone.chats)
      }
    )
    _0x51bfc4.unread > 0 &&
      !_0x51bfc4.muted &&
      ESX.Phone.functions.addButtonToContext(
        'fas fa-eye',
        Locales[Config.Language].markasread,
        false,
        function () {
          const _0x237941 = { number: _0x51bfc4.number }
          $.post(
            'http://' + ESX.Phone.resourceName + '/readMessages',
            JSON.stringify(_0x237941)
          )
          ESX.Phone.functions.readMessages(_0x51bfc4)
        }
      )
  }
)
ESX.Phone.functions.addDynamicButton(
  '.messages .chats .chatlist > .chat > .delete',
  function (_0x7653b0) {
    let _0x119bbe = $(_0x7653b0).parent().data('id')
    setTimeout(() => {
      $(_0x7653b0).addClass('faster').css('width', '100%')
      $(_0x7653b0).parent().css('height', '0%')
    }, 0)
    const _0x35661c = { id: _0x119bbe }
    $.post(
      'http://' + ESX.Phone.resourceName + '/deleteChat',
      JSON.stringify(_0x35661c)
    )
    ESX.Phone.chats.splice(
      ESX.Phone.chats.findIndex((_0x3766e0) => _0x3766e0.id == _0x119bbe),
      1
    )
  }
)
ESX.Phone.functions.addDeleteSlider(
  '.messages .chats .chatlist > .chat',
  function (_0x35cdaa) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/deleteChat',
      JSON.stringify({ id: $(_0x35cdaa).data('id') })
    )
    ESX.Phone.chats.splice(
      ESX.Phone.chats.findIndex(
        (_0x530e87) => _0x530e87.id == $(_0x35cdaa).data('id')
      ),
      1
    )
  }
)
ESX.Phone.functions.openChat = function (_0xc07ec2) {
  if (ESX.Phone.currentApp != 'Messages') {
    ESX.Phone.functions.closeApp(ESX.Phone.currentApp, 'Messages')
  }
  let _0x54f115 = ESX.Phone.functions.getContact(_0xc07ec2.number),
    _0x469fcc =
      _0x54f115 != Locales[Config.Language].unknown ? _0x54f115.photo : '',
    _0x46bc9f =
      _0x54f115 != Locales[Config.Language].unknown
        ? _0x54f115.name
        : _0xc07ec2.name
  ESX.Phone.currentChat = _0xc07ec2
  const _0xc71684 = { number: _0xc07ec2.number }
  $.post(
    'http://' + ESX.Phone.resourceName + '/readMessages',
    JSON.stringify(_0xc71684)
  )
  ESX.Phone.functions.readMessages(ESX.Phone.currentChat)
  $('#currentchatletter').html(_0x46bc9f.charAt(0).toUpperCase())
  if (_0x469fcc != '') {
    $('#currentchatimage').attr('src', _0x469fcc).show()
  } else {
    $('#currentchatimage').hide()
  }
  $('#currentchatname').html(ESX.Phone.functions.cleanText(_0x46bc9f))
  if (!_0xc07ec2.members) {
    $('#currentchatnumber').html(_0xc07ec2.number)
  } else {
    let _0x3cae4b = JSON.parse(_0xc07ec2.members).length
    $('#currentchatnumber').html(
      _0x3cae4b +
      ' ' +
      (_0x3cae4b < 2
        ? Locales[Config.Language].person
        : Locales[Config.Language].people)
    )
  }
  $('.messages > .privatechat').addClass('visible')
  if (_0xc07ec2.members) {
    $('.messages .privatechat').addClass('group')
  } else {
    $('.messages .privatechat').removeClass('group')
  }
  if (_0xc07ec2.owned) {
    $('.messages .privatechat').addClass('owned')
  } else {
    $('.messages .privatechat').removeClass('owned')
  }
  ESX.Phone.functions.loadMessages(_0xc07ec2)
}
ESX.Phone.functions.loadMessages = function (_0x37fd13) {
  $('.messages > .privatechat > .chatmessages').html('')
  _0x37fd13.messages.length &&
    _0x37fd13.messages.forEach((_0xecf165, _0x5a7631) => {
      let _0x329a56 = ESX.Phone.functions.replaceLocations(
        !Config.EnableHTMLMessages
          ? ESX.Phone.functions.cleanText(_0xecf165.message)
          : _0xecf165.message
      ),
        _0x30c543 = JSON.parse(_0xecf165.attachments),
        _0x412458 = ''
      _0x30c543.forEach((_0x43eb92) => {
        _0x412458 += '<img src="' + _0x43eb92.image + '">'
      })
      if (_0x37fd13.members) {
        let _0x1eb5ab = ESX.Phone.functions.getContact(_0xecf165.from),
          _0x436181 =
            _0x1eb5ab != Locales[Config.Language].unknown
              ? _0x1eb5ab.name
              : _0xecf165.from,
          _0x4fe663 = _0x436181.charAt(0).toUpperCase(),
          _0x14075d =
            _0x1eb5ab != Locales[Config.Language].unknown
              ? _0x1eb5ab.photo
              : '',
          _0x2067af =
            _0xecf165.from != ESX.Phone.number && _0x14075d != ''
              ? '<img class="avatar" src="' + _0x14075d + '">'
              : _0xecf165.from != ESX.Phone.number
                ? _0x1eb5ab != Locales[Config.Language].unknown
                  ? '<div class="avatar">' + _0x4fe663 + '</div>'
                  : '<img class="avatar" src="' + Config.DefaultImageSrc + '">'
                : ''
        $('.messages > .privatechat > .chatmessages').append(
          '<div class="' +
          (_0xecf165.from == ESX.Phone.number ? 'me' : 'other') +
          '" data-job="' +
          (_0xecf165.job ? _0xecf165.job : false) +
          '" data-time="' +
          _0xecf165.time +
          '">\n                    ' +
          (_0xecf165.from != ESX.Phone.number
            ? _0x2067af + '<div class="right">'
            : '') +
          '\n                        <p class="time">' +
          (_0xecf165.from == ESX.Phone.number
            ? ESX.Phone.functions.formatDate(_0xecf165.time)
            : '<span class="nickname">' +
            ESX.Phone.functions.cleanText(_0x436181) +
            '</span> ' +
            ESX.Phone.functions.formatDate(_0xecf165.time)) +
          '</p>\n                        <div class="box">\n                            ' +
          _0x412458 +
          '\n                            ' +
          _0x329a56 +
          '\n                        </div>\n                    ' +
          (_0xecf165.from != ESX.Phone.number ? '</div>' : '') +
          '\n                </div>'
        )
      } else {
        $('.messages > .privatechat > .chatmessages').append(
          '<div class="' +
          (_0xecf165.from == ESX.Phone.number ? 'me' : 'other') +
          '" data-job="' +
          (_0xecf165.job ? _0xecf165.job : false) +
          '" data-time="' +
          _0xecf165.time +
          '">\n                    <p class="time">' +
          ESX.Phone.functions.formatDate(_0xecf165.time) +
          '</p>\n                    <div class="box">\n                        ' +
          _0x412458 +
          '\n                        ' +
          _0x329a56 +
          '\n                    </div>\n                </div>'
        )
      }
      if (_0x5a7631 == _0x37fd13.messages.length - 1) {
        $('.messages > .privatechat > .chatmessages').scrollTop(
          document.getElementById('messages').scrollHeight
        )
      }
    })
}
ESX.Phone.functions.addDynamicContextMenu(
  '.messages > .privatechat > .chatmessages > .me > .box',
  false,
  function (_0xf13285) {
    ESX.Phone.functions.addButtonToContext(
      'far fa-trash-alt',
      Locales[Config.Language].delete,
      'red',
      function () {
        let _0x18587d = $(_0xf13285).parent().data('time')
        $(_0xf13285).parent().remove()
        $.post(
          'http://' + ESX.Phone.resourceName + '/deleteMessage',
          JSON.stringify({
            time: _0x18587d,
            number: ESX.Phone.currentChat.number,
          })
        )
      }
    )
  }
)
ESX.Phone.functions.addDynamicContextMenu(
  '.messages > .privatechat > .chatmessages > .other[data-job="true"] > .box',
  false,
  function (_0x203913) {
    ESX.Phone.functions.addButtonToContext(
      'fas fa-reply',
      Locales[Config.Language].reply,
      false,
      function () {
        let _0x1f4c05 = $(_0x203913)
          .text()
          .substring(0, $(_0x203913).text().indexOf(':'))
          .trim()
        let _0x5a52e0 = ESX.Phone.functions.getContact(_0x1f4c05)
        if (_0x5a52e0 != Locales[Config.Language].unknown) {
          let _0x2cd7ad = ESX.Phone.chats.find(
            (_0x4f5720) => _0x4f5720.number == _0x1f4c05
          )
          if (_0x2cd7ad) {
            ESX.Phone.functions.openChat(_0x2cd7ad)
          } else {
            ESX.Phone.functions.newChat(_0x5a52e0.name, _0x1f4c05)
          }
        } else {
          let _0x538337 = ESX.Phone.chats.find(
            (_0x10f5a5) => _0x10f5a5.number == _0x1f4c05
          )
          if (_0x538337) {
            ESX.Phone.functions.openChat(_0x538337)
          } else {
            ESX.Phone.functions.newChat(
              Locales[Config.Language].unknown,
              _0x1f4c05
            )
          }
        }
      }
    )
  }
)
ESX.Phone.functions.newChat = function (_0x481433, _0xc6cce1) {
  ESX.Phone.chats.push({
    owner: ESX.Phone.identifier,
    number: _0xc6cce1,
    name: Locales[Config.Language].unknown,
    messages: [],
    unread: 1,
    muted: 0,
    lastOpened: 0,
  })
  let _0x42d08e = ESX.Phone.chats.length - 1
  ESX.Phone.currentChat = ESX.Phone.chats[_0x42d08e]
  ESX.Phone.functions.openChat(ESX.Phone.chats[_0x42d08e])
  const _0x212963 = {
    name: _0x481433,
    number: _0xc6cce1,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/createChat',
    JSON.stringify(_0x212963),
    function (_0x126f42) {
      if (ESX.Phone.currentChat.number == _0xc6cce1) {
        ESX.Phone.currentChat.id = _0x126f42
      }
      ESX.Phone.chats[_0x42d08e].id = _0x126f42
      ESX.Phone.functions.setupChats(ESX.Phone.chats)
    }
  )
}
ESX.Phone.functions.addButton('.newmessage', function () {
  $('.newchat').detach().appendTo('.messages')
  setTimeout(() => {
    $('.newchat').addClass('visible')
  }, 5)
})
ESX.Phone.functions.addMessage = async function (
  _0x4a9adc,
  _0x1c6ab3,
  _0x57a4fd,
  _0x23ff1c
) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0x185263 = ESX.Phone.functions.replaceLocations(
    !Config.EnableHTMLMessages
      ? ESX.Phone.functions.cleanText(_0x1c6ab3)
      : _0x1c6ab3
  ),
    _0x2fe79d = ESX.Phone.functions.getChat(_0x4a9adc),
    _0x3f3121 =
      ESX.Phone.functions.getContact(_0x4a9adc) !=
        Locales[Config.Language].unknown
        ? ESX.Phone.functions.getContact(_0x4a9adc).name
        : _0x2fe79d != -1
          ? ESX.Phone.chats[_0x2fe79d].name
          : Locales[Config.Language].unknown
  if (ESX.Phone.currentChat.number == _0x4a9adc) {
    let _0x3dbaee = JSON.parse(_0x57a4fd),
      _0x2fbb72 = ''
    _0x3dbaee.forEach((_0x5cb19a) => {
      _0x2fbb72 += '<img src="' + _0x5cb19a.image + '">'
    })
    $('.messages > .privatechat > .chatmessages').append(
      '<div class="other" data-job="' +
      (_0x23ff1c ? _0x23ff1c : false) +
      '">\n            <p class="time">' +
      ESX.Phone.functions.formatDate(new Date()) +
      '</p>\n            <div class="box">\n                ' +
      _0x2fbb72 +
      '\n                ' +
      _0x185263 +
      '\n            </div>\n        </div>'
    )
    $('.messages > .privatechat > .chatmessages').scrollTop(
      document.getElementById('messages').scrollHeight
    )
    $.post(
      'http://' + ESX.Phone.resourceName + '/readMessages',
      JSON.stringify({ number: ESX.Phone.currentChat.number })
    )
    ESX.Phone.functions.readMessages(ESX.Phone.currentChat)
    ESX.Phone.currentChat.messages.push({
      from: _0x4a9adc,
      to: ESX.Phone.number,
      message: _0x1c6ab3,
      attachments: _0x57a4fd,
      time: Date.now(),
      job: _0x23ff1c,
    })
  } else {
    if (_0x2fe79d != -1) {
      ESX.Phone.chats[_0x2fe79d].messages.push({
        from: _0x4a9adc,
        to: ESX.Phone.number,
        message: _0x1c6ab3,
        attachments: _0x57a4fd,
        time: Date.now(),
        job: _0x23ff1c,
      })
      ESX.Phone.chats[_0x2fe79d].unread++
    } else {
      if (_0x2fe79d == -1) {
        const _0x20b7b1 = {
          name: Locales[Config.Language].unknown,
          number: _0x4a9adc,
        }
        $.post(
          'http://' + ESX.Phone.resourceName + '/createChat',
          JSON.stringify(_0x20b7b1),
          function (_0x653c92) {
            let _0x35da6e = [
              {
                from: _0x4a9adc,
                to: ESX.Phone.number,
                message: _0x1c6ab3,
                attachments: _0x57a4fd,
                time: Date.now(),
                job: _0x23ff1c,
              },
            ]
            ESX.Phone.chats.push({
              id: _0x653c92,
              owner: ESX.Phone.identifier,
              number: _0x4a9adc,
              name: Locales[Config.Language].unknown,
              messages: _0x35da6e,
              unread: 1,
              muted: 0,
              lastOpened: 0,
            })
            ESX.Phone.functions.setupChats(ESX.Phone.chats)
          }
        )
      }
    }
  }
  ; ((_0x2fe79d != -1 && !ESX.Phone.chats[_0x2fe79d].muted) ||
    _0x2fe79d == -1) &&
    (Config.Applications.Messages.notifCount++,
      ESX.Phone.functions.updateApp('Messages', 'notifications'))
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp('Messages')) {
    if (ESX.Phone.currentApp == 'Messages') {
      ESX.Phone.functions.setupChats(ESX.Phone.chats)
    }
    if (
      (_0x2fe79d != -1 && !ESX.Phone.chats[_0x2fe79d].muted) ||
      _0x2fe79d == -1
    ) {
      if (ESX.Phone.open && ESX.Phone.currentChat.number != _0x4a9adc) {
        const _0x3cedc8 = {
          app: 'Messages',
          number: _0x4a9adc,
        }
        ESX.Phone.functions.sendNotification(
          Config.Applications.Messages.notifications.icon,
          Config.Applications.Messages.notifications.color,
          Config.Applications.Messages.label,
          '<strong>' +
          (!Config.EnableHTMLMessages
            ? ESX.Phone.functions.cleanText(_0x3f3121)
            : _0x3f3121) +
          ':</strong><br>' +
          _0x185263,
          Config.Notifications.NewMessage.length,
          JSON.stringify(_0x3cedc8)
        )
        ESX.Phone.functions.playSound(Config.Sounds.NewMessage)
      } else {
        if (!ESX.Phone.open) {
          const _0x423ab2 = {
            app: 'Messages',
            number: _0x4a9adc,
          }
          ESX.Phone.functions.sendOffNotification(
            Config.Applications.Messages.notifications.icon,
            Config.Applications.Messages.notifications.color,
            Config.Applications.Messages.label,
            '<strong>' +
            (!Config.EnableHTMLMessages
              ? ESX.Phone.functions.cleanText(_0x3f3121)
              : _0x3f3121) +
            ':</strong><br>' +
            _0x185263,
            Config.Notifications.NewMessage.length,
            JSON.stringify(_0x423ab2)
          )
          ESX.Phone.functions.playSound(Config.Sounds.NewMessage)
        }
      }
    }
  }
}
ESX.Phone.functions.addGroupMessage = async function (
  _0x3be9e6,
  _0x497f1e,
  _0x8f45ab,
  _0x39d38f
) {
  if (ESX.Phone.settings.airplane.value) {
    return
  }
  let _0x5782b2 = ESX.Phone.functions.replaceLocations(
    !Config.EnableHTMLMessages
      ? ESX.Phone.functions.cleanText(_0x8f45ab)
      : _0x8f45ab
  ),
    _0x4b2c78 = ESX.Phone.functions.getGroup(_0x3be9e6)
  if (_0x4b2c78 == -1) {
    return
  }
  let _0x232602 = ESX.Phone.functions.getContact(_0x497f1e),
    _0x4c4639 =
      _0x232602 != Locales[Config.Language].unknown ? _0x232602.name : _0x497f1e
  if (ESX.Phone.currentChat.id == _0x3be9e6 && ESX.Phone.currentChat.members) {
    let _0x12ba7f = JSON.parse(_0x39d38f),
      _0x49b9ce = ''
    _0x12ba7f.forEach((_0x53bb8c) => {
      _0x49b9ce += '<img src="' + _0x53bb8c.image + '">'
    })
    let _0x47d3eb = _0x4c4639.charAt(0).toUpperCase(),
      _0x54cbc4 =
        _0x232602 != Locales[Config.Language].unknown ? _0x232602.photo : '',
      _0x2c5f97 =
        _0x54cbc4 != ''
          ? '<img class="avatar" src="' + _0x54cbc4 + '">'
          : _0x232602 != Locales[Config.Language].unknown
            ? '<div class="avatar">' + _0x47d3eb + '</div>'
            : '<img class="avatar" src="' + Config.DefaultImageSrc + '">'
    $('.messages > .privatechat > .chatmessages').append(
      '<div class="other">\n            ' +
      (_0x2c5f97 + '<div class="right">') +
      '\n                <p class="time">' +
      (_0x497f1e == ESX.Phone.number
        ? ESX.Phone.functions.formatDate(Date.now())
        : '<span class="nickname">' +
        ESX.Phone.functions.cleanText(_0x4c4639) +
        '</span> ' +
        ESX.Phone.functions.formatDate(Date.now())) +
      '</p>\n                <div class="box">\n                    ' +
      _0x49b9ce +
      '\n                    ' +
      _0x5782b2 +
      '\n                </div>\n            </div>\n        </div>'
    )
    $('.messages > .privatechat > .chatmessages').scrollTop(
      document.getElementById('messages').scrollHeight
    )
    $.post(
      'http://' + ESX.Phone.resourceName + '/readGroupMessages',
      JSON.stringify({
        id: _0x3be9e6,
        time: Date.now(),
      })
    )
    ESX.Phone.functions.readMessages(ESX.Phone.currentChat)
    ESX.Phone.currentChat.messages.push({
      from: _0x497f1e,
      to: 'GROUP-' + _0x3be9e6,
      message: _0x8f45ab,
      attachments: _0x39d38f,
      time: Date.now(),
    })
  } else {
    ESX.Phone.groups[_0x4b2c78].messages.push({
      from: _0x497f1e,
      to: 'GROUP-' + _0x3be9e6,
      message: _0x8f45ab,
      attachments: _0x39d38f,
      time: Date.now(),
    })
    ESX.Phone.groups[_0x4b2c78].unread++
  }
  if (!ESX.Phone.groups[_0x4b2c78].muted) {
    Config.Applications.Messages.notifCount++
    ESX.Phone.functions.updateApp('Messages', 'notifications')
  }
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone && ESX.Phone.functions.hasApp('Messages')) {
    if (ESX.Phone.currentApp == 'Messages') {
      ESX.Phone.functions.setupGroups(ESX.Phone.groups)
    }
    if (!ESX.Phone.groups[_0x4b2c78].muted) {
      if (ESX.Phone.open && ESX.Phone.currentChat.id != _0x3be9e6) {
        ESX.Phone.functions.sendNotification(
          Config.Applications.Messages.notifications.icon,
          Config.Applications.Messages.notifications.color,
          Config.Applications.Messages.label,
          Locales[Config.Language].new_group_message.formatText(
            ESX.Phone.functions.cleanText(_0x4c4639),
            ESX.Phone.groups[_0x4b2c78].name,
            _0x5782b2
          ),
          Config.Notifications.NewMessage.length,
          JSON.stringify({
            app: 'Messages',
            number: 'GROUP-' + _0x3be9e6,
          })
        )
        ESX.Phone.functions.playSound(Config.Sounds.NewMessage)
      } else {
        !ESX.Phone.open &&
          (ESX.Phone.functions.sendOffNotification(
            Config.Applications.Messages.notifications.icon,
            Config.Applications.Messages.notifications.color,
            Config.Applications.Messages.label,
            Locales[Config.Language].new_group_message.formatText(
              ESX.Phone.functions.cleanText(_0x4c4639),
              ESX.Phone.groups[_0x4b2c78].name,
              _0x5782b2
            ),
            Config.Notifications.NewMessage.length,
            JSON.stringify({
              app: 'Messages',
              number: 'GROUP-' + _0x3be9e6,
            })
          ),
            ESX.Phone.functions.playSound(Config.Sounds.NewMessage))
      }
    }
  }
}
ESX.Phone.functions.readMessages = function (_0x531826) {
  Config.Applications.Messages.notifCount -= _0x531826.unread
  ESX.Phone.functions.updateApp('Messages', 'notifications')
  _0x531826.unread = 0
  _0x531826.messages.length &&
    _0x531826.messages.forEach((_0x2f27ce, _0x4d84ba) => {
      if (_0x4d84ba == _0x531826.messages.length - 1) {
        if (_0x531826.members) {
          ESX.Phone.functions.setupGroups(ESX.Phone.groups)
        } else {
          ESX.Phone.functions.setupChats(ESX.Phone.chats)
        }
      }
    })
}
ESX.Phone.functions.addDynamicButton('#closenewchat', function () {
  let _0x19f4d1 = document.forms.newmessage
  _0x19f4d1.elements.name.value = ''
  _0x19f4d1.elements.number.value = ''
  _0x19f4d1.elements.content.value = ''
  $('.newchat').removeClass('visible')
})
ESX.Phone.functions.addButton('#searchname', function () {
  $('.namesearch').html('')
  let _0x4bdf9c = document.forms.newmessage
  ESX.Phone.contacts.forEach((_0x1e8352, _0x41cb68) => {
    _0x1e8352.name.toString()
      .toLowerCase()
      .indexOf(_0x4bdf9c.elements.name.value.toString().toLowerCase()) > -1 &&
      $('.namesearch').append(
        '<div class="result" data-id="' +
        _0x41cb68 +
        '">' +
        _0x1e8352.name +
        '</div>'
      )
    if (_0x41cb68 == ESX.Phone.contacts.length - 1) {
      $('.namesearch').show()
      ESX.Phone.functions.setupContactResults()
    }
  })
})
ESX.Phone.functions.addButton('#searchnumber', function () {
  $('.numbersearch').html('')
  let _0x10ccb6 = document.forms.newmessage
  ESX.Phone.contacts.forEach((_0x46f8eb, _0x505855) => {
    _0x46f8eb.number.indexOf(_0x10ccb6.elements.number.value) > -1 &&
      $('.numbersearch').append(
        '<div class="result" data-id="' +
        _0x505855 +
        '">' +
        _0x46f8eb.number +
        '</div>'
      )
    if (_0x505855 == ESX.Phone.contacts.length - 1) {
      $('.numbersearch').show()
      ESX.Phone.functions.setupContactResults()
    }
  })
})
$(document).on('click', function (_0x324cf2) {
  _0x324cf2.target.id != 'searchname' &&
    _0x324cf2.target.id != 'searchnumber' &&
    ($('.namesearch').hide(), $('.numbersearch').hide())
})
ESX.Phone.functions.setupContactResults = function () {
  ESX.Phone.functions.addButton(
    '.newchat .namesearch .result',
    function (_0x1a9c09) {
      let _0x218901 = document.forms.newmessage,
        _0x3f844a = parseInt($(_0x1a9c09).data('id')),
        _0x2da671 = ESX.Phone.contacts[_0x3f844a].name,
        _0x3679db = ESX.Phone.contacts[_0x3f844a].number
      _0x218901.elements.name.value = _0x2da671
      _0x218901.elements.number.value = _0x3679db
      $('.namesearch').html('')
      $('.namesearch').hide()
    }
  )
  ESX.Phone.functions.addButton(
    '.newchat .numbersearch .result',
    function (_0x31c2) {
      let _0x1ee685 = document.forms.newmessage
      let _0x296aae = parseInt($(_0x31c2).data('id')),
        _0x350d57 = ESX.Phone.contacts[_0x296aae].name,
        _0x3a7829 = ESX.Phone.contacts[_0x296aae].number
      _0x1ee685.elements.name.value = _0x350d57
      _0x1ee685.elements.number.value = _0x3a7829
      $('.numbersearch').html('')
      $('.numbersearch').hide()
    }
  )
}
ESX.Phone.functions.updateBank = async function (data) {
  ESX.Phone.bankData = data
  if (ESX.Phone.currentApp != 'Bank') {
    return
  }
  $('#bank-balance').text(
    Config.CurrencyPosition == 2
      ? ESX.Phone.functions.formatNumber(data.balance) +
      ' ' +
      Config.Currency
      : Config.Currency +
      ' ' +
      ESX.Phone.functions.formatNumber(data.balance)
  )
  $('#account-title').text(data.iban)
  $('#account-title').addClass('clickable')

  $("#cryptobalance").text(data.crypto.balance.toFixed(2) + " | $" + (data.crypto.balance*data.crypto.newWorth).toFixed(2))
  $("#new-crypto").text(data.crypto.newWorth.toFixed(2))
  $("#old-crypto").text(data.crypto.oldWorth.toFixed(2))
  

  ESX.Phone.functions.addButton('#account-title', function () {
    ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      Locales[Config.Language].notifications.ibancopied,
      Config.Notifications.Success.length
    )
    ESX.Phone.functions.copyToClipboard(data.iban)
  })
  let _0x5300ba = [
    Locales[Config.Language].yesterday,
    Locales[Config.Language].today,
  ]
  for (i = 2; i < 5; i++) {
    _0x5300ba.unshift(
      ESX.Phone.functions.formatDate4(
        new Date(Date.now() - i * 24 * 60 * 60 * 1000)
      )
    )
  }
  if (chart) {
    chart.data.datasets[0].data = data.statement
    chart.update()
  } else {
    ESX.Phone.functions.drawChart(_0x5300ba, data.statement)
  }
  $('#cardslist').html('')
  $('#choosecard').removeAttr('disabled')
  $('#cardslist').append(
    '<div class="card ' +
    (0 == 0 ? 'selected' : '') +
    '" data-id="' +
    data.id +
    '">\n            <div class="icon">\n                <div class="circle1"></div>\n                <div class="circle2"></div>\n            </div>\n\n            <p class="name">' +
    Locales[Config.Language].cardname +
    '</p>\n            <p class="card-number">' +
    data.number +
    '</p>\n            <p class="holder">' +
    data.holder.toUpperCase() +
    '</p>\n\n            <p class="expires-title">' +
    Locales[Config.Language].cardexpiry +
    '</p>\n            <p class="expires">' +
    data.date +
    '</p>\n        </div>'
  )
}
ESX.Phone.functions.addDynamicButton('#cardslist .card', function (_0x2b05fd) {
  if (ESX.Phone.currentCard != '') {
    $('#card-' + ESX.Phone.currentCard).removeClass('selected')
  }
  ESX.Phone.currentCard = $(_0x2b05fd).data('id')
  $(_0x2b05fd).addClass('selected')
})
ESX.Phone.functions.resetBank = function () {
  ESX.Phone.currentCard = ''
  ESX.Phone.functions.updateBank(ESX.Phone.bankData)
  const _0x144264 = { left: '0%' }
  $('.bank .mainscreen').addClass('no-transition').css(_0x144264)
  const _0x2055eb = {
    right: '-100%',
    top: '0%',
  }
  //$('.bank .mainscreen').addClass('no-transition').css(_0x2055eb)
  $('.bank .transfer, .bank .request')
    .addClass('no-transition')
    .css({ right: '-100%' })
  $('.bank .invoices').addClass('no-transition').css({ bottom: '-100%' })
  setTimeout(() => {
    $(
      '.bank .choose, .bank .mainscreen, .bank .transfer, .bank .invoices, .bank .request'
    ).removeClass('no-transition')
  }, 5)
}
ESX.Phone.functions.addButton('#choosecard', function () {
  $('.bank > .choose').css('left', '-100%')
  $('.bank .mainscreen').css('right', '0%')
})
var chart
ESX.Phone.functions.drawChart = function (_0x5a13b4, _0x1fe4f9) {
  // var _0x315820 = document.getElementById('statement').getContext('2d'),
  //   _0x1527ed = _0x315820.createLinearGradient(800, 0, 200, 0)
  // _0x1527ed.addColorStop(0, '#FFF')
  // _0x1527ed.addColorStop(1, '#4194D0')
  // _0x5a13b4.forEach((_0x390434, _0x2c8e67) => {
  //   if (_0x390434.length > 5) {
  //     _0x5a13b4[_0x2c8e67] = _0x390434.substring(0, 4) + '.'
  //   }
  // })
  // const _0x13ad0a = {
  //   cubicInterpolationMode: 'monotone',
  //   label: '',
  //   data: _0x1fe4f9,
  //   fill: false,
  //   borderColor: _0x1527ed,
  //   tension: 0.4,
  // }
  // const _0x512df3 = {
  //   labels: _0x5a13b4,
  //   datasets: [_0x13ad0a],
  // }
  // const _0x1d069b = { radius: 0 }
  // const _0x12a76f = { point: _0x1d069b }
  // const _0x16ed2d = {
  //   top: 25,
  //   bottom: -20,
  //   left: 120,
  // }
  // const _0x154c24 = { padding: _0x16ed2d }
  // const _0x264420 = { display: false }
  // const _0x10cb67 = { size: 22 }
  // const _0x4a704d = {
  //   color: 'rgba(255, 255, 255, 0.1)',
  //   borderDash: [15, 15],
  //   lineWidth: 2.5,
  // }
  // const _0x478c93 = { size: 26 }
  // const _0x3d9ef = { display: false }
  // const _0x14ce92 = { legend: _0x3d9ef }
  // chart = new Chart(_0x315820, {
  //   type: 'line',
  //   data: _0x512df3,
  //   options: {
  //     responsive: false,
  //     borderWidth: 7,
  //     elements: _0x12a76f,
  //     layout: _0x154c24,
  //     scales: {
  //       x: {
  //         grid: _0x264420,
  //         ticks: {
  //           padding: 40,
  //           color: 'rgba(255, 255, 255, 0.8)',
  //           maxRotation: 0,
  //           minRotation: 0,
  //           font: _0x10cb67,
  //         },
  //       },
  //       y: {
  //         grid: _0x4a704d,
  //         beginAtZero: true,
  //         suggestedMax: 2500,
  //         suggestedMin: 0,
  //         stepSize: 500,
  //         ticks: {
  //           mirror: true,
  //           padding: -105,
  //           color: 'rgba(255, 255, 255, 0.6)',
  //           font: _0x478c93,
  //           callback: function (_0x15316f, _0x8bf50e, _0x19067c) {
  //             return Config.CurrencyPosition == 2
  //               ? ESX.Phone.functions.formatNumber(_0x15316f) +
  //               ' ' +
  //               Config.Currency
  //               : Config.Currency +
  //               ' ' +
  //               ESX.Phone.functions.formatNumber(_0x15316f)
  //           },
  //         },
  //       },
  //     },
  //     plugins: _0x14ce92,
  //   },
  // })
}
ESX.Phone.functions.addButton(
  '.bank .mainscreen .buttons > *',
  function (_0x57aafe) {
    let _0x12ed47 = $(_0x57aafe).data('action')
    if (_0x12ed47 == 'crypto-buy') {
      $('.bank .crypto-buy').css('right', '0%')
      $('.bank .mainscreen').css('right', '100%')
    }

    if (_0x12ed47 == 'crypto-sell') {
      $('.bank .crypto-sell').css('right', '0%')
      $('.bank .mainscreen').css('right', '100%')
    }

    if (_0x12ed47 == 'crypto-transfer') {
      $('.bank .crypto-transfer').css('right', '0%')
      $('.bank .mainscreen').css('right', '100%')
    }

    if (_0x12ed47 == 'transfer') {
      $('.bank .transfer').css('right', '0%')
      $('.bank .mainscreen').css('right', '100%')
    } 
    else {
      if (_0x12ed47 == 'request') {
        $('.bank .request').css('right', '0%')
        $('.bank .mainscreen').css('right', '100%')
      } 
      else {
        _0x12ed47 == 'invoices' &&
          ((Config.Applications.Bank.notifCount = 0),
            ESX.Phone.functions.updateApp('Bank', 'notifications'),
            $('.bank .invoices').css('bottom', '0%'),
            $('.bank .mainscreen').css('top', '-100%'))
      }
    }
  }
)
var inProgress = false
ESX.Phone.functions.addButton('#request', function () {
  if (inProgress) {
    return
  }
  let _0x2e029a = document.forms.request,
    _0x3e7e21 = _0x2e029a.elements.id.value
  let _0x2c7a03 = _0x2e029a.elements.amount.value,
    _0x2cd742 = ESX.Phone.functions.cleanText(_0x2e029a.elements.purpose.value)
  if (_0x3e7e21.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.requestidnotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x2c7a03.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.requestamountnotfilled,
      Config.Notifications.Error.length
    )
  }
  if (Config.BankPurposeRequired && _0x2cd742.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.requestpurposenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (parseInt(_0x2c7a03) < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.amounttoolow,
      Config.Notifications.Error.length
    )
  }
  inProgress = true
  const _0x56feee = {
    id: _0x3e7e21,
    amount: _0x2c7a03,
    purpose: _0x2cd742,
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/requestMoney',
    JSON.stringify(_0x56feee),
    function (_0x285848) {
      inProgress = false
      if (_0x285848 == 'SUCCESS') {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.requestsuccess.formatText(
            _0x2c7a03,
            _0x3e7e21
          ),
          Config.Notifications.Success.length
        )
        _0x2e029a.elements.id.value = ''
        _0x2e029a.elements.amount.value = ''
        _0x2e029a.elements.purpose.value = ''
        $('.bank .request').css('right', '-100%')
        $('.bank .mainscreen').css('right', '0%')
      } else {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x285848,
          Config.Notifications.Error.length
        )
      }
    }
  )
})

ESX.Phone.functions.addRequest = async function (_0x33d46d) {
  let _0x58746b = JSON.parse(_0x33d46d)
  ESX.Phone.moneyRequests.push(_0x58746b)

  let _0x17f333 = $('.bank .invoicelist').html()
  $('.bank .invoicelist').html(
    '<div class="invoice" data-type="request" data-id="' +
    _0x58746b.id +
    '">\n        <div class="icon request">\n            <i class="far fa-hand-holding-usd"></i>\n        </div>\n        <div class="content">\n            <p class="title">' +
    (Config.CurrencyPosition == 2
      ? ESX.Phone.functions.formatNumber(_0x58746b.amount) +
      ' ' +
      Config.Currency
      : Config.Currency +
      ' ' +
      ESX.Phone.functions.formatNumber(_0x58746b.amount)) +
    '</p>\n            <p class="description">' +
    Locales[Config.Language].requestdescription.formatText(
      _0x58746b.senderName,
      _0x58746b.senderId,
      _0x58746b.reason
    ) +
    '</p>\n        </div>\n        <div class="buttons">\n            <div class="button" data-action="pay" style="--background-color: #22B07E;"><i class="far fa-check-circle"></i></div>\n            <div class="button" data-action="decline" style="--background-color: #E25047;"><i class="far fa-times-circle"></i></div>\n        </div>\n    </div>' +
    _0x17f333
  )
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (ESX.Phone.hasPhone) {
    if (ESX.Phone.open && ESX.Phone.currentApp != 'Bank') {
      Config.Applications.Bank.notifCount++
      ESX.Phone.functions.updateApp('Bank', 'notifications')
    } else {
      !ESX.Phone.open &&
        (Config.Applications.Bank.notifCount++,
          ESX.Phone.functions.updateApp('Bank', 'notifications'))
    }
  }
}

ESX.Phone.functions.addDynamicButton('#cancelrequest', function () {
  let _0x1f54aa = document.forms.request
  _0x1f54aa.elements.id.value = ''
  _0x1f54aa.elements.amount.value = ''
  _0x1f54aa.elements.purpose.value = ''
  $('.bank .request').css('right', '-100%')
  $('.bank .mainscreen').css('right', '0%')
})
ESX.Phone.functions.setupInvoices = function (_0x33c847) {
  $('.bank .invoicelist').html('')
  let _0x39730e = JSON.parse(_0x33c847)
  ESX.Phone.moneyRequests.forEach((_0x1d4dd3, _0x3e50c0) => {
    $('.bank .invoicelist').append(
      '<div class="invoice" data-type="request" data-id="' +
      _0x1d4dd3.id +
      '">\n            <div class="icon request">\n                <i class="far fa-hand-holding-usd"></i>\n            </div>\n            <div class="content">\n                <p class="title">' +
      (Config.CurrencyPosition == 2
        ? ESX.Phone.functions.formatNumber(_0x1d4dd3.amount) +
        ' ' +
        Config.Currency
        : Config.Currency +
        ' ' +
        ESX.Phone.functions.formatNumber(_0x1d4dd3.amount)) +
      '</p>\n                <p class="description">' +
      Locales[Config.Language].requestdescription.formatText(
        _0x1d4dd3.senderName,
        _0x1d4dd3.senderId,
        _0x1d4dd3.reason
      ) +
      '</p>\n            </div>\n            <div class="buttons">\n                <div class="button" data-action="pay" style="--background-color: #22B07E;"><i class="far fa-check-circle"></i></div>\n                <div class="button" data-action="decline" style="--background-color: #E25047;"><i class="far fa-times-circle"></i></div>\n            </div>\n        </div>'
    )
  })
  ESX.Phone.invoices = _0x39730e
  _0x39730e.forEach((_0x205b0a, _0x3c2b8b) => {
    $('.bank .invoicelist').append(
      '<div class="invoice" data-type="invoice" data-id="' +
      _0x205b0a.id +
      '">\n            <div class="icon bill">\n                <i class="far fa-file-invoice-dollar"></i>\n            </div>\n            <div class="content">\n                <p class="title">' +
      _0x205b0a.title +
      '</p>\n                <p class="description">' +
      Locales[Config.Language].invoicedescription.formatText(
        ESX.Phone.functions.formatNumber(_0x205b0a.amount)
      ) +
      '</p>\n            </div>\n            <div class="buttons">\n                <div class="button" data-action="pay" style="--background-color: #22B07E;"><i class="far fa-check-circle"></i></div>\n                ' +
      (_0x205b0a.cancellable
        ? '<div class="button" data-action="decline" style="--background-color: #E25047;"><i class="far fa-times-circle"></i></div>'
        : '') +
      '\n            </div>\n        </div>'
    )
  })
}
ESX.Phone.functions.addDynamicButton(
  '.bank .invoicelist > .invoice .buttons > *',
  function (_0x4f96cb) {
    let _0x278ae7 = $(_0x4f96cb).data('action'),
      _0x289bd2 = $(_0x4f96cb).closest('.invoice'),
      _0x34fa20 = _0x289bd2.data('id'),
      _0x48c557 = _0x289bd2.data('type')
    if (_0x278ae7 == 'pay') {
      if (inProgress) {
        return
      }
      if (_0x48c557 == 'request') {
        let _0x55ba3c = ESX.Phone.moneyRequests.findIndex(
          (_0x20557e) => _0x20557e.id == _0x34fa20
        )
        if (ESX.Phone.moneyRequests[_0x55ba3c]) {
          inProgress = true
          const _0xbc9391 = { id: _0x34fa20 }
          $.post(
            'http://' + ESX.Phone.resourceName + '/acceptRequest',
            JSON.stringify(_0xbc9391),
            function (_0x4a08e1) {
              inProgress = false
              _0x4a08e1 == 'SUCCESS'
                ? (ESX.Phone.functions.sendNotification(
                  Config.Applications[ESX.Phone.currentApp].notifications
                    .icon,
                  Config.Applications[ESX.Phone.currentApp].notifications
                    .color,
                  Config.Applications[ESX.Phone.currentApp].label,
                  Locales[
                    Config.Language
                  ].notifications.transfersuccess.formatText(
                    ESX.Phone.moneyRequests[_0x55ba3c].amount,
                    ESX.Phone.moneyRequests[_0x55ba3c].senderId
                  ),
                  Config.Notifications.Success.length
                ),
                  ESX.Phone.moneyRequests.splice(_0x55ba3c, 1),
                  $(_0x289bd2).css({
                    opacity: '0.0',
                    'margin-top': -$(_0x289bd2).get(0).clientHeight + 'px',
                    'margin-bottom': '0vw',
                  }),
                  setTimeout(() => {
                    $(_0x289bd2).remove()
                  }, 500))
                : ESX.Phone.functions.sendNotification(
                  Config.Applications[ESX.Phone.currentApp].notifications
                    .icon,
                  Config.Applications[ESX.Phone.currentApp].notifications
                    .color,
                  Config.Applications[ESX.Phone.currentApp].label,
                  '<strong>' +
                  Locales[Config.Language].notifications.error +
                  '</strong><br>' +
                  _0x4a08e1,
                  Config.Notifications.Error.length
                )
            }
          )
        }
      } else {
        const _0x18fc34 = { id: _0x34fa20 }
        $.post(
          'http://' + ESX.Phone.resourceName + '/payBill',
          JSON.stringify(_0x18fc34),
          function (_0x99c8aa) {
            $.post(
              'http://' + ESX.Phone.resourceName + '/updateBank',
              JSON.stringify({})
            )
          }
        )
      }
    } else {
      if (_0x278ae7 == 'decline') {
        if (_0x48c557 == 'request') {
          let _0x3ad44d = ESX.Phone.moneyRequests.findIndex(
            (_0xc6ebe6) => _0xc6ebe6.id == _0x34fa20
          )
          if (ESX.Phone.moneyRequests[_0x3ad44d]) {
            ESX.Phone.moneyRequests.splice(_0x3ad44d, 1)
            $(_0x289bd2).css({
              opacity: '0.0',
              'margin-top': -$(_0x289bd2).get(0).clientHeight + 'px',
              'margin-bottom': '0vw',
            })
            setTimeout(() => {
              $(_0x289bd2).remove()
            }, 500)
          }
        } else {
          const _0x1d21f3 = { id: _0x34fa20 }
          $.post(
            'http://' + ESX.Phone.resourceName + '/cancelBill',
            JSON.stringify(_0x1d21f3),
            function (_0x17c06e) {
              if (_0x17c06e == 'SUCCESS') {
                $(_0x289bd2).css({
                  opacity: '0.0',
                  'margin-top': -$(_0x289bd2).get(0).clientHeight + 'px',
                  'margin-bottom': '0vw',
                })
                setTimeout(() => {
                  $(_0x289bd2).remove()
                  $.post(
                    'http://' + ESX.Phone.resourceName + '/updateBank',
                    JSON.stringify({})
                  )
                }, 500)
              } else {
                ESX.Phone.functions.sendNotification(
                  Config.Applications[ESX.Phone.currentApp].notifications.icon,
                  Config.Applications[ESX.Phone.currentApp].notifications.color,
                  Config.Applications[ESX.Phone.currentApp].label,
                  '<strong>' +
                  Locales[Config.Language].notifications.error +
                  '</strong><br>' +
                  _0x17c06e,
                  Config.Notifications.Error.length
                )
              }
            }
          )
        }
      }
    }
  }
)
ESX.Phone.functions.addButton('#payallbills', function () {
  ESX.Phone.invoices.forEach((_0xfb0e2) => {
    const _0xaac8ca = { id: _0xfb0e2.id }
    $.post(
      'http://' + ESX.Phone.resourceName + '/payBill',
      JSON.stringify(_0xaac8ca),
      function (_0x5eb52c) {
        $.post(
          'http://' + ESX.Phone.resourceName + '/updateBank',
          JSON.stringify({})
        )
      }
    )
  })
})
ESX.Phone.functions.addButton('#invoicesclose', function () {
  $('.bank .invoices').css('bottom', '-100%')
  $('.bank .mainscreen').css('top', '0%')
})
ESX.Phone.functions.addButton('#transfer', function () {
  if (inProgress) {
    return
  }
  let _0x129cae = document.forms.transfer
  let _0x5106c3 = _0x129cae.elements.id.value,
    _0x202b93 = _0x129cae.elements.amount.value,
    _0x25a41a = ESX.Phone.functions.cleanText(_0x129cae.elements.purpose.value)
  if (_0x5106c3.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.idnotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x202b93.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.amountnotfilled,
      Config.Notifications.Error.length
    )
  }
  if (Config.BankPurposeRequired && _0x25a41a.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.purposenotfilled,
      Config.Notifications.Error.length
    )
  }
  if (parseInt(_0x202b93) < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.amounttoolow,
      Config.Notifications.Error.length
    )
  }
  inProgress = true
  const _0x44e340 = {
    id: _0x5106c3,
    amount: _0x202b93,
    purpose: _0x25a41a,
  }
  
  $.post(
    'http://' + ESX.Phone.resourceName + '/transferMoney',
    JSON.stringify(_0x44e340),
    function (_0x3c3ccc) {
      inProgress = false
      if (_0x3c3ccc == 'SUCCESS') {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.transfersuccess.formatText(
            _0x202b93,
            _0x5106c3
          ),
          Config.Notifications.Success.length
        )
        _0x129cae.elements.id.value = ''
        _0x129cae.elements.amount.value = ''
        _0x129cae.elements.purpose.value = ''
        $('.bank .transfer').css('right', '-100%')
        $('.bank .mainscreen').css('right', '0%')
      } else {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x3c3ccc,
          Config.Notifications.Error.length
        )
      }
    }
  )
})
ESX.Phone.functions.addButton('#canceltransfer', function () {
  let _0x54f9d4 = document.forms.transfer
  _0x54f9d4.elements.id.value = ''
  _0x54f9d4.elements.amount.value = ''
  _0x54f9d4.elements.purpose.value = ''
  $('.bank .transfer').css('right', '-100%')
  $('.bank .mainscreen').css('right', '0%')
})
ESX.Phone.functions.addButton('#canceltrans', function () {
  let _0x54f9d4 = document.forms.cryptoTransfer
  _0x54f9d4.elements.id.value = ''
  _0x54f9d4.elements.amount.value = ''
  $('.bank .crypto-transfer').css('right', '-100%')
  $('.bank .mainscreen').css('right', '0%')
})
ESX.Phone.functions.addButton('#cancelbuy', function () {
  let _0x54f9d4 = document.forms.cryptoBuy
  _0x54f9d4.elements.amount.value = ''
  $('.bank .crypto-buy').css('right', '-100%')
  $('.bank .mainscreen').css('right', '0%')
})
ESX.Phone.functions.addButton('#cancelsell', function () {
  let _0x54f9d4 = document.forms.cryptoSell
  _0x54f9d4.elements.amount.value = ''
  $('.bank .crypto-sell').css('right', '-100%')
  $('.bank .mainscreen').css('right', '0%')
})

ESX.Phone.functions.addButton('#transfer-crypto', function () {
  if (inProgress) {
    return
  }
  let _0x129cae = document.forms.cryptoTransfer
  let _0x5106c3 = _0x129cae.elements.id.value,
    _0x202b93 = _0x129cae.elements.amount.value
  if (_0x5106c3.length < 1) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.idnotfilled,
      Config.Notifications.Error.length
    )
  }
  if (_0x202b93.length <= 0) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.amountnotfilled,
      Config.Notifications.Error.length
    )
  }

  inProgress = true
  const _0x44e340 = {
    id: _0x5106c3,
    amount: _0x202b93
  }
  
  $.post(
    'http://' + ESX.Phone.resourceName + '/transferCrypto',
    JSON.stringify(_0x44e340),
    function (_0x3c3ccc) {
      inProgress = false
      if (_0x3c3ccc == 'SUCCESS') {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.cryptotranssuccess.formatText(
            _0x202b93,
            _0x5106c3
          ),
          Config.Notifications.Success.length
        )
        _0x129cae.elements.id.value = ''
        _0x129cae.elements.amount.value = ''
        $('.bank .crypto-transfer').css('right', '-100%')
        $('.bank .mainscreen').css('right', '0%')
      } else {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x3c3ccc,
          Config.Notifications.Error.length
        )
      }
    }
  )
})

ESX.Phone.functions.addButton('#buy-crypto', function () {
  if (inProgress) {
    return
  }
  let _0x129cae = document.forms.cryptoBuy
  _0x202b93 = _0x129cae.elements.amount.value
  if (_0x202b93.length <= 0) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.amountnotfilled,
      Config.Notifications.Error.length
    )
  }

  inProgress = true
  const _0x44e340 = {
    amount: _0x202b93
  }
  
  $.post(
    'http://' + ESX.Phone.resourceName + '/buyCrypto',
    JSON.stringify(_0x44e340),
    function (_0x3c3ccc) {
      inProgress = false
      if (_0x3c3ccc == 'SUCCESS') {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.buysuccess.formatText(
            _0x202b93
          ),
          Config.Notifications.Success.length
        )
        _0x129cae.elements.amount.value = ''
        $('.bank .crypto-buy').css('right', '-100%')
        $('.bank .mainscreen').css('right', '0%')
      } else {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x3c3ccc,
          Config.Notifications.Error.length
        )
      }
    }
  )
})

ESX.Phone.functions.addButton('#sell-crypto', function () {
  if (inProgress) {
    return
  }
  let _0x129cae = document.forms.cryptoSell
  _0x202b93 = _0x129cae.elements.amount.value
  if (_0x202b93.length <= 0) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.amountnotfilled,
      Config.Notifications.Error.length
    )
  }

  inProgress = true
  const _0x44e340 = {
    amount: _0x202b93
  }

  $.post(
    'http://' + ESX.Phone.resourceName + '/sellCrypto',
    JSON.stringify(_0x44e340),
    function (_0x3c3ccc) {
      inProgress = false
      if (_0x3c3ccc == 'SUCCESS') {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          Locales[Config.Language].notifications.sellsuccess.formatText(
            _0x202b93
          ),
          Config.Notifications.Success.length
        )
        _0x129cae.elements.amount.value = ''
        $('.bank .crypto-sell').css('right', '-100%')
        $('.bank .mainscreen').css('right', '0%')
      } else {
        ESX.Phone.functions.sendNotification(
          Config.Applications[ESX.Phone.currentApp].notifications.icon,
          Config.Applications[ESX.Phone.currentApp].notifications.color,
          Config.Applications[ESX.Phone.currentApp].label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x3c3ccc,
          Config.Notifications.Error.length
        )
      }
    }
  )
})

const phonesb = new ScrollBooster({
  viewport: document.querySelector('.phone > .calls > .callslist'),
  content: document.querySelector('.phone > .calls > .callslist'),
  scrollMode: 'native',
  direction: 'vertical',
})
ESX.Phone.functions.resetPhone = function () {
  let _0x5d6386 = $('.phone > .dial').css('transition')
  $('.phone > .dial').addClass('no-transition').removeClass('visible')
  $('.newchat, .newcontact').addClass('no-transition').removeClass('visible')
  setTimeout(() => {
    $('.phone > .dial, .newchat, .newcontact').removeClass('no-transition')
  }, 5)
  setTimeout(() => {
    ESX.Phone.functions.updateCalls(ESX.Phone.calls, true)
  }, 0)
  Config.Applications.Phone.notifCount = 0
  ESX.Phone.functions.updateApp('Phone', 'notifications')
}
ESX.Phone.functions.addButton('.newcall', function () {
  $('.phone > .dial').addClass('visible')
  $('#input-number').html('')
})
ESX.Phone.functions.addButton('#closedialing', function () {
  $('.phone > .dial').removeClass('visible')
})
ESX.Phone.functions.addButton('.newcall', function () {
  $('.phone > .dial').addClass('visible')
})
ESX.Phone.functions.addButton('#message-number', function () {
  let _0x1b002e = $('#input-number').val()
  if (_0x1b002e == ESX.Phone.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotsendtoyourself,
      Config.Notifications.Error.length
    )
  }
  if (_0x1b002e.length > 0) {
    let _0x3184f4 = ESX.Phone.functions.getContact(_0x1b002e)
    if (_0x3184f4 != Locales[Config.Language].unknown) {
      let _0x4d9f86 = ESX.Phone.chats.find(
        (_0x123537) => _0x123537.number == _0x1b002e
      )
      if (_0x4d9f86) {
        ESX.Phone.functions.openChat(_0x4d9f86)
      } else {
        ESX.Phone.functions.newChat(_0x3184f4.name, _0x1b002e)
      }
    } else {
      let _0xb0cac9 = ESX.Phone.chats.find(
        (_0x14ca4e) => _0x14ca4e.number == _0x1b002e
      )
      if (_0xb0cac9) {
        ESX.Phone.functions.openChat(_0xb0cac9)
      } else {
        let _0x4b1f67 = document.forms.newmessage
        _0x4b1f67.elements.name.value = ''
        _0x4b1f67.elements.number.value = _0x1b002e
        _0x4b1f67.elements.content.value = ''
        $('.newchat').detach().appendTo('.phone')
        setTimeout(() => {
          $('.newchat').addClass('visible')
        }, 5)
      }
    }
  } else {
    ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
  }
})
ESX.Phone.functions.addButton('#create-contact', function () {
  let _0x29cb24 = document.forms.newcontact,
    _0x1e92a6 = $('#input-number').val()
  
  if (_0x1e92a6 == ESX.Phone.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotcreatecontactyourself,
      Config.Notifications.Error.length
    )
  }
  
  if (_0x1e92a6.length > 0) {
    _0x29cb24.elements.name.value = ''
    _0x29cb24.elements.number.value = _0x1e92a6
    _0x29cb24.elements.tag.value = ''
    $('.newcontact').detach().appendTo('.phone')
    setTimeout(() => {
      $('.newcontact').addClass('visible')
    }, 5)
  } else {
    ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
  }
})
function callFunction(_0x180b10) {
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications.Phone.notifications.icon,
      Config.Applications.Phone.notifications.color,
      Config.Applications.Phone.label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantcall,
      Config.Notifications.Error.length
    )
  }
  if (_0x180b10 == ESX.Phone.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications.Phone.notifications.icon,
      Config.Applications.Phone.notifications.color,
      Config.Applications.Phone.label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotcallyourself,
      Config.Notifications.Error.length
    )
  }
  let _0x1fff13 = ESX.Phone.functions.getContact(_0x180b10)
  if (_0x1fff13 != Locales[Config.Language].unknown) {
    if (_0x1fff13.preAdded && !_0x1fff13.callable) {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.cannotcallnumber,
        Config.Notifications.Error.length
      )
    }
  }
  $.post(
    'http://' + ESX.Phone.resourceName + '/call',
    JSON.stringify({
      number: _0x180b10,
      anonymous: ESX.Phone.settings.anonymous
        ? ESX.Phone.settings.anonymous.value
        : false,
    }),
    function (_0x2d37af) {
      _0x2d37af == 'SUCCESS'
        ? (ESX.Phone.functions.setupCall('calling', _0x180b10),
          $('#callscreen .status').html(Locales[Config.Language].calling))
        : ESX.Phone.functions.sendNotification(
          Config.Applications.Phone.notifications.icon,
          Config.Applications.Phone.notifications.color,
          Config.Applications.Phone.label,
          '<strong>' +
          Locales[Config.Language].notifications.error +
          '</strong><br>' +
          _0x2d37af,
          Config.Notifications.Error.length
        )
    }
  )
}
ESX.Phone.functions.addButton('#call-contact', function () {
  if (ESX.Phone.currentContact.preAdded && !ESX.Phone.currentContact.callable) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotcallcontact,
      Config.Notifications.Error.length
    )
  }
  callFunction(ESX.Phone.currentContact.number)
})
ESX.Phone.functions.addButton('#call-number', function () {
  if ($('#input-number').val().length > 0) {
    callFunction($('#input-number').val())
  } else {
    ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
  }
})
ESX.Phone.functions.addButton('#sendgps-number', function () {
  if (gpsCooldown) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.locationcooldown,
      Config.Notifications.Error.length
    )
  }
  if (ESX.Phone.settings.airplane.value) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.airplanecantlocation,
      Config.Notifications.Error.length
    )
  }
  let _0x41f755 = $('#input-number').val()
  if (_0x41f755 == ESX.Phone.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cannotsendlocationtoyourself,
      Config.Notifications.Error.length
    )
  }
  $('#input-number').val().length > 0
    ? ((gpsCooldown = setTimeout(() => {
      gpsCooldown = undefined
    }, Config.LocationCooldown)),
      $.post(
        'http://' + ESX.Phone.resourceName + '/getCoords',
        JSON.stringify({}),
        function (_0x4e17d6) {
          let _0x35df17 = JSON.parse(_0x4e17d6),
            _0x2cefba =
              '(GPS:' +
              _0x35df17.x.toFixed(3) +
              ',' +
              _0x35df17.y.toFixed(3) +
              ')'
          if (ESX.Phone.functions.getChat(_0x41f755) != -1) {
            ESX.Phone.chats[
              ESX.Phone.functions.getChat(_0x41f755)
            ].messages.push({
              from: ESX.Phone.number,
              to: _0x41f755,
              message: _0x2cefba,
              attachments: '[]',
              time: Date.now(),
            })
          }
          $.post(
            'http://' + ESX.Phone.resourceName + '/sendMessage',
            JSON.stringify({
              number: _0x41f755,
              content: _0x2cefba,
              attachments: JSON.stringify([]),
              time: Date.now(),
            })
          )
          ESX.Phone.functions.sendNotification(
            Config.Applications[ESX.Phone.currentApp].notifications.icon,
            Config.Applications[ESX.Phone.currentApp].notifications.color,
            Config.Applications[ESX.Phone.currentApp].label,
            Locales[Config.Language].notifications.locationsent,
            Config.Notifications.Success.length
          )
        }
      ))
    : ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.numbernotfilled,
      Config.Notifications.Error.length
    )
})
var callInterval, callTimeout
ESX.Phone.functions.updateCallStatus = function (_0x219592) {
  ESX.Phone.functions.setupCall(_0x219592, ESX.Phone.currentCall.number)
}
ESX.Phone.functions.addButton('#endcall', function () {
  ESX.Phone.functions.endCall(ESX.Phone.currentCall.number)
  $.post('http://' + ESX.Phone.resourceName + '/endCall', JSON.stringify({}))
})
ESX.Phone.functions.addButton('#call-message', function () {
  if (ESX.Phone.currentCall.anonymous) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.cantmessageprivatenumber,
      Config.Notifications.Error.length
    )
  }
  let _0x301527 = ESX.Phone.chats.find(
    (_0x3fb82e) => _0x3fb82e.number == ESX.Phone.currentCall.number
  )
  if (_0x301527) {
    ESX.Phone.functions.openChat(_0x301527)
  } else {
    ESX.Phone.functions.newChat(
      Locales[Config.Language].unknown,
      ESX.Phone.currentCall.number
    )
  }
  $('#callscreen').css('top', '-100%')
  $('#current-time').fadeOut(250, function () {
    $('#callminimized').fadeIn(250)
  })
})
ESX.Phone.functions.addButton('#call-mute', function (_0x5a9000) {
  let _0x57ba45 = $(_0x5a9000).data('muted')
  $(_0x5a9000).data('muted', !_0x57ba45)
  $(_0x5a9000)
    .children(':first')
    .attr('class', !_0x57ba45 ? 'fas fa-microphone-slash' : 'fas fa-microphone')
  ESX.Phone.micMuted = _0x57ba45
})
ESX.Phone.functions.addButton('#clearallcalls', function () {
  $.post(
    'http://' + ESX.Phone.resourceName + '/clearAllCalls',
    JSON.stringify({})
  )
  ESX.Phone.calls = []
  $('.phone .calls .callslist')
    .children()
    .each(function (_0x34186f) {
      setTimeout(() => {
        $(this).css({
          'margin-left': '-20vw',
          opacity: '0.0',
        })
      }, 50 * _0x34186f)
      setTimeout(() => {
        $(this).remove()
      }, 500 + 50 * _0x34186f)
    })
})
ESX.Phone.functions.endCall = function (_0x4798b2) {
  ESX.Phone.micMuted = false
  currentStatus = ''
  if (callTimeout) {
    clearTimeout(callTimeout)
  }
  callTimeout = undefined
  $('#call-mute').data('muted', false)
  $('#call-mute').children(':first').attr('class', 'fas fa-microphone')
  ESX.Phone.functions.removeIncomingCall(_0x4798b2)
  ESX.Phone.functions.stopSound(Config.Sounds.Calling)
  ESX.Phone.currentCall = {}
  clearInterval(callInterval)
  callInterval = undefined
  $('#callscreen .status').html(Locales[Config.Language].callended)
  $('#callscreen').css('top', '-100%')
  $('#callminimized').is(':visible') &&
    $('#callminimized').fadeOut(250, function () {
      $('#current-time').fadeIn(250)
    })
  $.post(
    'http://' + ESX.Phone.resourceName + '/updateContacts',
    JSON.stringify({})
  )
}
ESX.Phone.functions.removeIncomingCall = function (_0x85be6b) {
  for (const [_0x39ffc8, _0x2728d] of Object.entries(ESX.Phone.incomingCalls)) {
    if (_0x2728d == _0x85be6b) {
      if (Object.keys(ESX.Phone.incomingCalls).length > 1) {
        $('#incoming-' + _0x39ffc8).css({
          'margin-top': '-4.3vw',
          opacity: '0.0',
          zIndex: '-1',
        })
        setTimeout(() => {
          $('#incoming-' + _0x39ffc8).remove()
          delete ESX.Phone.incomingCalls[_0x39ffc8]
        }, 1000)
      } else {
        $('.incomingcalls').css('top', '-13%')
        setTimeout(() => {
          $('#incoming-' + _0x39ffc8).remove(),
            delete ESX.Phone.incomingCalls[_0x39ffc8]
        }, 500)
      }
      ESX.Phone.functions.stopSound(
        ESX.Phone.settings.ringtone.value != ''
          ? ESX.Phone.settings.ringtone.value
          : 'default'
      )
      ESX.Phone.currentApp != 'Phone' &&
        (Config.Applications.Phone.notifCount++,
          ESX.Phone.functions.updateApp('Phone', 'notifications'))
      if (ESX.Phone.locked || !ESX.Phone.open) {
        let _0x382de5 = ESX.Phone.functions.getContact(_0x85be6b),
          _0x5aa034 =
            _0x382de5 != Locales[Config.Language].unknown
              ? _0x382de5.name
              : _0x85be6b
        ESX.Phone.functions.sendOffNotification(
          Config.Applications.Phone.notifications.icon,
          Config.Applications.Phone.notifications.color,
          Config.Applications.Phone.label,
          Locales[Config.Language].missed_call.formatText(_0x5aa034),
          Config.Notifications.MissedCall.length,
          JSON.stringify({
            app: 'Phone',
            number: _0x85be6b,
          })
        )
      }
    }
  }
}
ESX.Phone.functions.addIncomingCall = async function (
  _0x1643f6,
  _0x2557e0,
  _0x313e4d,
  _0x54b8c0
) {
  ESX.Phone.hasPhone = await ESX.Phone.functions.hasPhone()
  if (!ESX.Phone.hasPhone || ESX.Phone.settings.airplane.value) {
    return
  }
  let _0x35029d = ESX.Phone.functions.getContact(_0x2557e0),
    _0x3c0b3a =
      _0x35029d != Locales[Config.Language].unknown
        ? _0x35029d.photo
        : Config.DefaultImageSrc,
    _0x3a52aa =
      _0x35029d != Locales[Config.Language].unknown
        ? _0x35029d.name.charAt(0).toUpperCase()
        : ''
  if (_0x54b8c0) {
    _0x3c0b3a = Config.DefaultImageSrc
    _0x3a52aa = ''
  }
  ESX.Phone.functions.playSound(
    ESX.Phone.settings.ringtone.value != ''
      ? ESX.Phone.settings.ringtone.value
      : 'default',
    true
  )
  ESX.Phone.incomingCalls[_0x1643f6] = _0x2557e0
  if (_0x313e4d) {
    ESX.Phone.jobIncomingCalls[_0x1643f6] = _0x2557e0
  }
  $('.incomingcalls').append(
    '<div class="call ' +
    (_0x313e4d ? 'jobcall' : '') +
    '" id="incoming-' +
    _0x1643f6 +
    '" ' +
    (Object.keys(ESX.Phone.incomingCalls).length > 1
      ? 'style="margin-top: -4.3vw;"'
      : '') +
    '>\n        <div class="avatar" id="currentchatletter">' +
    _0x3a52aa +
    '</div>\n        ' +
    (_0x3c0b3a != ''
      ? '<img class="avatar" id="currentchatimage" style="background-color:rgb(80, 80, 80)" src="' +
      _0x3c0b3a +
      '">'
      : '') +
    '\n\n        <p class="name">' +
    (_0x35029d != Locales[Config.Language].unknown
      ? !_0x54b8c0
        ? _0x35029d.name
        : Locales[Config.Language].unknown
      : _0x35029d) +
    '</p>\n        <p class="number">' +
    (!_0x54b8c0 ? _0x2557e0 : Locales[Config.Language].privatenumber) +
    '</p>\n\n        <div class="buttons">\n            <div id="decline-call" data-id="' +
    _0x1643f6 +
    '">\n                <i class="fas fa-phone-alt" style="transform: rotate(135deg);"></i>\n            </div>\n            <div id="pickup-call" data-id="' +
    _0x1643f6 +
    '" data-anonymous="' +
    _0x54b8c0 +
    '">\n                <i class="fas fa-phone-alt"></i>\n            </div>\n        </div>\n    </div>'
  )
  $('.incomingcalls').css('top', '7%')
  setTimeout(() => {
    $('#incoming-' + _0x1643f6).css('margin-top', '0vw')
  }, 10)
  !ESX.Phone.open &&
    ($('.main').css({ bottom: '-24vw' }),
      $('.blackscreen').css({ opacity: '0.0' }))
}
var currentStatus = ''
ESX.Phone.functions.setupCall = function (_0x4c2396, _0x5eb322, _0xee0dea) {
  if (_0x4c2396 == 'calling' && ESX.Phone.currentCall.number) {
    return ESX.Phone.functions.sendNotification(
      Config.Applications[ESX.Phone.currentApp].notifications.icon,
      Config.Applications[ESX.Phone.currentApp].notifications.color,
      Config.Applications[ESX.Phone.currentApp].label,
      '<strong>' +
      Locales[Config.Language].notifications.error +
      '</strong><br>' +
      Locales[Config.Language].notifications.alreadyincall,
      Config.Notifications.Error.length
    )
  } else {
    if (_0x4c2396 == 'calling' && currentStatus == 'calling') {
      return ESX.Phone.functions.sendNotification(
        Config.Applications[ESX.Phone.currentApp].notifications.icon,
        Config.Applications[ESX.Phone.currentApp].notifications.color,
        Config.Applications[ESX.Phone.currentApp].label,
        '<strong>' +
        Locales[Config.Language].notifications.error +
        '</strong><br>' +
        Locales[Config.Language].notifications.alreadyincall,
        Config.Notifications.Error.length
      )
    }
  }
  if (!ESX.Phone.currentCall.number) {
    $('#callscreen').css('top', '0%')
  }
  $('#callscreen .status').html(
    _0x4c2396 == 'oncall'
      ? Locales[Config.Language].connecting
      : Locales[Config.Language].calling
  )
  if (_0x4c2396 == 'calling') {
    ESX.Phone.functions.playSound(Config.Sounds.Calling, true)
  } else {
    ESX.Phone.functions.stopSound(Config.Sounds.Calling)
  }
  currentStatus = _0x4c2396
  if (!ESX.Phone.currentCall.number) {
    let _0x4a7f56 = ESX.Phone.functions.getContact(_0x5eb322),
      _0x1c8340 =
        _0x4a7f56 != Locales[Config.Language].unknown
          ? _0x4a7f56.name
          : Locales[Config.Language].unknown,
      _0x1a236c =
        _0x4a7f56 != Locales[Config.Language].unknown
          ? _0x4a7f56.photo
          : Config.DefaultImageSrc,
      _0x452057 = _0x1c8340.charAt(0).toUpperCase()
    _0xee0dea &&
      ((_0x1c8340 = Locales[Config.Language].unknown),
        (_0x1a236c = Config.DefaultImageSrc),
        (_0x452057 = ''))
    $('#currentcallletter').html(_0x452057)
    _0x1a236c != ''
      ? ($('#currentcallimage').attr('src', _0x1a236c).show(),
        $('#currentcallletter').hide())
      : ($('#currentcallimage').hide(), $('#currentcallletter').show())
    $('#callscreen .name').html(_0x1c8340)
    $('#callscreen .number').html(
      !_0xee0dea ? _0x5eb322 : Locales[Config.Language].privatenumber
    )
    const _0x164233 = {
      number: _0x5eb322,
      time: 0,
      anonymous: _0xee0dea,
    }
    ESX.Phone.currentCall = _0x164233
  }
  if (_0x4c2396 == 'oncall') {
    callTimeout && (clearTimeout(callTimeout), (callTimeout = undefined))
    if (!callInterval) {
      callInterval = setInterval(() => {
        ESX.Phone.currentCall.time++
        $('#callscreen .status').html(
          ESX.Phone.functions.formatTime2(ESX.Phone.currentCall.time)
        )
      }, 1000)
    }
  }
  _0x4c2396 == 'calling' &&
    (callTimeout = setTimeout(() => {
      ESX.Phone.functions.endCall(ESX.Phone.currentCall.number)
      $.post(
        'http://' + ESX.Phone.resourceName + '/endCall',
        JSON.stringify({})
      )
      ESX.Phone.functions.sendNotification(
        Config.Applications.Phone.notifications.icon,
        Config.Applications.Phone.notifications.color,
        Config.Applications.Phone.label,
        Locales[Config.Language].notifications.usernotavailable,
        Config.Notifications.Error.length
      )
      callTimeout = undefined
    }, Config.CallingTime * 1000))
}
ESX.Phone.functions.addDynamicButton('#decline-call', function (_0x5d5b32) {
  let _0x58a2e9 = $(_0x5d5b32).data('id')
  $.post(
    'http://' + ESX.Phone.resourceName + '/declineCall',
    JSON.stringify({ number: ESX.Phone.incomingCalls[_0x58a2e9] })
  )
  Object.keys(ESX.Phone.incomingCalls).length > 1
    ? ($('#incoming-' + _0x58a2e9).css({
      'margin-top': '-4.3vw',
      opacity: '0.0',
      zIndex: '-1',
    }),
      setTimeout(() => {
        $('#incoming-' + _0x58a2e9).remove()
        delete ESX.Phone.incomingCalls[_0x58a2e9]
        if (ESX.Phone.jobIncomingCalls[_0x58a2e9]) {
          delete ESX.Phone.jobIncomingCalls[_0x58a2e9]
        }
      }, 1000))
    : ($('.incomingcalls').css('top', '-13%'),
      setTimeout(() => {
        $('#incoming-' + _0x58a2e9).remove()
        delete ESX.Phone.incomingCalls[_0x58a2e9]
        if (ESX.Phone.jobIncomingCalls[_0x58a2e9]) {
          delete ESX.Phone.jobIncomingCalls[_0x58a2e9]
        }
      }, 500))
  ESX.Phone.functions.stopSound(
    ESX.Phone.settings.ringtone.value != ''
      ? ESX.Phone.settings.ringtone.value
      : 'default'
  )
})
ESX.Phone.functions.addDynamicButton('#pickup-call', function (_0x3cbd2d) {
  let _0x11088a = $(_0x3cbd2d).data('id'),
    _0x3ceb12 = $(_0x3cbd2d).data('anonymous')
  $.post(
    'http://' + ESX.Phone.resourceName + '/pickupCall',
    JSON.stringify({
      id: _0x11088a,
      number: ESX.Phone.incomingCalls[_0x11088a],
      job: ESX.Phone.jobIncomingCalls[_0x11088a] ? true : false,
    })
  )
  ESX.Phone.functions.setupCall(
    'oncall',
    ESX.Phone.incomingCalls[_0x11088a],
    _0x3ceb12
  )
  ESX.Phone.incomingCalls = {}
  $('.incomingcalls').css('top', '-13%')
  $('.incomingcalls')
    .children()
    .each(function () {
      $(this).css('margin-top', '-4.3vw'),
        setTimeout(() => {
          $(this).remove()
        }, 500)
    })
  ESX.Phone.functions.stopSound(
    ESX.Phone.settings.ringtone.value != ''
      ? ESX.Phone.settings.ringtone.value
      : 'default'
  )
  if (!ESX.Phone.open) {
    $.post(
      'http://' + ESX.Phone.resourceName + '/openPhone',
      JSON.stringify({})
    )
  }
})
ESX.Phone.functions.updateCalls = function (_0x333037, _0x46244e) {
  if (!_0x333037 || _0x333037 == '{}') {
    _0x333037 = '[]'
  }
  let _0x208798 =
    typeof _0x333037 == 'string' ? JSON.parse(_0x333037) : _0x333037
  ESX.Phone.calls = _0x208798
  if (ESX.Phone.currentApp != 'Phone') {
    return
  }
  if (_0x46244e) {
    $('.phone .calls .callslist').html('')
  }
  if (_0x46244e) {
    let _0xb6f3c3 = ''
    _0x208798.forEach((_0x22d178, _0x387979) => {
      if (
        _0x22d178 &&
        (_0x22d178.from == ESX.Phone.number || _0x22d178.to == ESX.Phone.number)
      ) {
        let _0x4b4c46 = ESX.Phone.functions.getContact(_0x22d178.from),
          _0x2af783 = ESX.Phone.functions.getContact(_0x22d178.to),
          _0x186b7f =
            _0x4b4c46 != Locales[Config.Language].unknown
              ? _0x4b4c46
              : false || _0x2af783 != Locales[Config.Language].unknown
                ? _0x2af783
                : false,
          _0x2e60a3 = _0x186b7f
            ? _0x186b7f.name
            : ESX.Phone.functions.formatDate(_0x22d178.time),
          _0x4951d9 = _0x186b7f
            ? _0x22d178.to == ESX.Phone.number
              ? '&#8592; ' + ESX.Phone.functions.formatDate(_0x22d178.time)
              : '&#8594; ' + ESX.Phone.functions.formatDate(_0x22d178.time)
            : _0x22d178.to == ESX.Phone.number
              ? '&#8592; ' +
              (_0x22d178.to == ESX.Phone.number ? _0x22d178.from : _0x22d178.to)
              : '&#8594; ' +
              (_0x22d178.to == ESX.Phone.number ? _0x22d178.from : _0x22d178.to)
        _0xb6f3c3 +=
          '<div class="call" data-id="' +
          _0x387979 +
          '" data-missed="' +
          (_0x22d178.length == 0 && _0x22d178.to == ESX.Phone.number) +
          '">\n                    <div class="inner">\n                        <p class="name" ' +
          (_0x22d178.length == 0 && _0x22d178.to == ESX.Phone.number
            ? 'style="color: #c42929"'
            : '') +
          '>' +
          _0x2e60a3 +
          '</p>\n                        <p class="number">' +
          _0x4951d9 +
          '</p>\n                        <p class="time">' +
          (_0x22d178.length > 0
            ? ESX.Phone.functions.formatTime(_0x22d178.length)
            : '&#10005;') +
          '</p>\n                    </div>\n                    <div class="delete">\n                        <i class="fas fa-trash"></i>\n                        <p class="title">' +
          Locales[Config.Language].remove +
          '</p>\n                    </div>\n                </div>'
      }
      _0x387979 == _0x208798.length - 1 &&
        (phonesb.updateMetrics(), $('.phone .calls .callslist').html(_0xb6f3c3))
    })
  } else {
    $('.phone .calls .callslist')
      .children()
      .each(function (_0x221e87) {
        if (!ESX.Phone.calls[$(this).data('id')]) {
          return
        }
        ESX.Phone.currentCallCategory == 'missed' && !$(this).data('missed')
          ? setTimeout(() => {
            const _0x46c0ed = {
              opacity: '0.0',
              height: '0vw',
            }
            _0x46c0ed['margin-left'] = '-20vw'
            $(this).css(_0x46c0ed)
          }, 50 * _0x221e87)
          : setTimeout(() => {
            $(this).removeAttr('style')
          }, 50 * _0x221e87)
      })
  }
}
ESX.Phone.functions.addDynamicButton(
  '.phone .calls .callslist .call > .delete',
  function (_0x1d6d46) {
    let _0x5d1c66 = $(_0x1d6d46).parent().data('id'),
      _0x3391e5 = ESX.Phone.calls[_0x5d1c66]
    if (!_0x3391e5) {
      return
    }
    setTimeout(() => {
      $(_0x1d6d46).addClass('faster').css('width', '100%'),
        $(_0x1d6d46).parent().css('height', '0%')
    }, 0)
    const _0x2b031d = { time: _0x3391e5.time }
    $.post(
      'http://' + ESX.Phone.resourceName + '/deleteCall',
      JSON.stringify(_0x2b031d)
    )
    ESX.Phone.calls[_0x5d1c66] = undefined
  }
)
ESX.Phone.functions.addDeleteSlider(
  '.phone .calls .callslist .call',
  function (_0xc40ac9) {
    let _0x13f56a = ESX.Phone.calls[$(_0xc40ac9).data('id')]
    if (!_0x13f56a) {
      return
    }
    const _0xe80c46 = { time: _0x13f56a.time }
    $.post(
      'http://' + ESX.Phone.resourceName + '/deleteCall',
      JSON.stringify(_0xe80c46)
    )
    ESX.Phone.calls[$(_0xc40ac9).data('id')] = undefined
  }
)
let lastPhoneMouseX = 0
$(document).on(
  {
    mousedown: function (_0x119889) {
      lastPhoneMouseX = _0x119889.pageX
    },
    mouseup: function (_0xd7a475) {
      if (_0xd7a475.which != 1) {
        return
      }
      if (
        _0xd7a475.target.classList[0] != 'delete' &&
        Math.abs(lastPhoneMouseX - _0xd7a475.pageX) < 5
      ) {
        let _0x36e0c3 = $(this).data('id'),
          _0x1add21 = ESX.Phone.calls[_0x36e0c3]
        callFunction(
          _0x1add21.to == ESX.Phone.number ? _0x1add21.from : _0x1add21.to
        )
      }
    },
  },
  '.phone .calls .callslist .call'
)
ESX.Phone.functions.addButton(
  '.phone > .calls > .categories > .button',
  function (_0xacdfe5) {
    let _0x42739d = $(_0xacdfe5).data('category')
    ESX.Phone.currentCallCategory = _0x42739d
    $('.phone > .calls > .categories > .highlight').css(
      'left',
      _0x42739d == 'missed' ? '50%' : '0%'
    )
    ESX.Phone.functions.updateCalls(ESX.Phone.calls)
  }
)
$(document).on('input', '#input-number', async function () {
  let _0x41b7c9 = document.getElementById('input-number')
  _0x41b7c9.scrollLeft = _0x41b7c9.scrollWidth
})
var currentTimeout
$('.phone .dial .numbers .number')
  .on('mousedown', function () {
    let _0x2f089f = $(this).data('number')
    let _0x533e8c = $('#input-number').val(),
      _0x573acb = document.getElementById('input-number')
    if (_0x2f089f == 0) {
      currentTimeout = setTimeout(() => {
        $('#input-number').val(_0x533e8c + '+')
        _0x573acb.scrollLeft = _0x573acb.scrollWidth
        currentTimeout = null
      }, 500)
      return
    } else {
      $('#input-number').val(_0x533e8c + _0x2f089f)
      _0x573acb.scrollLeft = _0x573acb.scrollWidth
    }
    if (typeof Config.SymbolPosition == 'number') {
      if (Config.AutoSymbol && _0x533e8c.length == Config.SymbolPosition) {
        $('#input-number').val(_0x533e8c + Config.Symbol)
      }
    } else {
      typeof Config.SymbolPosition == 'object' &&
        Config.SymbolPosition.forEach((_0x408078) => {
          Config.AutoSymbol &&
            _0x533e8c.replaceAll(Config.Symbol, '').length == _0x408078 &&
            $('#input-number').val(_0x533e8c + Config.Symbol)
        })
    }
  })
  .on('mouseup', function () {
    let _0x5e5a7d = $(this).data('number'),
      _0x13916c = $('#input-number').val(),
      _0x4e1104 = document.getElementById('input-number')
    if (_0x5e5a7d == 0) {
      currentTimeout != null &&
        (clearTimeout(currentTimeout),
          $('#input-number').val(_0x13916c + _0x5e5a7d),
          (_0x4e1104.scrollLeft = _0x4e1104.scrollWidth))
      if (typeof Config.SymbolPosition == 'number') {
        Config.AutoSymbol &&
          _0x13916c.length == Config.SymbolPosition &&
          $('#input-number').val(_0x13916c + Config.Symbol)
      } else {
        typeof Config.SymbolPosition == 'object' &&
          Config.SymbolPosition.forEach((_0x37a703) => {
            Config.AutoSymbol &&
              _0x13916c.replaceAll(Config.Symbol, '').length == _0x37a703 &&
              $('#input-number').val(_0x13916c + Config.Symbol)
          })
      }
    }
  })
var deleter
$('.phone .dial .numbers .delete')
  .on('mousedown', function () {
    let _0x2a704b = document.getElementById('input-number'),
      _0x2778f3 = $('#input-number').val()
    currentTimeout = setTimeout(() => {
      deleter = setInterval(() => {
        let _0x43499d = _0x2778f3.substring(0, _0x2778f3.length - 1)
        $('#input-number').val(_0x43499d)
        _0x2a704b.scrollLeft = _0x2a704b.scrollWidth
      }, 50)
      currentTimeout = null
    }, 500)
  })
  .on('mouseup', function () {
    let _0x53797a = document.getElementById('input-number'),
      _0x36a2a5 = $('#input-number').val()
    if (currentTimeout != null) {
      clearTimeout(currentTimeout)
      let _0x2abbfa = _0x36a2a5.substring(0, _0x36a2a5.length - 1)
      $('#input-number').val(_0x2abbfa)
      _0x53797a.scrollLeft = _0x53797a.scrollWidth
    } else {
      clearInterval(deleter)
    }
  })
