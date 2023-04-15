uniform float uWaveLength;

void main() {
   vec4 modelPosition = modelMatrix * vec4(position, 1.0);

   modelPosition.y += sin(modelPosition.x) * uWaveLength;

   vec4 viewPosition = viewMatrix * modelPosition;
   vec4 projectionPosition = projectionMatrix * viewPosition;

   gl_Position = projectionPosition;
}