package om.ease;

class Quartic {

	public static inline function In( k : Float ) : Float return k * k * k * k;

	public static inline function Out( k : Float ) : Float return 1 - ( --k * k * k * k );

	public static function InOut( k : Float ) : Float {
		if ( ( k *= 2 ) < 1) return 0.5 * k * k * k * k;
		return - 0.5 * ( ( k -= 2 ) * k * k * k - 2 );
	}

}
