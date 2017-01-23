package om;

class Ease {

    public static inline function backIn( k : Float ) : Float return om.ease.Back.In( k );
    public static inline function backOut( k : Float ) : Float return om.ease.Back.Out( k );
    public static inline function backInOut( k : Float ) : Float return om.ease.Back.InOut( k );

    public static inline function bounceIn( k : Float ) : Float return om.ease.Bounce.In( k );
    public static inline function bounceOut( k : Float ) : Float return om.ease.Bounce.Out( k );
    public static inline function bounceInOut( k : Float ) : Float return om.ease.Bounce.InOut( k );

    public static inline function circularIn( k : Float ) : Float return om.ease.Circular.In( k );
    public static inline function circularOut( k : Float ) : Float return om.ease.Circular.Out( k );
    public static inline function circularInOut( k : Float ) : Float return om.ease.Circular.InOut( k );

    public static inline function cubicIn( k : Float ) : Float return om.ease.Cubic.In( k );
    public static inline function cubicOut( k : Float ) : Float return om.ease.Cubic.Out( k );
    public static inline function cubicInOut( k : Float ) : Float return om.ease.Cubic.InOut( k );

    public static inline function elasticIn( k : Float ) : Float return om.ease.Elastic.In( k );
    public static inline function elasticOut( k : Float ) : Float return om.ease.Elastic.Out( k );
    public static inline function elasticInOut( k : Float ) : Float return om.ease.Elastic.InOut( k );

    public static inline function exponentialIn( k : Float ) : Float return om.ease.Exponential.In( k );
    public static inline function exponentialOut( k : Float ) : Float return om.ease.Exponential.Out( k );
    public static inline function exponentialInOut( k : Float ) : Float return om.ease.Exponential.InOut( k );

    public static inline function linear( k : Float ) : Float return om.ease.Linear.In( k );

    public static inline function quadraticIn( k : Float ) : Float return om.ease.Quadratic.In( k );
    public static inline function quadraticOut( k : Float ) : Float return om.ease.Quadratic.Out( k );
    public static inline function quadraticInOut( k : Float ) : Float return om.ease.Quadratic.InOut( k );

    public static inline function quarticIn( k : Float ) : Float return om.ease.Quartic.In( k );
    public static inline function quarticOut( k : Float ) : Float return om.ease.Quartic.Out( k );
    public static inline function quarticInOut( k : Float ) : Float return om.ease.Quartic.InOut( k );

    public static inline function quinticIn( k : Float ) : Float return om.ease.Quintic.In( k );
    public static inline function quinticOut( k : Float ) : Float return om.ease.Quintic.Out( k );
    public static inline function quinticInOut( k : Float ) : Float return om.ease.Quintic.InOut( k );

    public static inline function sinusoidalIn( k : Float ) : Float return om.ease.Sinusoidal.In( k );
    public static inline function sinusoidalOut( k : Float ) : Float return om.ease.Sinusoidal.Out( k );
    public static inline function sinusoidalInOut( k : Float ) : Float return om.ease.Sinusoidal.InOut( k );

}
