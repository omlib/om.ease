package om.ease;

class Back {

	public static inline function In( k : Float ) : Float {
		var s = 1.70158;
		return k * k * ( ( s + 1 ) * k - s );
	}

	public static inline function Out( k : Float ) : Float {
		var s = 1.70158;
		return --k * k * ( ( s + 1 ) * k + s ) + 1;
	}

	public static function InOut( k : Float ) : Float {
		var s = 1.70158 * 1.525;
		if ( ( k *= 2 ) < 1 ) return 0.5 * ( k * k * ( ( s + 1 ) * k - s ) );
		return 0.5 * ( ( k -= 2 ) * k * ( ( s + 1 ) * k + s ) + 2 );
	}
}
