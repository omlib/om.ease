package om.math;

class Interpolation {

	public static function linear( v : Array<Dynamic>, k : Float ) : Float {
		var m = v.length - 1;
		var f = m * k;
		var i = Math.floor( f );
		var fn = InterpolationUtils.linear;
		if( k < 0 ) return fn( v[ 0 ], v[ 1 ], f );
		if( k > 1 ) return fn( v[ m ], v[ m - 1 ], m - f );
		return fn( v[ i ], v[ i + 1 > m ? m : i + 1 ], f - i );
	}

	public static function bezier( v : Dynamic, k : Float ) : Float {
		var b = 0.0;
		var n = v.length - 1;
		var pw = Math.pow;
		var bn = InterpolationUtils.bernstein;
		var i = 0;
		while( i <= n ) {
			b += pw( 1 - k, n - i ) * pw( k, i ) * v[ i ] * bn( n, i );
			i++;
		}
		return b;
	}

	public static function catmullRom( v : Dynamic, k : Float ) : Float {
		var m = v.length - 1;
		var f = m * k;
		var i = Math.floor( f );
		var fn = InterpolationUtils.catmullRom;
		if ( v[ 0 ] == v[ Math.round( m ) ] ) {
			if ( k < 0 ) i = Math.floor( f = m * ( 1 + k ) );
			return untyped fn( v[ ( i - 1 + m ) % m ], v[ i ], v[ ( i + 1 ) % m ], v[ ( i + 2 ) % m ], f - i );
		} else {
			if ( k < 0 ) return v[ 0 ] - ( fn( v[ 0 ], v[ 0 ], v[ 1 ], v[ 1 ], -f ) - v[ 0 ] );
			if ( k > 1 ) return untyped v[ m ] - ( fn( v[ m ], v[ m ], v[ m - 1 ], v[ m - 1 ], f - m ) - v[ m ] );
			return untyped fn( v[ i ? i - 1 : 0 ], v[ i ], v[ m < i + 1 ? m : i + 1 ], v[ m < i + 2 ? m : i + 2 ], f - i );
		}
	}

}
