package om.ease;

class Sinusoidal {

	public static inline function In( k : Float ) : Float {
		return 1 - Math.cos( k * Math.PI / 2 );
	}

	public static inline function Out( k : Float ) : Float {
		return Math.sin( k * Math.PI / 2 );
	}

	public static inline function InOut( k : Float ) : Float {
		return 0.5 * ( 1 - Math.cos( Math.PI * k ) );
	}

}
