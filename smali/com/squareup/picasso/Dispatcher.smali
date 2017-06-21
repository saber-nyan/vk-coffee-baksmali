.class Lcom/squareup/picasso/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;,
        Lcom/squareup/picasso/Dispatcher$DispatcherThread;,
        Lcom/squareup/picasso/Dispatcher$DispatcherHandler;
    }
.end annotation


# static fields
.field static final AIRPLANE_MODE_CHANGE:I = 0xa

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final BATCH_DELAY:I = 0xc8

.field private static final DISPATCHER_THREAD_NAME:Ljava/lang/String; = "Dispatcher"

.field static final HUNTER_BATCH_COMPLETE:I = 0x8

.field static final HUNTER_COMPLETE:I = 0x4

.field static final HUNTER_DECODE_FAILED:I = 0x6

.field static final HUNTER_DELAY_NEXT_BATCH:I = 0x7

.field static final HUNTER_RETRY:I = 0x5

.field static final NETWORK_STATE_CHANGE:I = 0x9

.field static final REQUEST_BATCH_RESUME:I = 0xd

.field static final REQUEST_CANCEL:I = 0x2

.field static final REQUEST_GCED:I = 0x3

.field static final REQUEST_SUBMIT:I = 0x1

.field private static final RETRY_DELAY:I = 0x1f4

.field static final TAG_PAUSE:I = 0xb

.field static final TAG_RESUME:I = 0xc


# instance fields
.field airplaneMode:Z

.field final batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final context:Landroid/content/Context;

.field final dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

.field final downloader:Lcom/squareup/picasso/Downloader;

.field final failedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final handler:Landroid/os/Handler;

.field final hunterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final mainThreadHandler:Landroid/os/Handler;

.field final pausedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final pausedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

.field final scansNetworkChanges:Z

.field final service:Ljava/util/concurrent/ExecutorService;

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "mainThreadHandler"    # Landroid/os/Handler;
    .param p4, "downloader"    # Lcom/squareup/picasso/Downloader;
    .param p5, "cache"    # Lcom/squareup/picasso/Cache;
    .param p6, "stats"    # Lcom/squareup/picasso/Stats;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-direct {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    .line 102
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->start()V

    .line 103
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->flushStackLocalLeaks(Landroid/os/Looper;)V

    .line 104
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->failedActions:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->pausedTags:Ljava/util/Set;

    .line 110
    new-instance v0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v1}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/Dispatcher;)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    .line 112
    iput-object p3, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 113
    iput-object p5, p0, Lcom/squareup/picasso/Dispatcher;->cache:Lcom/squareup/picasso/Cache;

    .line 114
    iput-object p6, p0, Lcom/squareup/picasso/Dispatcher;->stats:Lcom/squareup/picasso/Stats;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->airplaneMode:Z

    .line 117
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/squareup/picasso/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->scansNetworkChanges:Z

    .line 118
    new-instance v0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;-><init>(Lcom/squareup/picasso/Dispatcher;)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    .line 119
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->register()V

    .line 120
    return-void
.end method

.method private batch(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 4
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    const/4 v1, 0x7

    .line 447
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private flushFailedActions()V
    .locals 5

    .prologue
    .line 410
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 414
    .local v0, "action":Lcom/squareup/picasso/Action;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 415
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/squareup/picasso/Dispatcher;->performSubmit(Lcom/squareup/picasso/Action;Z)V

    goto :goto_0

    .line 421
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/Action;>;"
    :cond_1
    return-void
.end method

.method private logBatch(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/BitmapHunter;

    .line 459
    .local v2, "hunter":Lcom/squareup/picasso/BitmapHunter;
    invoke-virtual {v2}, Lcom/squareup/picasso/BitmapHunter;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 460
    .local v3, "picasso":Lcom/squareup/picasso/Picasso;
    iget-boolean v4, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v4, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 463
    .local v0, "bitmapHunter":Lcom/squareup/picasso/BitmapHunter;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_2
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    .end local v0    # "bitmapHunter":Lcom/squareup/picasso/BitmapHunter;
    :cond_3
    const-string v4, "Dispatcher"

    const-string v5, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private markForReplay(Lcom/squareup/picasso/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 440
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/squareup/picasso/Action;->willReplay:Z

    .line 442
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_0
    return-void
.end method

.method private markForReplay(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 5
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getAction()Lcom/squareup/picasso/Action;

    move-result-object v0

    .line 425
    .local v0, "action":Lcom/squareup/picasso/Action;
    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Dispatcher;->markForReplay(Lcom/squareup/picasso/Action;)V

    .line 428
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object v3

    .line 429
    .local v3, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    if-eqz v3, :cond_1

    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 432
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/Action;

    .line 433
    .local v2, "join":Lcom/squareup/picasso/Action;
    invoke-direct {p0, v2}, Lcom/squareup/picasso/Dispatcher;->markForReplay(Lcom/squareup/picasso/Action;)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v1    # "i":I
    .end local v2    # "join":Lcom/squareup/picasso/Action;
    .end local v4    # "n":I
    :cond_1
    return-void
.end method


# virtual methods
.method dispatchAirplaneModeChange(Z)V
    .locals 5
    .param p1, "airplaneMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void

    :cond_0
    move v0, v1

    .line 170
    goto :goto_0
.end method

.method dispatchCancel(Lcom/squareup/picasso/Action;)V
    .locals 3
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 3
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 3
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method dispatchPauseTag(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method dispatchResumeTag(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 4
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    return-void
.end method

.method dispatchSubmit(Lcom/squareup/picasso/Action;)V
    .locals 3
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method

.method performAirplaneModeChange(Z)V
    .locals 0
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/squareup/picasso/Dispatcher;->airplaneMode:Z

    .line 397
    return-void
.end method

.method performBatchComplete()V
    .locals 4

    .prologue
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 382
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Dispatcher;->logBatch(Ljava/util/List;)V

    .line 384
    return-void
.end method

.method performCancel(Lcom/squareup/picasso/Action;)V
    .locals 7
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 216
    .local v0, "hunter":Lcom/squareup/picasso/BitmapHunter;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/BitmapHunter;->detach(Lcom/squareup/picasso/Action;)V

    .line 218
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->cancel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_0

    .line 221
    const-string v3, "Dispatcher"

    const-string v4, "canceled"

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "Dispatcher"

    const-string v4, "canceled"

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "because paused request got canceled"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/Action;

    .line 235
    .local v2, "remove":Lcom/squareup/picasso/Action;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_2

    .line 236
    const-string v3, "Dispatcher"

    const-string v4, "canceled"

    invoke-virtual {v2}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from replaying"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_2
    return-void
.end method

.method performComplete(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 4
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getMemoryPolicy()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->shouldWriteToMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->cache:Lcom/squareup/picasso/Cache;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/picasso/Cache;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->batch(Lcom/squareup/picasso/BitmapHunter;)V

    .line 374
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "Dispatcher"

    const-string v1, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "for completion"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    return-void
.end method

.method performError(Lcom/squareup/picasso/BitmapHunter;Z)V
    .locals 5
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;
    .param p2, "willReplay"    # Z

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 388
    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    const-string v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->batch(Lcom/squareup/picasso/BitmapHunter;)V

    .line 393
    return-void

    .line 388
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method performNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/PicassoExecutorService;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->adjustThreadCount(Landroid/net/NetworkInfo;)V

    .line 404
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/squareup/picasso/Dispatcher;->flushFailedActions()V

    .line 407
    :cond_1
    return-void
.end method

.method performPauseTag(Ljava/lang/Object;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 242
    iget-object v8, p0, Lcom/squareup/picasso/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 295
    :cond_0
    return-void

    .line 248
    :cond_1
    iget-object v8, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/BitmapHunter;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/BitmapHunter;

    .line 250
    .local v2, "hunter":Lcom/squareup/picasso/BitmapHunter;
    invoke-virtual {v2}, Lcom/squareup/picasso/BitmapHunter;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v8

    iget-boolean v6, v8, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 252
    .local v6, "loggingEnabled":Z
    invoke-virtual {v2}, Lcom/squareup/picasso/BitmapHunter;->getAction()Lcom/squareup/picasso/Action;

    move-result-object v7

    .line 253
    .local v7, "single":Lcom/squareup/picasso/Action;
    invoke-virtual {v2}, Lcom/squareup/picasso/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object v5

    .line 254
    .local v5, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v1, 0x1

    .line 257
    .local v1, "hasMultiple":Z
    :goto_1
    if-nez v7, :cond_3

    if-eqz v1, :cond_2

    .line 261
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 262
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/BitmapHunter;->detach(Lcom/squareup/picasso/Action;)V

    .line 263
    iget-object v8, p0, Lcom/squareup/picasso/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    if-eqz v6, :cond_4

    .line 265
    const-string v8, "Dispatcher"

    const-string v9, "paused"

    iget-object v10, v7, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v10}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "because tag \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' was paused"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_4
    if-eqz v1, :cond_8

    .line 271
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_8

    .line 272
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 273
    .local v0, "action":Lcom/squareup/picasso/Action;
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 271
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 254
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    .end local v1    # "hasMultiple":Z
    .end local v3    # "i":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 277
    .restart local v0    # "action":Lcom/squareup/picasso/Action;
    .restart local v1    # "hasMultiple":Z
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/BitmapHunter;->detach(Lcom/squareup/picasso/Action;)V

    .line 278
    iget-object v8, p0, Lcom/squareup/picasso/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    if-eqz v6, :cond_5

    .line 280
    const-string v8, "Dispatcher"

    const-string v9, "paused"

    iget-object v10, v0, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v10}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "because tag \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' was paused"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 288
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/squareup/picasso/BitmapHunter;->cancel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 290
    if-eqz v6, :cond_2

    .line 291
    const-string v8, "Dispatcher"

    const-string v9, "canceled"

    invoke-static {v2}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "all actions paused"

    invoke-static {v8, v9, v10, v11}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method performResumeTag(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 299
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    .local v1, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/picasso/Action;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 306
    .local v0, "action":Lcom/squareup/picasso/Action;
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    if-nez v1, :cond_3

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .restart local v1    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 315
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    :cond_4
    if-eqz v1, :cond_0

    .line 316
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method performRetry(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 10
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v8, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 324
    invoke-virtual {p0, p1, v7}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;Z)V

    goto :goto_0

    .line 328
    :cond_2
    const/4 v2, 0x0

    .line 329
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v8, p0, Lcom/squareup/picasso/Dispatcher;->scansNetworkChanges:Z

    if-eqz v8, :cond_3

    .line 330
    iget-object v8, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-static {v8, v9}, Lcom/squareup/picasso/Utils;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 334
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    move v1, v6

    .line 335
    .local v1, "hasConnectivity":Z
    :goto_1
    iget-boolean v8, p0, Lcom/squareup/picasso/Dispatcher;->airplaneMode:Z

    invoke-virtual {p1, v8, v2}, Lcom/squareup/picasso/BitmapHunter;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v3

    .line 336
    .local v3, "shouldRetryHunter":Z
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->supportsReplay()Z

    move-result v4

    .line 338
    .local v4, "supportsReplay":Z
    if-nez v3, :cond_6

    .line 340
    iget-boolean v8, p0, Lcom/squareup/picasso/Dispatcher;->scansNetworkChanges:Z

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    move v5, v6

    .line 341
    .local v5, "willReplay":Z
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;Z)V

    .line 342
    if-eqz v5, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->markForReplay(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .end local v1    # "hasConnectivity":Z
    .end local v3    # "shouldRetryHunter":Z
    .end local v4    # "supportsReplay":Z
    .end local v5    # "willReplay":Z
    :cond_4
    move v1, v7

    .line 334
    goto :goto_1

    .restart local v1    # "hasConnectivity":Z
    .restart local v3    # "shouldRetryHunter":Z
    .restart local v4    # "supportsReplay":Z
    :cond_5
    move v5, v7

    .line 340
    goto :goto_2

    .line 349
    :cond_6
    iget-boolean v6, p0, Lcom/squareup/picasso/Dispatcher;->scansNetworkChanges:Z

    if-eqz v6, :cond_7

    if-eqz v1, :cond_a

    .line 350
    :cond_7
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-boolean v6, v6, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v6, :cond_8

    .line 351
    const-string v6, "Dispatcher"

    const-string v7, "retrying"

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_8
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getException()Ljava/lang/Exception;

    move-result-object v6

    instance-of v6, v6, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    if-eqz v6, :cond_9

    .line 355
    iget v6, p1, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    sget-object v7, Lcom/squareup/picasso/NetworkPolicy;->NO_CACHE:Lcom/squareup/picasso/NetworkPolicy;

    iget v7, v7, Lcom/squareup/picasso/NetworkPolicy;->index:I

    or-int/2addr v6, v7

    iput v6, p1, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 357
    :cond_9
    iget-object v6, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, p1, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 361
    :cond_a
    invoke-virtual {p0, p1, v4}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;Z)V

    .line 363
    if-eqz v4, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->markForReplay(Lcom/squareup/picasso/BitmapHunter;)V

    goto/16 :goto_0
.end method

.method performSubmit(Lcom/squareup/picasso/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/Dispatcher;->performSubmit(Lcom/squareup/picasso/Action;Z)V

    .line 176
    return-void
.end method

.method performSubmit(Lcom/squareup/picasso/Action;Z)V
    .locals 6
    .param p1, "action"    # Lcom/squareup/picasso/Action;
    .param p2, "dismissFailed"    # Z

    .prologue
    .line 179
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "Dispatcher"

    const-string v2, "paused"

    iget-object v3, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "because tag \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is paused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 189
    .local v0, "hunter":Lcom/squareup/picasso/BitmapHunter;
    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/BitmapHunter;->attach(Lcom/squareup/picasso/Action;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "Dispatcher"

    const-string v2, "ignored"

    iget-object v3, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "because shut down"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->cache:Lcom/squareup/picasso/Cache;

    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->stats:Lcom/squareup/picasso/Stats;

    invoke-static {v1, p0, v2, v3, p1}, Lcom/squareup/picasso/BitmapHunter;->forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 203
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-eqz p2, :cond_4

    .line 205
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "Dispatcher"

    const-string v2, "enqueued"

    iget-object v3, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/PicassoExecutorService;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    invoke-interface {v0}, Lcom/squareup/picasso/Downloader;->shutdown()V

    .line 128
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->quit()Z

    .line 130
    sget-object v0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/Dispatcher$1;

    invoke-direct {v1, p0}, Lcom/squareup/picasso/Dispatcher$1;-><init>(Lcom/squareup/picasso/Dispatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
