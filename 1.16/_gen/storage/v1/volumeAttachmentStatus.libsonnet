{
  // VolumeError captures an error encountered during a volume operation.
  attachError: {
    withMessage(message): { attachError+: { message: message } },
    withTime(time): { attachError+: { time: time } }
  },
  // VolumeError captures an error encountered during a volume operation.
  detachError: {
    withMessage(message): { detachError+: { message: message } },
    withTime(time): { detachError+: { time: time } }
  },
  withAttached(attached): { attached: attached },
  withAttachmentMetadata(attachmentMetadata): { attachmentMetadata: attachmentMetadata },
  withAttachmentMetadataMixin(attachmentMetadata): { attachmentMetadata+: attachmentMetadata },
  mixin: self
}