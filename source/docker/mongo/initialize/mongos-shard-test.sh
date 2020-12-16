docker exec -it mongo-mongos-01 mongo daemon -u daemon -p cde3VFR$
sh.enableSharding("daemon")
# Creation collection
db.createCollection("book")
# Creation shard hashed
sh.shardCollection("daemon.book", {bookId:"hashed"}, false, { numInitialChunks: 3} )
var cnt = 0;
# Insert 1w records
for(var i=0; i<100; i++){
    var dl = [];
    for(var j=0; j<100; j++){
        dl.push({
                "bookId" : "BBK-" + i + "-" + j,
                "type" : "Revision",
                "version" : "IricSoneVB0001",
                "title" : "Jackson's Life",
                "subCount" : 10,
                "location" : "China CN Shenzhen Futian District",
                "author" : {
                      "name" : 50,
                      "email" : "RichardFoo@yahoo.com",
                      "gender" : "female"
                },
                "createTime" : new Date()
            });
      }
      cnt += dl.length;
      db.book.insertMany(dl);
      print("insert ", cnt);
}
# 查看文档数量
db.book.find().count();
# 查看分片状态
db.book.getShardDistribution();
# 删除测试数据
db.book.drop();