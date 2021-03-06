﻿site = (function () {
    var location_path = location.href.split("/");
    location_path.pop();
    location_path = location_path.join("/");

    return {
        code_path: location_path + "/v/codes/",
        copyright: 'Copyright(c) ' + (new Date()).getFullYear() + ' - Skycon.PDF',
        root_url: "https://github.com/developerskycon/Skycon.pdf",
        report_issue_url: "https://github.com/developerskycon/Skycon.pdf/issues"
    };
})();