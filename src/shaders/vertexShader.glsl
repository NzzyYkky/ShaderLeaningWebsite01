uniform float uWaveLength;
uniform vec2 uFrequency;

void main() {
   vec4 modelPosition = modelMatrix * vec4(position, 1.0);

   float elevation = sin(modelPosition.x * uFrequency.x) * uWaveLength
                        * sin(modelPosition.z * uFrequency.y) * uWaveLength;

   modelPosition.y += elevation;

   vec4 viewPosition = viewMatrix * modelPosition;
   vec4 projectionPosition = projectionMatrix * viewPosition;

   gl_Position = projectionPosition;
}