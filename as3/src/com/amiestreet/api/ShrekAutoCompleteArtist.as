/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class ShrekAutoCompleteArtist {
    public var p_id:String;
    public var name:String;

    public function ShrekAutoCompleteArtist(remote:Object = null) {
      if(remote != null) {
        p_id = remote.p_id;
        name = remote.name;
      }
    }
  }
}