1. SUBSCRIBE channelname
2. PUBLISH channelname
3. PSUBSCRIBE D* ( subscribe all channels starting with d )
4. UNSUBSCRIBE channelname
5. PUNSUBSCRIBE channelname
--------Streams----------
1. XADD mystream 10000 name Anna
2. XADD mystream * name Cathy
3. XADD mystream MAXLEN 1000 * name devs


![Streams PUBSUB](https://user-images.githubusercontent.com/81289215/131729787-b5761214-b609-4f63-9acf-ec9f320bf56c.png)
