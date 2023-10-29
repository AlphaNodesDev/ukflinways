document.addEventListener('deviceready', onDeviceReady, false);

function onDeviceReady() {
    var ref = cordova.InAppBrowser.open(
        'https://ukf.linways.com/mobile/student/student.php?menu=mymark&action=list#left-nav',
        '_blank',
        'location=no'
    );

    var injected = false; // Flag to track if content has been injected

    ref.addEventListener('loadstop', function() {
        if (!injected) {
            var cssCode = '.header-dark { background-color: #1f9b29;} .college_title { + padding: 12px;  font-weight: bold; color: #fff; font-size: 30px; text-shadow: 1px 1px 1px #999; line-height: 53px !important; }';

            ref.executeScript({
                code: `
                    var style = document.createElement('style');
                    style.type = 'text/css';
                    style.innerHTML = '${cssCode}';
                    document.head.appendChild(style);
                `
            });

            ref.executeScript({
                code: `
                    var metaTag = document.createElement('meta');
                    metaTag.setAttribute('name', 'viewport');
                    metaTag.setAttribute('content', 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no');
                    document.head.appendChild(metaTag);
                `
            });

            ref.executeScript({
                code: `
                    var divTag = document.createElement('div');
                    divTag.style.cssText = 'background-color: #2283c9; width: 100%; height: 50px; bottom: 0; left: 0; text-align: center; color: white; font-family: Arial, sans-serif; font-size: 16px; line-height: 50px;';
                    var aTag = document.createElement('a');
                    aTag.style.cssText = 'text-decoration: none; color: white;';
                    aTag.textContent = 'Linways App By AlphaDev 💚';
                    divTag.appendChild(aTag);
                    var sectionTag = document.getElementsByTagName('section')[0];
                    sectionTag.insertAdjacentElement('afterend', divTag);

                    var titleElements = document.getElementsByClassName('menu-header-title');
                    for (var i = 0; i < titleElements.length; i++) {
                        if (titleElements[i].textContent.trim() === 'Linways AMS') {
                            titleElements[i].textContent = 'Electrex Linways';
                        }
                    }

                    var collegeTitleElements = document.getElementsByClassName('college_title');
                    for (var i = 0; i < collegeTitleElements.length; i++) {
                        collegeTitleElements[i].innerHTML = '<span style="color: black">' + collegeTitleElements[i].textContent.trim() + '</span>' + 'ELECTREX ';
                    }

                    var elements = document.getElementsByClassName('switch-to-desktop-version');
                    if (elements.length > 0) {
                        elements[0].style.display = 'none';
                    }
                `
            });

            injected = true; // Set the flag to true to indicate content has been injected
        }
    });

    // Add event listener for loadstart to reset the injected flag on page changes
    ref.addEventListener('loadstart', function() {
        injected = false; // Reset the flag to allow re-injection on a new page
    });
}
