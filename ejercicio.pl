/* predicdos monadicas: propiedades */
/* mujer (persona) <- persona es una mujer */
mujer(maria).
mujer(ana).

/*hombre (persona) <- persona es un hombre */
hombre(jose).
hombre(luis).

/*moreno (persona) <- persona tiene el pelo de color oscuro */
moreno(jose).

/* predidcados poliadicos: relaciones */

/* tiene(persona, objeto) <- persona posee el objeto objeto */
tiene(luis,auto).

/*es_madre_de(madre, hijo-a) <- madre es la madre de hijo-a */
es_madre_de(laura,maria).

/* regala(persona, objeto, persona2) <- persona regala objeto a persona */
regala(luis,flores,ana).