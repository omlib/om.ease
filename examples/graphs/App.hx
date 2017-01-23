
import js.Browser.document;
import js.Browser.window;
import js.html.Element;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import om.ease.*;

class App {

	static function update( time : Float ) {
		window.requestAnimationFrame( update );
		//tween.update();
	}

	static function main() {

		window.onload = function() {

			var element = document.createDivElement();
			element.classList.add( 'ease' );
			document.body.appendChild( element );

			var easeClasses : Array<Class<Dynamic>> = [Back,Bounce,Circular,Cubic,Elastic,Exponential,Quadratic,Quartic,Quintic,Sinusoidal];
			var easeTypes = ['In','Out','InOut'];
			//var graphs = new Array<Graph>();

            for( easeClass in easeClasses ) {

				var cName = Type.getClassName( easeClass );
                var easeName = cName.substr( cName.lastIndexOf('.')+1 );

				var section = document.createDivElement();
				section.classList.add( 'class' );
				element.appendChild( section );

				for( easeType in easeTypes ) {

					if( Reflect.hasField( easeClass, easeType ) ) {

						var e = document.createDivElement();
						e.classList.add( 'type' );

						var title = document.createDivElement();
						title.classList.add( 'title' );
						title.textContent = '$easeName.$easeType';
						e.appendChild( title );

						var canvas = document.createCanvasElement();
						//canvas.classList.add( 'graph' );
						canvas.width = 200; //window.innerWidth;
						canvas.height = 100; //window.innerHeight;
						e.appendChild( canvas );

						var context = canvas.getContext2d();
				        context.strokeStyle = '#002B36';
				        context.lineWidth = 1;

						var halfHeight = Std.int( canvas.height / 2 );
				        var yIndent = 12;
				        var easeMethod = Reflect.field( easeClass, easeType );
						//var pos = { x: 0, y: halfHeight };
						//var pos_old = { x: 0, y: halfHeight };

						context.beginPath();
				        context.strokeStyle = '#002B36';
				        context.moveTo( 0, halfHeight );
				        context.lineTo( canvas.width, halfHeight );
				        context.stroke();
				        context.closePath();

						context.strokeStyle = '#D33682';
						context.fillStyle = '#D33682';

						for( i in 0...canvas.height ) {
							var v = easeMethod( i/100 );
							//context.moveTo( pos_old.x, pos_old.y );
			    			context.lineTo( i, halfHeight/2 + v * canvas.height/2);
							//context.fillRect( i, 0, 1, halfHeight + v * (canvas.height/4) );
						}
						context.stroke();

						section.appendChild( e );
					}
				}

				/*
                var element = document.createDivElement();
                element.classList.add( 'group' );
                document.body.appendChild( element );

                var cName = Type.getClassName( easeClass );
                var easeName = cName.substr( cName.lastIndexOf('.')+1 );

                for( easeType in easeTypes ) {

                    if( Reflect.hasField( easeClass, easeType ) ) {

						var e = document.createDivElement();

						var title = document.createDivElement();
						title.classList.add( 'title' );
						title.textContent = '$easeName.$easeType';
						e.appendChild( title );

						var canvas = document.createCanvasElement();
						canvas.classList.add( 'graph' );
						canvas.width = 200; //window.innerWidth;
						canvas.height = 100; //window.innerHeight;
						e.appendChild( canvas );

						/*
                        var g = new Graph( easeClass, name, easeType, 200, 100, 3000 );
                        graphs.push( g );
                        e.appendChild( g.element );
                        g.tween();
						* /

						element.appendChild( e );
                    }
                }

				*/
            }
		}

	}
}
