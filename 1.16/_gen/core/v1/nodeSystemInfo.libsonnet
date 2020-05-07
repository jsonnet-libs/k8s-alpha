{
  withArchitecture(architecture): { architecture: architecture },
  withBootID(bootID): { bootID: bootID },
  withContainerRuntimeVersion(containerRuntimeVersion): { containerRuntimeVersion: containerRuntimeVersion },
  withKernelVersion(kernelVersion): { kernelVersion: kernelVersion },
  withKubeProxyVersion(kubeProxyVersion): { kubeProxyVersion: kubeProxyVersion },
  withKubeletVersion(kubeletVersion): { kubeletVersion: kubeletVersion },
  withMachineID(machineID): { machineID: machineID },
  withOperatingSystem(operatingSystem): { operatingSystem: operatingSystem },
  withOsImage(osImage): { osImage: osImage },
  withSystemUUID(systemUUID): { systemUUID: systemUUID },
  mixin: self
}