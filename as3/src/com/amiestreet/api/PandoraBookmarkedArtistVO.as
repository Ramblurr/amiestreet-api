/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class PandoraBookmarkedArtistVO {
    public var name:String;
    public var photoUrl:String;

    public function PandoraBookmarkedArtistVO(remote:Object = null) {
      if(remote != null) {
        name = remote.name;
        photoUrl = remote.photoUrl;
      }
    }
  }
}
