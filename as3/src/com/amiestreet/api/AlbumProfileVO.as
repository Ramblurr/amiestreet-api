/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class AlbumProfileVO {
    public var album:AlbumVO;
    public var songs:Array;

    public function AlbumProfileVO(remote:Object = null) {
      if(remote != null) {
        album = new AlbumVO(remote.album);
        songs = ThriftUtils.makeList(SongVO, remote.songs);
      }
    }
  }
}
