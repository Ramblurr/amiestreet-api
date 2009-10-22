/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class ArtistSalesVO {
    public var artist:ArtistVO;
    public var quarterRevenue:Number;
    public var quarterArtistOwed:Number;
    public var recCountQuarter:int;
    public var quarterFreeBuys:int;
    public var quarterBuys:int;

    public function ArtistSalesVO(remote:Object = null) {
      if(remote != null) {
        artist = new ArtistVO(remote.artist);
        quarterRevenue = remote.quarterRevenue;
        quarterArtistOwed = remote.quarterArtistOwed;
        recCountQuarter = remote.recCountQuarter;
        quarterFreeBuys = remote.quarterFreeBuys;
        quarterBuys = remote.quarterBuys;
      }
    }
  }
}