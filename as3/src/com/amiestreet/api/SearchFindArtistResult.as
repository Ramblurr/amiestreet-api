/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class SearchFindArtistResult {
    public var query:String;
    public var found:Boolean;
    public var id:String;
    public var name:String;
    public var url:String;

    public function SearchFindArtistResult(remote:Object = null) {
      if(remote != null) {
        query = remote.query;
        found = remote.found;
        id = new String(remote.id);
        name = remote.name;
        url = remote.url;
      }
    }
  }
}
