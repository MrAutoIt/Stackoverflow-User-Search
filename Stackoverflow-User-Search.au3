#include <IE.au3>

SeachForUser("MrAutoIt")

Func SeachForUser($sUser)
    Local $oIE = _IECreate("http://stackoverflow.com/users")
    Local $hWnd = _IEPropertyGet($oIE, "hwnd")

    $oSearchBox = _IEGetObjById($oIE, "userfilter")
    _IEAction($oSearchBox, "focus")
    ControlSend($hWnd, "", "[CLASS:Internet Explorer_Server; INSTANCE:1]", $sUser & "{Enter}")
EndFunc   ;==>SeachForUser