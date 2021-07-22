# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from prac_publisher/prac_msg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class prac_msg(genpy.Message):
  _md5sum = "82455cb8167941750708f765e66e4c5e"
  _type = "prac_publisher/prac_msg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Float32 float_data
std_msgs/String string_data
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/String
string data
"""
  __slots__ = ['float_data','string_data']
  _slot_types = ['std_msgs/Float32','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       float_data,string_data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(prac_msg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.float_data is None:
        self.float_data = std_msgs.msg.Float32()
      if self.string_data is None:
        self.string_data = std_msgs.msg.String()
    else:
      self.float_data = std_msgs.msg.Float32()
      self.string_data = std_msgs.msg.String()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.float_data.data
      buff.write(_get_struct_f().pack(_x))
      _x = self.string_data.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.float_data is None:
        self.float_data = std_msgs.msg.Float32()
      if self.string_data is None:
        self.string_data = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (self.float_data.data,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.string_data.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.string_data.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.float_data.data
      buff.write(_get_struct_f().pack(_x))
      _x = self.string_data.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.float_data is None:
        self.float_data = std_msgs.msg.Float32()
      if self.string_data is None:
        self.string_data = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (self.float_data.data,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.string_data.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.string_data.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
