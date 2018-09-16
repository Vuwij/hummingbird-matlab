package mavros_msgs;

public interface FileChecksum$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros_msgs/FileChecksum$Service";
  static final java.lang.String _DEFINITION = "# FTP::Checksum\n#\n# :file_path:\tfile to calculate checksum\n# :crc32:\tfile checksum\n# :success:\tindicates success end of request\n# :r_errno:\tremote errno if applicapable\n\nstring file_path\n---\nuint32 crc32\nbool success\nint32 r_errno\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}