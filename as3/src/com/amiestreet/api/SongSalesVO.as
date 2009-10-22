/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class SongSalesVO {
    public var song:SongVO;
    public var singleCount:int;
    public var singleRevenue:Number;
    public var quarterArtistOwed:Number;
    public var quarterRevenue:Number;
    public var quarterFreeBuys:int;
    public var quarterBuys:int;
    public var recCountQuarter:int;

    public function SongSalesVO(remote:Object = null) {
      if(remote != null) {
        song = new SongVO(remote.song);
        singleCount = remote.singleCount;
        singleRevenue = remote.singleRevenue;
        quarterArtistOwed = remote.quarterArtistOwed;
        quarterRevenue = remote.quarterRevenue;
        quarterFreeBuys = remote.quarterFreeBuys;
        quarterBuys = remote.quarterBuys;
        recCountQuarter = remote.recCountQuarter;
      }
    }
  }
}