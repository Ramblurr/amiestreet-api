/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class PlaylistVO {
    public var id:String;
    public var title:String;
    public var description:String;
    public var avg_rating:int;
    public var image:ImageVO;
    public var url:String;

    public function PlaylistVO(remote:Object = null) {
      if(remote != null) {
        id = remote.id;
        title = remote.title;
        description = remote.description;
        avg_rating = remote.avg_rating;
        image = new ImageVO(remote.image);
        url = remote.url;
      }
    }
  }
}
