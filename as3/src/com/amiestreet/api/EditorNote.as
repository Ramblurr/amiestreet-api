/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class EditorNote {
    public var note:String;
    public var tags:Array;

    public function EditorNote(remote:Object = null) {
      if(remote != null) {
        note = remote.note;
        tags = ThriftUtils.makeList(String, remote.tags);
      }
    }
  }
}
