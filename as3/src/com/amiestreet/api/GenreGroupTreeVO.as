/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class GenreGroupTreeVO {
    public var genreGroup:GenreGroupVO;
    public var primaryGenres:Array;
    public var listedGenres:Array;

    public function GenreGroupTreeVO(remote:Object = null) {
      if(remote != null) {
        genreGroup = new GenreGroupVO(remote.genreGroup);
        primaryGenres = ThriftUtils.makeList(GenreVO, remote.primaryGenres);
        listedGenres = ThriftUtils.makeList(GenreVO, remote.listedGenres);
      }
    }
  }
}