import { isLocalStorageAvailable } from './lib/local-storage'
import viewCounter from './lib/view-counter'
import swing from './lib/swing'
import detect from './lib/detect'
import textEditorInit from './lib/text-editor'
import initSmartTitle from './e2-modules/smart-title'
import initSearchHotKeys from './e2-modules/searchHotKeys'
import initSafariFormCmdSubmitFix from './e2-modules/e2SafariFormCmdSubmitFix'
import e2Ajax from './e2-modules/e2Ajax'
import e2NiceError from './e2-modules/e2NiceError'
import e2SpinningAnimationStartStop from './e2-modules/e2SpinningAnimationStartStop'
import initAllPopupMenus from './e2-modules/e2PopupMenu'
import initFormComment from './e2-modules/form-comment'
import e2AutosizeTextFields from './e2-modules/e2AutosizeTextFields'
import initScrollingModule from './e2-modules/band'

// First init imports
initFormComment()
initSmartTitle()
initSafariFormCmdSubmitFix()
initSearchHotKeys()
initScrollingModule()

// Second init obsolete functions
function initObsoleteFunction () {
  // init textEditor
  $('#text').each(textEditorInit)

  // former pseudohover.js
  var $pseudohoveredLinks = $()
  $(document)
    .on('mouseover', 'a[href]', function () {
      var $this = $(this)
      var h = $this.attr('href')

      if (h && (h.indexOf('#') >= 0)) h = h.substr(0, h.indexOf('#')) // remove anchor

      if (h && !h.match(/^javascript:/)) {
        $pseudohoveredLinks = $('a[href="' + h + '"]').addClass('hover')
      }
    })
    .on('mouseout', 'a[href]', function (event) {
      if (typeof event === 'object' && typeof event.currentTarget === 'object' && typeof event.relatedTarget === 'object' && $(event.currentTarget).find(event.relatedTarget).length > 0) {
        return true
      }
      $pseudohoveredLinks.removeClass('hover')
      $pseudohoveredLinks = $()
    })

  // update a hrefs with link redirects
  $('a[linkredir]').each(function () {
    var $this = $(this)

    $this.attr('href', $this.attr('linkredir') + $this.attr('href'))
    $this.removeAttr('linkredir')
  })

  // login popup
  if ($('#e2-login-sheet').length) {
    var $loginButton = $('#e2-visual-login')
    var $popupLogin = $('#e2-login-sheet')

    var $formLogin = $popupLogin.find('#form-login')
    var $formLoginPassword = $formLogin.find('#e2-password')
    var $formLoginPasswordChecking = $formLogin.find('.e2-login-window-password-checking')
    var mustSubmit = false

    $formLoginPassword.focus()

    $formLogin.on('submit', function (event) {
      if (mustSubmit) return true

      event.preventDefault()

      $formLogin.find('.input-disableable').prop('disabled', true)
      $formLoginPassword.blur()
      e2SpinningAnimationStartStop($formLoginPasswordChecking, 1)
      $formLoginPasswordChecking.fadeIn(200)

      var ajaxRequest = e2Ajax({
        url: $('#e2-check-password-action').attr('href'),
        data: {
          password: $formLoginPassword.val()
        },
        success: function (response) {
          $formLogin.find('.input-disableable').prop('disabled', false)

          if (typeof response.data === 'undefined' || typeof response.data['password-correct'] === 'undefined') {
            e2SpinningAnimationStartStop($formLoginPasswordChecking, 0)
            $formLoginPasswordChecking.fadeOut(200)
            e2NiceError({
              message: 'er--js-server-error',
              debug: {
                message: 'Server response malformed',
                data: {
                  response: response
                }
              }
            })
            return false
          }

          if (response.data['password-correct']) {
            e2SpinningAnimationStartStop($formLoginPasswordChecking, 0)
            $formLoginPasswordChecking.hide()
            $('#password-correct').fadeIn(200, function () {
              mustSubmit = true
              $formLogin.submit()
            })
          } else {
            e2SpinningAnimationStartStop($formLoginPasswordChecking, 0)
            $formLoginPasswordChecking.fadeOut(200)
            $formLoginPassword.focus()
            swing($('#e2-login-window')[0])
          }
        },
        error: function () {
          $formLogin.find('.input-disableable').prop('disabled', false)
          e2SpinningAnimationStartStop($formLoginPasswordChecking, 0)
          $formLoginPasswordChecking.fadeOut(200)
        },
        abort: function () {
          $formLogin.find('.input-disableable').prop('disabled', false)
          e2SpinningAnimationStartStop($formLoginPasswordChecking, 0)
          $formLoginPasswordChecking.fadeOut(200)
        }
      })

      $formLogin.data('formLoginAjaxRequest', ajaxRequest)

      return false
    })

    $popupLogin
      .on('E2_SHOW_LOGIN_SHEET', function () {
        $popupLogin.addClass('e2-show')

        setTimeout(function () {
          $formLoginPassword.focus()
        }, 100)

        $loginButton.addClass('e2-visual-login_hidden')
      })
      .on('E2_HIDE_LOGIN_SHEET', function () {
        if (!$popupLogin.hasClass('e2-hideable')) {
          return false
        }

        $formLoginPassword.blur()
        $popupLogin.removeClass('e2-show')

        if (typeof $formLogin.data('formLoginAjaxRequest') === 'object') {
          $formLogin.data('formLoginAjaxRequest').abort()
        }

        $loginButton.removeClass('e2-visual-login_hidden')
      })

    // hide login window on click outside (on sheet)
    $popupLogin.on('click', function (event) {
      if (event.target === this) $('#e2-login-sheet').trigger('E2_HIDE_LOGIN_SHEET')
    })

    // show login popup
    if ($loginButton.length) {
      $(document).on('mousemove', function (event) {
        var o = $loginButton.offset()
        var x1 = o.left
        var y1 = o.top
        var x2 = event.pageX
        var y2 = event.pageY
        var l = Math.pow((Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2)), 0.5)
        l = Math.max(Math.min(l, 600), 100)
        l = (l - 100) / 500
        $loginButton.css('opacity', 0.25 + (1 - l) * 0.75)
      })

      $loginButton.on('click', function (event) {
        event.preventDefault()
        $popupLogin.trigger('E2_SHOW_LOGIN_SHEET')
        return false
      })
    }
  }

  // follow popup
  if ($('#e2-follow-sheet').length && $('.e2-follow-button').length) {
    var $followButton = $('.e2-follow-button')
    var $popupFollow = $('#e2-follow-sheet')

    $popupFollow.on('E2_SHOW_FOLLOW_SHEET', function () {
      $(this).addClass('e2-show')
    }).on('E2_HIDE_FOLLOW_SHEET', function () {
      $(this).removeClass('e2-show')
    }).on('click', function (event) {
      if (event.target === this) $('#e2-follow-sheet').trigger('E2_HIDE_FOLLOW_SHEET')
    })

    $followButton.addClass('e2-follow-button-visible').on('click', function (event) {
      event.preventDefault()
      $('#e2-follow-sheet').trigger('E2_SHOW_FOLLOW_SHEET')
      return false
    })
  }

  // autosize text fields
  $('.e2-textarea-autosize').each(e2AutosizeTextFields)

  // notes
  var $notes = $('.e2-note')
  if ($notes.length && isLocalStorageAvailable) {
    var initViewCounter = function ($note) {
      const noteId = $note.data('note-id').toString()
      const endpointUrl = $note.data('note-read-href')
      if (typeof endpointUrl !== 'undefined') {
        viewCounter({ noteId, endpointUrl })
      }
    }

    $notes.map((index, node) => {
      const $note = $(node)
      initViewCounter($note)
    })
  }
}
initObsoleteFunction()

// Third init keyboard shortcuts
function initKeyboardShortcuts () {
  if (!detect.touchdevice) {
    $('.e2-keyboard-shortcut').addClass('e2-keyboard-shortcut_visible')
  }

  $(document).on('keydown keyup keypress', function (event) {
    // ctrl+enter sends forms
    if (event.which === 13) {
      var target = event.target || event.srcElement
      if (target) {
        if (target.form) {
          var $targetForm = $(target.form)
          if ($targetForm.hasClass('e2-enterable')) return
          if (!event.ctrlKey && $(target).is('textarea')) return
          event.preventDefault()
          if (event.ctrlKey && (event.type === 'keydown')) {
            if ($targetForm.find('#submit-button').length && !$targetForm.find('#submit-button').is(':disabled')) {
              $targetForm.trigger('submit')
            }
          }
          return false
        }
      }
    }

    if (event.type === 'keyup') {
      // hide all sheets on esc
      if (event.which === 27) {
        $('#e2-follow-sheet').trigger('E2_HIDE_FOLLOW_SHEET')
        $('#e2-login-sheet').trigger('E2_HIDE_LOGIN_SHEET')
      }

      // alt+e edits
      if (event.which === 69 && event.altKey) {
        var $editLink = $('.e2-edit-link')
        if ($editLink.length) {
          window.location.href = $editLink.eq(0).attr('href')
        }
      }

      // ctrl-navigation
      var eventTargetTag = event.target.nodeName.toLowerCase()
      if (eventTargetTag !== 'input' && eventTargetTag !== 'textarea' && eventTargetTag !== 'select' && eventTargetTag !== 'option' && eventTargetTag !== 'button' && (typeof $(event.target).attr('contenteditable') === 'undefined' || $(event.target).attr('contenteditable') === 'false')) {
        if ((detect.mac && event.altKey && !event.shiftKey) || (!detect.mac && event.ctrlKey)) {
          var href
          switch (event.which) {
            case 37:
              href = $('#link-prev').attr('href')
              break
            case 39:
              href = $('#link-next').attr('href')
              break
            case 38:
              href = $('#link-later').attr('href')
              break
            case 40:
              href = $('#link-earlier').attr('href')
              break
          }
          if (href) {
            window.location.href = href
            if (window.event) window.event.returnValue = false
            if (event.preventDefault) event.preventDefault()
          }
        }
      }
    }
  })
}
initKeyboardShortcuts()

// Fourth init popup menus
initAllPopupMenus()
