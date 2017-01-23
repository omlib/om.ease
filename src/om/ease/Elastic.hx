package om.ease;

class Elastic {

	public static function In( k : Float ) : Float {
		var s : Null<Float> = null;
		var a = 0.1, p = 0.4;
		if( k == 0 )
			return 0;
		if( k == 1 )
			return 1;
		if( a < 1 ) {
			a = 1;
			s = p / 4;
		} else
			s = p * Math.asin( 1 / a ) / ( 2 * Math.PI );
		return - ( a * Math.pow( 2, 10 * ( k -= 1 ) ) * Math.sin( ( k - s ) * ( 2 * Math.PI ) / p ) );
	}

	public static function Out( k : Float ) : Float {
		var s : Null<Float> = null;
		var a = 0.1, p = 0.4;
		if( k == 0 )
			return 0;
		if( k == 1 )
			return 1;
		if( a < 1 ) {
			a = 1;
			s = p / 4;
		} else
			s = p * Math.asin( 1 / a ) / ( 2 * Math.PI );
		return ( a * Math.pow( 2, - 10 * k) * Math.sin( ( k - s ) * ( 2 * Math.PI ) / p ) + 1 );
	}

	public static function InOut( k : Float ) : Float {
		var s, a = 0.1, p = 0.4;
		if ( k == 0 )
			return 0;
		if ( k == 1 )
			return 1;
		if ( a != 0 || a < 1 ) {
			a = 1;
			s = p / 4;
		} else
			s = p * Math.asin( 1 / a ) / ( 2 * Math.PI );
		if ( ( k *= 2 ) < 1 ) return - 0.5 * ( a * Math.pow( 2, 10 * ( k -= 1 ) ) * Math.sin( ( k - s ) * ( 2 * Math.PI ) / p ) );
		return a * Math.pow( 2, -10 * ( k -= 1 ) ) * Math.sin( ( k - s ) * ( 2 * Math.PI ) / p ) * 0.5 + 1;
	}

}
