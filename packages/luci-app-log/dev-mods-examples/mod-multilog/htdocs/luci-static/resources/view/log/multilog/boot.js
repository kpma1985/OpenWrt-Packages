'use strict';
'require view.log.multilog.abstract-multilog as abc';

return abc.view.extend({
	viewName: 'multilog-boot',
	title   : _('Log') + ' - ' + _('boot.log'),
	logFile : '/var/log/boot.log',
});
