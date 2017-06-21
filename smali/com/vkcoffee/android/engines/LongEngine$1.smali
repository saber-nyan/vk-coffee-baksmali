.class Lcom/vkcoffee/android/engines/LongEngine$1;
.super Ljava/lang/Thread;
.source "LongEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/engines/LongEngine;->updatePersistentStorage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/engines/LongEngine;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/engines/LongEngine;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/engines/LongEngine;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    iput p2, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->val$from:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 138
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$000(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$100(Lcom/vkcoffee/android/engines/LongEngine;)J

    move-result-wide v6

    iget v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->val$from:I

    int-to-long v8, v3

    mul-long v0, v6, v8

    .line 141
    .local v0, "bytePosition":J
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$200(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/io/RandomAccessFile;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$200(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/io/RandomAccessFile;

    move-result-object v3

    iget-object v5, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v5}, Lcom/vkcoffee/android/engines/LongEngine;->access$300(Lcom/vkcoffee/android/engines/LongEngine;)[J

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->val$from:I

    aget-wide v6, v5, v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 144
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$200(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/io/RandomAccessFile;

    move-result-object v3

    iget-object v5, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v5}, Lcom/vkcoffee/android/engines/LongEngine;->access$400(Lcom/vkcoffee/android/engines/LongEngine;)[J

    move-result-object v5

    iget v6, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->val$from:I

    aget-wide v6, v5, v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 146
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$500(Lcom/vkcoffee/android/engines/LongEngine;)I

    move-result v3

    if-lez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$200(Lcom/vkcoffee/android/engines/LongEngine;)Ljava/io/RandomAccessFile;

    move-result-object v5

    iget-object v3, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->this$0:Lcom/vkcoffee/android/engines/LongEngine;

    invoke-static {v3}, Lcom/vkcoffee/android/engines/LongEngine;->access$600(Lcom/vkcoffee/android/engines/LongEngine;)[Ljava/lang/Object;

    move-result-object v3

    iget v6, p0, Lcom/vkcoffee/android/engines/LongEngine$1;->val$from:I

    aget-object v3, v3, v6

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    :try_start_1
    monitor-exit v4

    .line 153
    return-void

    .line 149
    .end local v0    # "bytePosition":J
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
