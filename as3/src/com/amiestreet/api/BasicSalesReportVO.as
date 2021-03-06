/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class BasicSalesReportVO {
    public var artistSales:Array;
    public var albumSales:Array;
    public var songSales:Array;

    public function BasicSalesReportVO(remote:Object = null) {
      if(remote != null) {
        artistSales = ThriftUtils.makeList(ArtistSalesVO, remote.artistSales);
        albumSales = ThriftUtils.makeList(AlbumSalesVO, remote.albumSales);
        songSales = ThriftUtils.makeList(SongSalesVO, remote.songSales);
      }
    }
  }
}
