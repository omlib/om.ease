package om.ease;

class Circular {

	public static inline function In( k : Float ) : Float {
		return 1 - Math.sqrt( 1 - k * k );
	}

	public static inline function Out( k : Float ) : Float {
		return Math.sqrt( 1 - ( --k * k ) );
	}

	public static inline function InOut( k : Float ) : Float {
		return ((k *= 2) < 1) ? - 0.5 * ( Math.sqrt(1 - k * k) - 1) : 0.5 * ( Math.sqrt( 1 - (k -= 2) * k) + 1);
		//if( ( k *= 2 ) < 1)
		//	return - 0.5 * ( Math.sqrt( 1 - k * k) - 1);
		//return 0.5 * ( Math.sqrt( 1 - ( k -= 2) * k) + 1);
	}
}
