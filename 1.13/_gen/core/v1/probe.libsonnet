{
  withExec(exec): { exec: exec },
  withFailureThreshold(failureThreshold): { failureThreshold: failureThreshold },
  withHttpGet(httpGet): { httpGet: httpGet },
  withInitialDelaySeconds(initialDelaySeconds): { initialDelaySeconds: initialDelaySeconds },
  withPeriodSeconds(periodSeconds): { periodSeconds: periodSeconds },
  withSuccessThreshold(successThreshold): { successThreshold: successThreshold },
  withTcpSocket(tcpSocket): { tcpSocket: tcpSocket },
  withTimeoutSeconds(timeoutSeconds): { timeoutSeconds: timeoutSeconds },
  mixin: self
}