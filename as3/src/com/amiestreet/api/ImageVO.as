/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class ImageVO {
    public var id:String;
    public var small:String;
    public var medium:String;
    public var large:String;
    public var xsmall:String;

    public function ImageVO(remote:Object = null) {
      if(remote != null) {
        id = remote.id;
        small = remote.small;
        medium = remote.medium;
        large = remote.large;
        xsmall = remote.xsmall;
      }
    }
  }
}
