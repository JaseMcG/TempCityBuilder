/// Utility Script Functions


//map a value from one range to another
function MapValue(_value, _current_lower_bound, _current_upper_bound, _desired_lowered_bound, _desired_upper_bound) {
	return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lowered_bound)) + _desired_lowered_bound;
}


//aproach a value
function ApproachValue(_start, _end, _shift) {
    if (_start < _end) {
        return min(_start + _shift, _end); 
    } else {
        return max(_start - _shift, _end);
    }
}


//true modulo
function Modulo(_a, _b) {
	return (((_a % _b) + _b) % _b);
}