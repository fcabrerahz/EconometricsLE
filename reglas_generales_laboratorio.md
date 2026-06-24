# Reglas Generales — Problem Sets
**Econometría LECO | Dr. Francisco Cabrera — CIDE**

---

## Sobre los problem sets

El curso tiene **6 problem sets** a lo largo del semestre. Cada PS está diseñado para que apliques los conceptos vistos en clase usando datos reales y simulados en R. Los PS no son opcionales ni recuperables — forman parte central de tu evaluación.

---

## Herramientas de trabajo

Trabajarás con tres herramientas durante todo el semestre:

**RStudio** es donde escribes y ejecutas tu código. Cada PS viene en formato R Markdown (`.Rmd`), que combina código en R, texto y fórmulas en LaTeX en un solo archivo. Al compilarlo (`Knit → PDF`) produces tu entregable.

**GitHub** es donde entregas tu trabajo y donde queda registro de tu proceso. Cada PS tiene su propio repositorio privado que el profesor y el asistente pueden ver en tiempo real. No se aceptan entregas por correo.

**@leco-bot** es el tutor de econometría integrado en tu repositorio de GitHub. Está disponible para ayudarte durante el desarrollo de cada PS, dentro de los límites establecidos abajo.

---

## Reglas de entrega

**1. Entrega oficial**
La entrega es el último `push` a tu repositorio de GitHub antes de la fecha y hora límite de cada PS. No se aceptan entregas tardías sin autorización previa del profesor.

**2. Archivos requeridos**
Cada entrega debe incluir:
- El archivo `.Rmd` con tu código y respuestas completas
- El archivo `.pdf` generado por `Knit → PDF`

Un `.Rmd` que no compile sin errores descuenta 10 puntos del total del PS.

**3. Commits mínimos**
Debes realizar **mínimo 3 commits en días distintos** antes de tu entrega final. Los commits deben tener mensajes descriptivos que reflejen tu avance. Un repositorio con un solo commit la noche de la entrega recibe 0 puntos en el criterio de proceso, independientemente de la calidad del resultado.

---

## Reglas de uso del tutor @leco-bot

**¿Qué es?**
Un tutor socrático de econometría integrado en tu repositorio de GitHub. Responde tus preguntas con preguntas — su objetivo es guiarte hacia la respuesta, no dártela.

**¿Dónde se usa?**
En la pestaña **"Issues"** de tu repositorio. Abre un Issue llamado `Consultas PSX` al inicio de cada PS y usa ese hilo para todas tus consultas.

**Protocolo obligatorio**
Cada consulta debe seguir este formato. El bot no responderá si no lo incluyes:

```
@leco-bot

1. Qué intento hacer:
2. Error o resultado que obtuve:
3. Lo que ya intenté:
```

**Límites por PS**
- Máximo **5 consultas por día**
- Mínimo **3 consultas documentadas** por PS como requisito de entrega
- El contador diario se reinicia a medianoche

**Lo que el bot no hará**
El bot nunca escribirá tu código ni te dará respuestas numéricas directas. Si lo intentas, te hará una pregunta de vuelta. Úsalo para entender errores, aclarar conceptos y desatascarte — no para obtener soluciones.

---

## Reglas de uso de IA externa

El uso de herramientas de IA externas (ChatGPT, Claude, Gemini, etc.) está **permitido**, bajo estas condiciones:

**Permitido:**
- Usar IA para entender mensajes de error de R
- Usar IA para aclarar conceptos econométricos vistos en clase
- Usar IA para entender sintaxis de funciones específicas

**No permitido:**
- Pedir a la IA que resuelva los ejercicios del PS
- Pegar el enunciado de una pregunta y usar la respuesta de la IA directamente
- Entregar código o demostraciones generadas íntegramente por IA

**Evidencia de autoría**
El historial de commits, las consultas al bot y el patrón de trabajo a lo largo del tiempo son evidencia de que el trabajo es tuyo. Código de calidad perfecta entregado en un solo commit sin ninguna consulta al bot ni al asistente es una señal de alerta.

El uso de IA sin comprensión se detecta en el examen. Los PS son práctica — los exámenes son individuales, en papel, sin computadora.

---

## Reglas de colaboración

Puedes discutir ideas y estrategias con tus compañeros. No puedes compartir código ni respuestas escritas. Repositorios con código idéntico o muy similar reciben calificación de cero para ambos estudiantes.

---

## Peer Review

El profesor asigna parejas al inicio del semestre. Después de cada entrega final tienes **2 días** para revisar el trabajo de tu compañero y él revisa el tuyo.

**¿Dónde se hace?**
En la pestaña **"Issues"** del repositorio de tu compañero. Abre un Issue llamado `Revisión PS1 — [tu nombre]` y escribe ahí tus comentarios.

**¿Qué debes comentar?**
- **2 respuestas del PS** señalando líneas de código específicas
- Al menos **1 sugerencia de mejora** concreta

Ejemplo de comentario válido:
```
P2f, línea 45: usaste SSE/SST pero R² = SSR/SST.
¿Revisaste la definición de cada componente?
```

**Lo que no es válido:**
Comentarios genéricos como *"bien"*, *"correcto"* o *"ok"* sin señalar líneas específicas.

**Como autor:** debes responder los comentarios que recibiste dentro del mismo Issue.

---

## Rol del asistente de profesor

El asistente conduce un **laboratorio de 1.5 horas cada semana** dedicado al PS en curso. Asistir al laboratorio es la mejor manera de avanzar en el PS con apoyo directo.

El asistente no resuelve los ejercicios fuera del horario de laboratorio. Las dudas fuera de ese horario se atienden a través del bot @leco-bot o en las horas de oficina del profesor.

---

## Ponderación por PS

| Componente | Peso |
|---|---|
| Resultado (respuestas correctas) | 60% |
| Proceso (commits + uso del bot) | 20% |
| Peer review (como revisor y como autor) | 20% |

---

## Resumen de requisitos mínimos por PS

| Requisito | Mínimo |
|---|---|
| Commits antes de la entrega final | 3 en días distintos |
| Mensajes de commit | Descriptivos en todos |
| Consultas al bot documentadas | 3 por PS |
| Protocolo de consulta | Completo en cada consulta |
| Archivos entregados | `.Rmd` + `.pdf` que compila |
| Comentarios de peer review | 2 respuestas con líneas específicas |
| Sugerencia de mejora | 1 por revisión |
| Respuesta a comentarios recibidos | Obligatoria |

---

*Econometría LECO — CIDE | Cualquier duda sobre estas reglas, consúltala en la primera sesión de laboratorio y en clase.*
