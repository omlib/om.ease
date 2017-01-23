package om.ease;

class Cubic {

	public static inline function In( k : Float ) : Float {
		return k * k * k;
	}

	public static inline function Out( k : Float ) : Float {
		return --k * k * k + 1;
	}

	public static function InOut( k : Float ) : Float {
		if ( ( k *= 2 ) < 1 ) return 0.5 * k * k * k;
		return 0.5 * ( ( k -= 2 ) * k * k + 2 );
	}
}
