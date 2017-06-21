.class Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private final mLock:[Ljava/lang/Object;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/news/ViewServer;Ljava/net/Socket;)V
    .locals 2
    .param p2, "client"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 559
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    .line 560
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 561
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 562
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 563
    return-void
.end method

.method private findWindow(I)Landroid/view/View;
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 679
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, "window":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 683
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$400(Lcom/vkcoffee/android/fragments/news/ViewServer;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 702
    .end local v1    # "window":Landroid/view/View;
    :goto_0
    return-object v1

    .line 685
    .restart local v1    # "window":Landroid/view/View;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 691
    .end local v1    # "window":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 693
    :try_start_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$500(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 694
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 695
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 699
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v2

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 702
    const/4 v1, 0x0

    goto :goto_0

    .line 699
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method private getFocusedWindow(Ljava/net/Socket;)Z
    .locals 10
    .param p1, "client"    # Ljava/net/Socket;

    .prologue
    .line 742
    const/4 v7, 0x1

    .line 743
    .local v7, "result":Z
    const/4 v3, 0x0

    .line 745
    .local v3, "focusName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 747
    .local v5, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 748
    .local v1, "clientStream":Ljava/io/OutputStream;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 750
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .local v6, "out":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 752
    .local v4, "focusedWindow":Landroid/view/View;
    :try_start_1
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$600(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 754
    :try_start_2
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$400(Lcom/vkcoffee/android/fragments/news/ViewServer;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 756
    :try_start_3
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$600(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 759
    if-eqz v4, :cond_0

    .line 760
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 762
    :try_start_4
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$500(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$400(Lcom/vkcoffee/android/fragments/news/ViewServer;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 764
    :try_start_5
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 767
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 768
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    .line 769
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 771
    :cond_0
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    .line 772
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 776
    if-eqz v6, :cond_3

    .line 778
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v5, v6

    .line 785
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "focusedWindow":Landroid/view/View;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v7

    .line 756
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "focusedWindow":Landroid/view/View;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v8

    :try_start_7
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$600(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 773
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 774
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "focusedWindow":Landroid/view/View;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :goto_1
    const/4 v7, 0x0

    .line 776
    if-eqz v5, :cond_1

    .line 778
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 779
    :catch_1
    move-exception v2

    .line 780
    .local v2, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    .line 781
    goto :goto_0

    .line 764
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "focusedWindow":Landroid/view/View;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    :try_start_9
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 776
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "focusedWindow":Landroid/view/View;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v5, :cond_2

    .line 778
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 781
    :cond_2
    :goto_3
    throw v8

    .line 779
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "focusedWindow":Landroid/view/View;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    .line 780
    .restart local v2    # "e":Ljava/io/IOException;
    const/4 v7, 0x0

    move-object v5, v6

    .line 781
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 779
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "focusedWindow":Landroid/view/View;
    :catch_3
    move-exception v2

    .line 780
    .restart local v2    # "e":Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_3

    .line 776
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v8

    goto :goto_2

    .line 773
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "focusedWindow":Landroid/view/View;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :cond_3
    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private listWindows(Ljava/net/Socket;)Z
    .locals 8
    .param p1, "client"    # Ljava/net/Socket;

    .prologue
    .line 706
    const/4 v5, 0x1

    .line 707
    .local v5, "result":Z
    const/4 v3, 0x0

    .line 710
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 712
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 713
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$500(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 716
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 717
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 718
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 719
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 724
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 725
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_1
    const/4 v5, 0x0

    .line 727
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 729
    if-eqz v3, :cond_0

    .line 731
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 738
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return v5

    .line 722
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :try_start_3
    const-string/jumbo v6, "DONE.\n"

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 727
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 729
    if-eqz v4, :cond_3

    .line 731
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 734
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 732
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .line 733
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    move-object v3, v4

    .line 734
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 732
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 733
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 734
    goto :goto_2

    .line 727
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 729
    if-eqz v3, :cond_2

    .line 731
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 734
    :cond_2
    :goto_4
    throw v6

    .line 732
    :catch_3
    move-exception v1

    .line 733
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_4

    .line 727
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 724
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "client"    # Ljava/net/Socket;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/lang/String;

    .prologue
    .line 624
    const/4 v9, 0x1

    .line 625
    .local v9, "success":Z
    const/4 v7, 0x0

    .line 629
    .local v7, "out":Ljava/io/BufferedWriter;
    const/16 v11, 0x20

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 630
    .local v6, "index":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_0

    .line 631
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 633
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "code":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-static {v2, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    .line 637
    .local v5, "hashCode":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 638
    add-int/lit8 v11, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 643
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->findWindow(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 644
    .local v10, "window":Landroid/view/View;
    if-nez v10, :cond_3

    .line 645
    const/4 v11, 0x0

    .line 666
    if-eqz v7, :cond_1

    .line 668
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    .end local v2    # "code":Ljava/lang/String;
    .end local v5    # "hashCode":I
    .end local v6    # "index":I
    .end local v10    # "window":Landroid/view/View;
    :cond_1
    :goto_1
    return v11

    .line 640
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v5    # "hashCode":I
    .restart local v6    # "index":I
    :cond_2
    :try_start_2
    const-string/jumbo p3, ""

    goto :goto_0

    .line 669
    .restart local v10    # "window":Landroid/view/View;
    :catch_0
    move-exception v4

    .line 670
    .local v4, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    goto :goto_1

    .line 649
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    const-class v11, Landroid/view/ViewDebug;

    const-string/jumbo v12, "dispatchCommand"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/view/View;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-class v15, Ljava/io/OutputStream;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 651
    .local v3, "dispatch":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 652
    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    new-instance v14, Lcom/vkcoffee/android/fragments/news/ViewServer$UncloseableOutputStream;

    .line 653
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/vkcoffee/android/fragments/news/ViewServer$UncloseableOutputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v14, v12, v13

    .line 652
    invoke-virtual {v3, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v11

    if-nez v11, :cond_4

    .line 656
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .local v8, "out":Ljava/io/BufferedWriter;
    :try_start_3
    const-string/jumbo v11, "DONE\n"

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v8

    .line 666
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :cond_4
    if-eqz v7, :cond_5

    .line 668
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "dispatch":Ljava/lang/reflect/Method;
    .end local v5    # "hashCode":I
    .end local v6    # "index":I
    .end local v10    # "window":Landroid/view/View;
    :cond_5
    :goto_2
    move v11, v9

    .line 675
    goto :goto_1

    .line 669
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v3    # "dispatch":Ljava/lang/reflect/Method;
    .restart local v5    # "hashCode":I
    .restart local v6    # "index":I
    .restart local v10    # "window":Landroid/view/View;
    :catch_1
    move-exception v4

    .line 670
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v9, 0x0

    .line 671
    goto :goto_2

    .line 661
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "dispatch":Ljava/lang/reflect/Method;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "hashCode":I
    .end local v6    # "index":I
    .end local v10    # "window":Landroid/view/View;
    :catch_2
    move-exception v4

    .line 662
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v11, "ViewServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not send command "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " with parameters "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 664
    const/4 v9, 0x0

    .line 666
    if-eqz v7, :cond_5

    .line 668
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 669
    :catch_3
    move-exception v4

    .line 670
    .local v4, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    .line 671
    goto :goto_2

    .line 666
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_6

    .line 668
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 671
    :cond_6
    :goto_5
    throw v11

    .line 669
    :catch_4
    move-exception v4

    .line 670
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v9, 0x0

    goto :goto_5

    .line 666
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v3    # "dispatch":Ljava/lang/reflect/Method;
    .restart local v5    # "hashCode":I
    .restart local v6    # "index":I
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v10    # "window":Landroid/view/View;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 661
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method private windowManagerAutolistLoop()Z
    .locals 7

    .prologue
    .line 803
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v5, p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$700(Lcom/vkcoffee/android/fragments/news/ViewServer;Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V

    .line 804
    const/4 v3, 0x0

    .line 806
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 807
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 808
    const/4 v2, 0x0

    .line 809
    .local v2, "needWindowListUpdate":Z
    const/4 v1, 0x0

    .line 810
    .local v1, "needFocusedWindowUpdate":Z
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    :goto_1
    :try_start_2
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v5, :cond_2

    .line 812
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 822
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 832
    .end local v1    # "needFocusedWindowUpdate":Z
    .end local v2    # "needWindowListUpdate":Z
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 833
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_4
    const-string/jumbo v5, "ViewServer"

    const-string/jumbo v6, "Connection error: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 835
    if-eqz v3, :cond_1

    .line 837
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 842
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v5, p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$800(Lcom/vkcoffee/android/fragments/news/ViewServer;Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v5, 0x1

    return v5

    .line 814
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "needFocusedWindowUpdate":Z
    .restart local v2    # "needWindowListUpdate":Z
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_6
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v5, :cond_3

    .line 815
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 816
    const/4 v2, 0x1

    .line 818
    :cond_3
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_4

    .line 819
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 820
    const/4 v1, 0x1

    .line 822
    :cond_4
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 823
    if-eqz v2, :cond_5

    .line 824
    :try_start_7
    const-string/jumbo v5, "LIST UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 827
    :cond_5
    if-eqz v1, :cond_0

    .line 828
    const-string/jumbo v5, "FOCUS UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 835
    .end local v1    # "needFocusedWindowUpdate":Z
    .end local v2    # "needWindowListUpdate":Z
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v3, :cond_6

    .line 837
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 842
    :cond_6
    :goto_6
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v6, p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$800(Lcom/vkcoffee/android/fragments/news/ViewServer;Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V

    throw v5

    .line 835
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v4, :cond_8

    .line 837
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 842
    :cond_8
    :goto_7
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->this$0:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-static {v5, p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$800(Lcom/vkcoffee/android/fragments/news/ViewServer;Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V

    move-object v3, v4

    .line 843
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 838
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v5

    goto :goto_7

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 835
    :catchall_2
    move-exception v5

    goto :goto_5

    .line 832
    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public focusChanged()V
    .locals 2

    .prologue
    .line 796
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 797
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 798
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 799
    monitor-exit v1

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 566
    const/4 v2, 0x0

    .line 568
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, "request":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 576
    .local v4, "index":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 577
    move-object v0, v6

    .line 578
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 585
    .local v5, "parameters":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 586
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 599
    .local v7, "result":Z
    :goto_1
    if-nez v7, :cond_0

    .line 600
    const-string/jumbo v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "An error occurred with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 605
    :cond_0
    if-eqz v3, :cond_1

    .line 607
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 613
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_c

    .line 615
    :try_start_3
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 621
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    return-void

    .line 580
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v6    # "request":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 581
    .restart local v0    # "command":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "parameters":Ljava/lang/String;
    goto :goto_0

    .line 587
    :cond_4
    const-string/jumbo v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 588
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/news/ViewServer;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 589
    .end local v7    # "result":Z
    :cond_5
    const-string/jumbo v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 590
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->listWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 591
    .end local v7    # "result":Z
    :cond_6
    const-string/jumbo v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 592
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->getFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 593
    .end local v7    # "result":Z
    :cond_7
    const-string/jumbo v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 594
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 596
    .end local v7    # "result":Z
    :cond_8
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8, v0, v5}, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 616
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 617
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 618
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 602
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    :catch_2
    move-exception v1

    .line 603
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string/jumbo v8, "ViewServer"

    const-string/jumbo v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 605
    if-eqz v2, :cond_9

    .line 607
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 613
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_2

    .line 615
    :try_start_7
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 616
    :catch_3
    move-exception v1

    .line 617
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 609
    :catch_4
    move-exception v1

    .line 610
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 605
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v2, :cond_a

    .line 607
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 613
    :cond_a
    :goto_7
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_b

    .line 615
    :try_start_9
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 618
    :cond_b
    :goto_8
    throw v8

    .line 609
    :catch_5
    move-exception v1

    .line 610
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 616
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 617
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 605
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 602
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v5    # "parameters":Ljava/lang/String;
    .restart local v6    # "request":Ljava/lang/String;
    .restart local v7    # "result":Z
    :cond_c
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public windowsChanged()V
    .locals 2

    .prologue
    .line 789
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 790
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 791
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 792
    monitor-exit v1

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
