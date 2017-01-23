package om.ease;

class Exponential {

	public static inline function In( k : Float ) : Float {
		return (k == 0) ? 0 : Math.pow( 1024, k - 1 );
	}

	public static inline function Out( k : Float ) : Float {
		return (k == 1) ? 1 : 1 - Math.pow( 2, - 10 * k );
	}

	public static function InOut( k : Float ) : Float {
		return (k == 0) ? 0 : (k == 1) ? 1 : ((k *= 2) < 1) ? 0.5 * Math.pow( 1024, k - 1 ) : 0.5 * ( - Math.pow( 2, - 10 * ( k - 1 ) ) + 2 );
	}

}
