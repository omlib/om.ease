package om.ease;

class Quadratic {

	public static inline function In( k : Float ) : Float return k * k;

	public static inline function Out( k : Float ) : Float return k * ( 2 - k );

	public static function InOut( k : Float ) : Float {
		if ( ( k *= 2 ) < 1 ) return 0.5 * k * k;
		return - 0.5 * ( --k * ( k - 2 ) - 1 );
	}

}
