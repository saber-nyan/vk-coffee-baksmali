.class public Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Picasso$LoadedFrom;,
        Lcom/squareup/picasso/Picasso$Builder;,
        Lcom/squareup/picasso/Picasso$CleanupThread;,
        Lcom/squareup/picasso/Picasso$Priority;,
        Lcom/squareup/picasso/Picasso$RequestTransformer;,
        Lcom/squareup/picasso/Picasso$Listener;
    }
.end annotation


# static fields
.field static final HANDLER:Landroid/os/Handler;

.field static final TAG:Ljava/lang/String; = "Picasso"

.field static volatile singleton:Lcom/squareup/picasso/Picasso;


# instance fields
.field final cache:Lcom/squareup/picasso/Cache;

.field private final cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

.field final context:Landroid/content/Context;

.field final defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field indicatorsEnabled:Z

.field private final listener:Lcom/squareup/picasso/Picasso$Listener;

.field volatile loggingEnabled:Z

.field final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

.field shutdown:Z

.field final stats:Lcom/squareup/picasso/Stats;

.field final targetToAction:Ljava/util/Map;
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

.field final targetToDeferredRequestCreator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/squareup/picasso/DeferredRequestCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/squareup/picasso/Picasso$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/Picasso$RequestTransformer;Ljava/util/List;Lcom/squareup/picasso/Stats;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p3, "cache"    # Lcom/squareup/picasso/Cache;
    .param p4, "listener"    # Lcom/squareup/picasso/Picasso$Listener;
    .param p5, "requestTransformer"    # Lcom/squareup/picasso/Picasso$RequestTransformer;
    .param p7, "stats"    # Lcom/squareup/picasso/Stats;
    .param p8, "defaultBitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p9, "indicatorsEnabled"    # Z
    .param p10, "loggingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/squareup/picasso/Dispatcher;",
            "Lcom/squareup/picasso/Cache;",
            "Lcom/squareup/picasso/Picasso$Listener;",
            "Lcom/squareup/picasso/Picasso$RequestTransformer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/RequestHandler;",
            ">;",
            "Lcom/squareup/picasso/Stats;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p6, "extraRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/RequestHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 169
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    .line 170
    iput-object p4, p0, Lcom/squareup/picasso/Picasso;->listener:Lcom/squareup/picasso/Picasso$Listener;

    .line 171
    iput-object p5, p0, Lcom/squareup/picasso/Picasso;->requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 172
    iput-object p8, p0, Lcom/squareup/picasso/Picasso;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 174
    const/4 v2, 0x7

    .line 175
    .local v2, "builtInHandlers":I
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v3

    .line 176
    .local v3, "extraCount":I
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    add-int v4, v2, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v1, "allRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/RequestHandler;>;"
    new-instance v4, Lcom/squareup/picasso/ResourceRequestHandler;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/ResourceRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    if-eqz p6, :cond_0

    .line 184
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    new-instance v4, Lcom/squareup/picasso/ContactsPhotoRequestHandler;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/ContactsPhotoRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v4, Lcom/squareup/picasso/MediaStoreRequestHandler;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v4, Lcom/squareup/picasso/ContentStreamRequestHandler;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v4, Lcom/squareup/picasso/AssetRequestHandler;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/AssetRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v4, Lcom/squareup/picasso/FileRequestHandler;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/FileRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v4, Lcom/squareup/picasso/NetworkRequestHandler;

    iget-object v5, p2, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    invoke-direct {v4, v5, p7}, Lcom/squareup/picasso/NetworkRequestHandler;-><init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Stats;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/picasso/Picasso;->requestHandlers:Ljava/util/List;

    .line 194
    iput-object p7, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    .line 195
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    .line 196
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 197
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    .line 198
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 199
    new-instance v4, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v4, p0, Lcom/squareup/picasso/Picasso;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 200
    new-instance v4, Lcom/squareup/picasso/Picasso$CleanupThread;

    iget-object v5, p0, Lcom/squareup/picasso/Picasso;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v6, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/squareup/picasso/Picasso$CleanupThread;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/squareup/picasso/Picasso;->cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

    .line 201
    iget-object v4, p0, Lcom/squareup/picasso/Picasso;->cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

    invoke-virtual {v4}, Lcom/squareup/picasso/Picasso$CleanupThread;->start()V

    .line 202
    return-void

    .line 175
    .end local v1    # "allRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/RequestHandler;>;"
    .end local v3    # "extraCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/picasso/Picasso;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void
.end method

.method private cancelExistingRequest(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 571
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkMain()V

    .line 572
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 573
    .local v0, "action":Lcom/squareup/picasso/Action;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->cancel()V

    .line 575
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Dispatcher;->dispatchCancel(Lcom/squareup/picasso/Action;)V

    .line 577
    :cond_0
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 578
    check-cast v2, Landroid/widget/ImageView;

    .line 579
    .local v2, "targetImageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 580
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/DeferredRequestCreator;

    .line 581
    .local v1, "deferredRequestCreator":Lcom/squareup/picasso/DeferredRequestCreator;
    if-eqz v1, :cond_1

    .line 582
    invoke-virtual {v1}, Lcom/squareup/picasso/DeferredRequestCreator;->cancel()V

    .line 585
    .end local v1    # "deferredRequestCreator":Lcom/squareup/picasso/DeferredRequestCreator;
    .end local v2    # "targetImageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private deliverAction(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/Action;)V
    .locals 5
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;
    .param p3, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 548
    invoke-virtual {p3}, Lcom/squareup/picasso/Action;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {p3}, Lcom/squareup/picasso/Action;->willReplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_2
    if-eqz p1, :cond_4

    .line 555
    if-nez p2, :cond_3

    .line 556
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 558
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/squareup/picasso/Action;->complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 559
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p3, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p3}, Lcom/squareup/picasso/Action;->error()V

    .line 564
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "Main"

    const-string v1, "errored"

    iget-object v2, p3, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSingletonInstance(Lcom/squareup/picasso/Picasso;)V
    .locals 3
    .param p0, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 675
    const-class v1, Lcom/squareup/picasso/Picasso;

    monitor-enter v1

    .line 676
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Singleton instance already exists."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 679
    :cond_0
    :try_start_1
    sput-object p0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    .line 680
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 659
    sget-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_1

    .line 660
    const-class v1, Lcom/squareup/picasso/Picasso;

    monitor-enter v1

    .line 661
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    .line 664
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :cond_1
    sget-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    return-object v0

    .line 664
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public areIndicatorsEnabled()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    return v0
.end method

.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public cancelRequest(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .prologue
    .line 219
    new-instance v0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    invoke-direct {v0, p1, p2}, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public cancelRequest(Lcom/squareup/picasso/Target;)V
    .locals 0
    .param p1, "target"    # Lcom/squareup/picasso/Target;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 229
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkMain()V

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 233
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 234
    .local v0, "action":Lcom/squareup/picasso/Action;
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    :cond_1
    return-void
.end method

.method complete(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 13
    .param p1, "hunter"    # Lcom/squareup/picasso/BitmapHunter;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 494
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getAction()Lcom/squareup/picasso/Action;

    move-result-object v9

    .line 495
    .local v9, "single":Lcom/squareup/picasso/Action;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object v5

    .line 497
    .local v5, "joined":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    move v2, v11

    .line 498
    .local v2, "hasMultiple":Z
    :goto_0
    if-nez v9, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v8, v11

    .line 500
    .local v8, "shouldDeliver":Z
    :cond_1
    if-nez v8, :cond_4

    .line 524
    :cond_2
    :goto_1
    return-void

    .end local v2    # "hasMultiple":Z
    .end local v8    # "shouldDeliver":Z
    :cond_3
    move v2, v8

    .line 497
    goto :goto_0

    .line 504
    .restart local v2    # "hasMultiple":Z
    .restart local v8    # "shouldDeliver":Z
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getData()Lcom/squareup/picasso/Request;

    move-result-object v11

    iget-object v10, v11, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 505
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 506
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 507
    .local v7, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v1

    .line 509
    .local v1, "from":Lcom/squareup/picasso/Picasso$LoadedFrom;
    if-eqz v9, :cond_5

    .line 510
    invoke-direct {p0, v7, v1, v9}, Lcom/squareup/picasso/Picasso;->deliverAction(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/Action;)V

    .line 513
    :cond_5
    if-eqz v2, :cond_6

    .line 515
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "n":I
    :goto_2
    if-ge v3, v6, :cond_6

    .line 516
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/picasso/Action;

    .line 517
    .local v4, "join":Lcom/squareup/picasso/Action;
    invoke-direct {p0, v7, v1, v4}, Lcom/squareup/picasso/Picasso;->deliverAction(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/Action;)V

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 521
    .end local v3    # "i":I
    .end local v4    # "join":Lcom/squareup/picasso/Action;
    .end local v6    # "n":I
    :cond_6
    iget-object v11, p0, Lcom/squareup/picasso/Picasso;->listener:Lcom/squareup/picasso/Picasso$Listener;

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    .line 522
    iget-object v11, p0, Lcom/squareup/picasso/Picasso;->listener:Lcom/squareup/picasso/Picasso$Listener;

    invoke-interface {v11, p0, v10, v0}, Lcom/squareup/picasso/Picasso$Listener;->onImageLoadFailed(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method defer(Landroid/widget/ImageView;Lcom/squareup/picasso/DeferredRequestCreator;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/squareup/picasso/DeferredRequestCreator;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void
.end method

.method enqueueAndSubmit(Lcom/squareup/picasso/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, "target":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 473
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 474
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->submit(Lcom/squareup/picasso/Action;)V

    .line 477
    return-void
.end method

.method getRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/RequestHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->requestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getSnapshot()Lcom/squareup/picasso/StatsSnapshot;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v0}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Cache;->clearKeyUri(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public invalidate(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->invalidate(Landroid/net/Uri;)V

    .line 374
    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->invalidate(Landroid/net/Uri;)V

    .line 361
    return-void
.end method

.method public isDebugging()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->areIndicatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    return v0
.end method

.method public load(I)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource ID must not be zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 273
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 319
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 299
    :goto_0
    return-object v0

    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_0
.end method

.method public pauseTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Dispatcher;->dispatchPauseTag(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-interface {v1, p1}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, "cached":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 490
    :goto_0
    return-object v0

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheMiss()V

    goto :goto_0
.end method

.method resumeAction(Lcom/squareup/picasso/Action;)V
    .locals 6
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p1, Lcom/squareup/picasso/Action;->memoryPolicy:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    :cond_0
    if-eqz v0, :cond_2

    .line 534
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {p0, v0, v1, p1}, Lcom/squareup/picasso/Picasso;->deliverAction(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/Action;)V

    .line 535
    iget-boolean v1, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_1

    .line 536
    const-string v1, "Main"

    const-string v2, "completed"

    iget-object v3, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    .line 541
    iget-boolean v1, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_1

    .line 542
    const-string v1, "Main"

    const-string v2, "resumed"

    iget-object v3, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Dispatcher;->dispatchResumeTag(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public setDebugging(Z)V
    .locals 0
    .param p1, "debugging"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->setIndicatorsEnabled(Z)V

    .line 393
    return-void
.end method

.method public setIndicatorsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    .line 398
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 414
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 433
    sget-object v1, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    if-ne p0, v1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Default singleton instance cannot be shutdown."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_0
    iget-boolean v1, p0, Lcom/squareup/picasso/Picasso;->shutdown:Z

    if-eqz v1, :cond_1

    .line 448
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-interface {v1}, Lcom/squareup/picasso/Cache;->clear()V

    .line 440
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$CleanupThread;->shutdown()V

    .line 441
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->shutdown()V

    .line 442
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1}, Lcom/squareup/picasso/Dispatcher;->shutdown()V

    .line 443
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/DeferredRequestCreator;

    .line 444
    .local v0, "deferredRequestCreator":Lcom/squareup/picasso/DeferredRequestCreator;
    invoke-virtual {v0}, Lcom/squareup/picasso/DeferredRequestCreator;->cancel()V

    goto :goto_1

    .line 446
    .end local v0    # "deferredRequestCreator":Lcom/squareup/picasso/DeferredRequestCreator;
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/picasso/Picasso;->shutdown:Z

    goto :goto_0
.end method

.method submit(Lcom/squareup/picasso/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Dispatcher;->dispatchSubmit(Lcom/squareup/picasso/Action;)V

    .line 481
    return-void
.end method

.method transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;
    .locals 4
    .param p1, "request"    # Lcom/squareup/picasso/Request;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    invoke-interface {v1, p1}, Lcom/squareup/picasso/Picasso$RequestTransformer;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 456
    .local v0, "transformed":Lcom/squareup/picasso/Request;
    if-nez v0, :cond_0

    .line 457
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request transformer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 458
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_0
    return-object v0
.end method
