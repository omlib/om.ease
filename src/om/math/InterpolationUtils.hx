package om.math;

class InterpolationUtils {

	public static inline function linear( p0 : Float, p1 : Float, t : Float ) : Float {
		return (p1 - p0) * t + p0;
	}

	public static inline function bernstein( n : Float, i : Float ) {
		var fc = InterpolationUtils.factorial;
		return fc( n ) / fc( i ) / fc( n - i );
	}

	public static inline function factorial( n : Float ) : Dynamic {
		var a = [ 1.0 ];
		var s = 1.0;
		if( a[ Math.round(n) ] < 0 ) return a[ Math.round(n) ];
		var i = n;
		while( i > 1 ) {
			s *= i;
			i--;
		}
		return a[Math.round(n)] = s;
	}

	public static function catmullRom ( p0 : Float, p1 : Float, p2 : Float, p3 : Float, t : Float ) : Float {
		var v0 = ( p2 - p0 ) * 0.5, v1 = ( p3 - p1 ) * 0.5, t2 = t * t, t3 = t * t2;
		return ( 2 * p1 - 2 * p2 + v0 + v1 ) * t3 + ( - 3 * p1 + 3 * p2 - 2 * v0 - v1 ) * t2 + v0 * t + p1;
	}

}
