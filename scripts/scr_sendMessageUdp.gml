// Sends a messsage through udp to the given client
// argument0 - the client's address (as a string, i.e. ip:port)
// argument1 - a buffer holding the message to send to the clients
var address = argument0;
var buffer = argument1;

var delim = string_pos(":", address);
var ip = string_copy(address, 0, delim-1);
var port = real(string_copy(address, delim+1, string_length(address)-delim));
network_send_udp(socketID, ip, port, buffer, buffer_tell(buffer) );
