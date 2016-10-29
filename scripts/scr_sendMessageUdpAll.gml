// Sends a messsage through udp to the given clients
// argument0 - a map of the clients with the keys being the ip and port (as a string, i.e. ip:port)
// argument1 - a buffer holding the message to send to the clients
var clients = argument0;
var buffer = argument1;

for(var address=ds_map_find_first(clients);!is_undefined(address);address=ds_map_find_next(clients, address)){
    var split = scr_splitString(address, ":");
    network_send_udp(socketID, split[0], real(split[1]), buffer, buffer_tell(buffer) );
}
