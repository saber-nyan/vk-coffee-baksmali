.class Lcom/vkcoffee/android/data/Analytics$StatsBackgroundRunner;
.super Lcom/vkcoffee/android/background/CancellableRunnable;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsBackgroundRunner"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/vkcoffee/android/background/CancellableRunnable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/data/Analytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/data/Analytics$1;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/vkcoffee/android/data/Analytics$StatsBackgroundRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 279
    :try_start_0
    sget-object v6, Lcom/vkcoffee/android/data/Analytics;->viewPostTime:Lcom/vkcoffee/android/data/Analytics$ViewPostTime;

    invoke-virtual {v6}, Lcom/vkcoffee/android/data/Analytics$ViewPostTime;->commit()V

    .line 280
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "analytics.log"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 284
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 285
    .local v4, "os":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$400()Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\n"

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$500()Ljava/util/Vector;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$500()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 288
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$400()Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 290
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "analytics_collapsed.log"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 297
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 299
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 300
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    .local v2, "k":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 307
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 308
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v5    # "x":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "analytics_events.log"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 315
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 316
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$400()Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\n"

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$700()Ljava/util/Vector;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .restart local v0    # "data":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$700()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 319
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$400()Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 321
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 325
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/vkcoffee/android/data/Analytics;->access$802(Lcom/vkcoffee/android/background/CancellableRunnable;)Lcom/vkcoffee/android/background/CancellableRunnable;

    .line 326
    return-void

    .line 291
    :catch_1
    move-exception v5

    .line 292
    .restart local v5    # "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 304
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\n"

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0    # "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 306
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 322
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 323
    .restart local v5    # "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
