{
  withNodeAffinity(nodeAffinity): { nodeAffinity: nodeAffinity },
  withPodAffinity(podAffinity): { podAffinity: podAffinity },
  withPodAntiAffinity(podAntiAffinity): { podAntiAffinity: podAntiAffinity },
  mixin: self
}