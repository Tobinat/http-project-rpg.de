//pay mayor taxes

_startingpayment = taxpayments;
_n = 0;
while { true } do {
	uisleep 120;
	if(taxpayments != _startingpayment) then {
		_n = 0;
		_startingpayment = taxpayments;
	};
	_n = _n + 1;
	if(_n == 5) exitwith {};
};

[taxpayments] remoteexec ["server_fnc_paymayor",2];

taxpayments = 0;