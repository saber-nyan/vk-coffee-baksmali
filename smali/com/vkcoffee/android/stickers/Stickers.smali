.class public Lcom/vkcoffee/android/stickers/Stickers;
.super Ljava/lang/Object;
.source "Stickers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;,
        Lcom/vkcoffee/android/stickers/Stickers$MarkUpdatesAsViewed;,
        Lcom/vkcoffee/android/stickers/Stickers$GetInfo;,
        Lcom/vkcoffee/android/stickers/Stickers$GetAutoSuggestDictionaryRequest;,
        Lcom/vkcoffee/android/stickers/Stickers$Data;
    }
.end annotation


# static fields
.field public static final ACTION_STICKERS_DOWNLOAD_PROGRESS:Ljava/lang/String; = "com.vkcoffee.android.STICKERS_DOWNLOAD_PROGRESS"

.field public static final ACTION_STICKERS_NUM_NEW_ITEMS:Ljava/lang/String; = "com.vkcoffee.android.STICKERS_NUM_NEW_ITEMS"

.field public static final ACTION_STICKERS_NUM_UPDATES:Ljava/lang/String; = "com.vkcoffee.android.STICKERS_NUM_UPDATES"

.field public static final ACTION_STICKERS_RECENT:Ljava/lang/String; = "com.vkcoffee.android.STICKERS_UPDATED_RECENTS"

.field public static final ACTION_STICKERS_RELOADED:Ljava/lang/String; = "com.vkcoffee.android.STICKERS_RELOADED"

.field public static final ACTION_STICKERS_UPDATED:Ljava/lang/String; = "com.vkcoffee.android.STICKERS_UPDATED"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "item"

.field public static final PREFS_SUGGESTS_ENABLED:Ljava/lang/String; = "suggests_enabled"

.field private static final PREF_AUTO_SUGGEST_LAST_LOADED_TIMESPAMP:Ljava/lang/String; = "auto_suggest_last_loaded"

.field private static final PREF_NUM_NEW:Ljava/lang/String; = "num_new"

.field private static final PREF_NUM_UPDATES:Ljava/lang/String; = "num_updates"

.field private static final PREF_RECENT_STICKERS:Ljava/lang/String; = "base_url"

.field private static final RECENTS_MAX_SIZE:I = 0x20

.field private static final SHARED_PREFERENCE:Ljava/lang/String; = "stickers"

.field private static final STUB_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/vkcoffee/android/stickers/Stickers;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

.field private final mManager:Lcom/vkcoffee/android/orm/EntityManager;

.field private mNumNew:I

.field private mNumUpdates:I

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private volatile mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

.field private mSuggestsEnabled:Z

.field private final mUIHandler:Landroid/os/Handler;

.field private final mWriteLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/stickers/Stickers;->STUB_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mUIHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    .line 77
    iput v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    .line 78
    iput v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/vkcoffee/android/orm/EntityManager;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/orm/EntityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "stickers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suggests_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mSuggestsEnabled:Z

    .line 88
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->initCache()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/Stickers;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/orm/EntityManager;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/stickers/Stickers;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/stickers/Stickers$Data;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/stickers/Stickers;Lcom/vkcoffee/android/stickers/Stickers$Data;)Lcom/vkcoffee/android/stickers/Stickers$Data;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;
    .param p1, "x1"    # Lcom/vkcoffee/android/stickers/Stickers$Data;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/stickers/Stickers;Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;)Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;
    .param p1, "x1"    # Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/stickers/Stickers;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastReloaded()V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/stickers/Stickers;Lcom/vkcoffee/android/stickers/Stickers$Data;Lcom/vkcoffee/android/stickers/Stickers$Data;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;
    .param p1, "x1"    # Lcom/vkcoffee/android/stickers/Stickers$Data;
    .param p2, "x2"    # Lcom/vkcoffee/android/stickers/Stickers$Data;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/stickers/Stickers;->compareStickersData(Lcom/vkcoffee/android/stickers/Stickers$Data;Lcom/vkcoffee/android/stickers/Stickers$Data;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/stickers/Stickers;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastNumNewItems()V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_NUM_NEW_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method private broadcastNumUpdates()V
    .locals 3

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_NUM_UPDATES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private broadcastRecent()V
    .locals 3

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_UPDATED_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private broadcastReloaded()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.STICKERS_RELOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private broadcastUpdate(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 612
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private compareStickersData(Lcom/vkcoffee/android/stickers/Stickers$Data;Lcom/vkcoffee/android/stickers/Stickers$Data;)Z
    .locals 4
    .param p1, "oldData"    # Lcom/vkcoffee/android/stickers/Stickers$Data;
    .param p2, "newData"    # Lcom/vkcoffee/android/stickers/Stickers$Data;

    .prologue
    const/4 v2, 0x0

    .line 282
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    .line 295
    :goto_0
    return v1

    .line 285
    :cond_1
    iget-object v1, p1, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p2, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    move v1, v2

    .line 286
    goto :goto_0

    .line 289
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 290
    iget-object v1, p1, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v3, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    iget-object v1, p2, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    if-eq v3, v1, :cond_3

    move v1, v2

    .line 291
    goto :goto_0

    .line 289
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static get()Lcom/vkcoffee/android/stickers/Stickers;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/Stickers;->get(Landroid/content/Context;)Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/vkcoffee/android/stickers/Stickers;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/vkcoffee/android/stickers/Stickers;->sInstance:Lcom/vkcoffee/android/stickers/Stickers;

    .line 127
    .local v0, "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    if-nez v0, :cond_1

    .line 128
    const-class v3, Lcom/vkcoffee/android/stickers/Stickers;

    monitor-enter v3

    .line 129
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/stickers/Stickers;->sInstance:Lcom/vkcoffee/android/stickers/Stickers;

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Lcom/vkcoffee/android/stickers/Stickers;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/stickers/Stickers;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    .local v1, "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    :try_start_1
    sput-object v1, Lcom/vkcoffee/android/stickers/Stickers;->sInstance:Lcom/vkcoffee/android/stickers/Stickers;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 133
    .end local v1    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    .restart local v0    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 135
    :cond_1
    return-object v0

    .line 133
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    .restart local v1    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    .restart local v0    # "localInstance":Lcom/vkcoffee/android/stickers/Stickers;
    goto :goto_0
.end method

.method private getDownloadedPacks()[I
    .locals 7

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "id"

    aput-object v6, v4, v5

    .line 592
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/orm/Query;->fields([Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const-string/jumbo v4, "downloaded"

    .line 593
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/orm/Query;->isEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const-string/jumbo v4, "id"

    sget-object v5, Lcom/vkcoffee/android/orm/Order;->ASC:Lcom/vkcoffee/android/orm/Order;

    .line 594
    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/orm/Query;->orderBy(Ljava/lang/String;Lcom/vkcoffee/android/orm/Order;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    .line 595
    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/Query;->loadCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 596
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 597
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v2, v3, [I

    .line 598
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 599
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v1

    .line 598
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 603
    .end local v1    # "i":I
    .end local v2    # "result":[I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 604
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 603
    .restart local v1    # "i":I
    .restart local v2    # "result":[I
    :cond_1
    if-eqz v0, :cond_2

    .line 604
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method

.method private initCache()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/vkcoffee/android/stickers/Stickers$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/Stickers$1;-><init>(Lcom/vkcoffee/android/stickers/Stickers;)V

    .line 118
    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/Stickers$1;->start()V

    .line 119
    return-void
.end method

.method private resetLastLoadedTimestampForDeferredReload()V
    .locals 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "auto_suggest_last_loaded"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    return-void
.end method


# virtual methods
.method public addRecent(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "stockItemId"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/stickers/Stickers$Data;->addRecent(II)V

    .line 536
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastRecent()V

    .line 537
    return-void
.end method

.method public clearAll()V
    .locals 7

    .prologue
    .line 436
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/Stickers$Data;->clearAll()V

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 443
    :try_start_1
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->clearAndSave()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->resetLastLoadedTimestampForDeferredReload()V

    .line 452
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :try_start_3
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 455
    :try_start_4
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v5, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/Query;->delete()I

    move-result v0

    .line 456
    .local v0, "count":I
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/EntityManager;->commit()V

    .line 457
    const-string/jumbo v2, "STICKERS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 461
    .end local v0    # "count":I
    :goto_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 462
    :try_start_6
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastReloaded()V

    .line 463
    monitor-exit v3

    .line 464
    return-void

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Stickers"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 458
    :catch_1
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_7
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v2}, Lcom/vkcoffee/android/orm/EntityManager;->rollback()V

    goto :goto_1

    .line 461
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public deleteDownloadedPack(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 8
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    const/4 v3, 0x0

    .line 517
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 518
    :try_start_0
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/vkcoffee/android/stickers/Stickers;->setDownloaded(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 521
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v1, v6, v3

    .line 523
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    .end local v1    # "entry":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    .end local v2    # "file":Ljava/io/File;
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    :try_start_3
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastUpdate(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 531
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 531
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method public fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Source:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TSource;>;",
            "Lcom/vkcoffee/android/functions/F1",
            "<+",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            "TSource;>;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "source":Ljava/util/Collection;, "Ljava/util/Collection<TSource;>;"
    .local p2, "projection":Lcom/vkcoffee/android/functions/F1;, "Lcom/vkcoffee/android/functions/F1<+Lcom/vkcoffee/android/data/orm/StickerStockItem;TSource;>;"
    const/4 v2, 0x0

    .line 551
    .local v2, "googlePlayProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->getDownloadedPacks()[I

    move-result-object v0

    .line 552
    .local v0, "downloaded":[I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 553
    .local v1, "entry":Ljava/lang/Object;, "TSource;"
    invoke-interface {p2, v1}, Lcom/vkcoffee/android/functions/F1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 554
    .local v3, "stickerStockItem":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    if-eqz v3, :cond_0

    .line 555
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sizes"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->compatMode:Z

    .line 556
    iget-boolean v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->compatMode:Z

    if-nez v4, :cond_1

    iget v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->downloaded:Z

    .line 558
    iget-boolean v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->can_purchase:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    sget-object v6, Lcom/vkcoffee/android/api/models/PaymentType;->Inapp:Lcom/vkcoffee/android/api/models/PaymentType;

    if-ne v4, v6, :cond_0

    .line 559
    if-nez v2, :cond_2

    .line 560
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "googlePlayProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 562
    .restart local v2    # "googlePlayProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    :cond_2
    iget-object v4, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->merchant_product_id:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 556
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 567
    .end local v1    # "entry":Ljava/lang/Object;, "TSource;"
    .end local v3    # "stickerStockItem":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :cond_4
    if-eqz v2, :cond_5

    .line 568
    new-instance v4, Lcom/vkcoffee/android/stickers/Stickers$5;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/stickers/Stickers$5;-><init>(Lcom/vkcoffee/android/stickers/Stickers;)V

    invoke-static {v2, v4}, Lcom/vkcoffee/android/data/PurchasesManager;->getGooglePlayPrices(Ljava/util/Map;Lcom/vkcoffee/android/functions/F2;)V

    .line 576
    :cond_5
    return-void
.end method

.method public getActivatedStickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/stickers/Stickers;->STUB_LIST:Ljava/util/List;

    .line 153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    goto :goto_0
.end method

.method public getAutoSuggestStickersFor(Ljava/lang/String;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/Stickers;->mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/vkcoffee/android/stickers/Stickers;->mSuggestsEnabled:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-nez v6, :cond_2

    .line 161
    :cond_0
    const/4 v1, 0x0

    .line 195
    :cond_1
    :goto_0
    return-object v1

    .line 164
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/Stickers;->mStickersAutoSuggestDictionary:Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    invoke-virtual {v6, p1}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->getAutoSuggestStickersFor(Ljava/lang/String;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v1

    .line 166
    .local v1, "item":Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v6, v6

    if-lez v6, :cond_1

    .line 169
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v6, v6

    new-array v5, v6, [I

    .line 170
    .local v5, "sortedUserStickers":[I
    const/4 v3, 0x0

    .line 171
    .local v3, "k":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/Stickers;->getRecent()Ljava/util/List;

    move-result-object v4

    .line 172
    .local v4, "recentStickers":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 173
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 174
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    aget v7, v6, v2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget v6, v6, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    if-ne v7, v6, :cond_3

    .line 175
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    aget v6, v6, v2

    aput v6, v5, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    const/4 v7, 0x0

    aput v7, v6, v2

    .line 173
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v2    # "j":I
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 183
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    aget v6, v6, v0

    if-eqz v6, :cond_6

    .line 184
    iget-object v6, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    aget v6, v6, v0

    aput v6, v5, v3

    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 182
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 191
    :cond_7
    iput-object v5, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    goto :goto_0
.end method

.method public getById(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 2
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickers:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    goto :goto_0
.end method

.method public getByStickerId(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 2
    .param p1, "stickerId"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickersByStickerId:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickersByStickerId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    goto :goto_0
.end method

.method public getNumNewStockItems()I
    .locals 3

    .prologue
    .line 467
    iget v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "num_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    .line 470
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    return v0
.end method

.method public getNumUpdates()I
    .locals 3

    .prologue
    .line 474
    iget v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "num_updates"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    .line 477
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    return v0
.end method

.method public getPromotedStickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->promotedStickers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/stickers/Stickers;->STUB_LIST:Ljava/util/List;

    .line 146
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->promotedStickers:Ljava/util/List;

    goto :goto_0
.end method

.method public getRecent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/stickers/Stickers;->STUB_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$Data;->recentStickers:Ljava/util/List;

    goto :goto_0
.end method

.method public isSuggestsEnabled()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mSuggestsEnabled:Z

    return v0
.end method

.method public markUpdatesAsViewed()V
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/Stickers;->getNumUpdates()I

    move-result v0

    if-lez v0, :cond_0

    .line 502
    new-instance v0, Lcom/vkcoffee/android/stickers/Stickers$MarkUpdatesAsViewed;

    invoke-direct {v0}, Lcom/vkcoffee/android/stickers/Stickers$MarkUpdatesAsViewed;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/stickers/Stickers$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/stickers/Stickers$4;-><init>(Lcom/vkcoffee/android/stickers/Stickers;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/Stickers$MarkUpdatesAsViewed;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 514
    :cond_0
    return-void
.end method

.method public purchase(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 9
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    const/4 v8, 0x1

    .line 330
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, "idsToUpdate":[I
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickers:Ljava/util/Map;

    iget v5, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-boolean v3, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-eqz v3, :cond_0

    .line 334
    const/4 v3, 0x0

    iput v3, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 335
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 336
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 337
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 338
    add-int/lit8 v5, v1, -0x1

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v3, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    aput v3, v2, v5

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$Data;->promotedStickers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/orm/EntityManager;->save(Ljava/lang/Object;)I

    .line 346
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v5, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const-string/jumbo v5, "id"

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/orm/Query;->in([Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_order"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "`user_order` + 1"

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/orm/Query;->rawUpdate([Ljava/lang/Object;)V

    .line 347
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/EntityManager;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastUpdate(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 354
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/stickers/Stickers;->reloadAutoSuggestDictionaryIfNeeded(Z)V

    .line 355
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/EntityManager;->rollback()V

    goto :goto_1

    .line 351
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/Stickers;->reload(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public reload(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runAfter"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    new-instance v0, Lcom/vkcoffee/android/stickers/Stickers$GetInfo;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/Stickers$GetInfo;-><init>(Lcom/vkcoffee/android/stickers/Stickers;)V

    new-instance v1, Lcom/vkcoffee/android/stickers/Stickers$3;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/stickers/Stickers$3;-><init>(Lcom/vkcoffee/android/stickers/Stickers;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/Stickers$GetInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 278
    return-void
.end method

.method public reloadAutoSuggestDictionaryIfNeeded(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "auto_suggest_last_loaded"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 201
    .local v0, "exprired":Z
    :goto_0
    const-string/jumbo v1, "Stickers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reloadAutoSuggestDictionaryIfNeeded force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", expired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 205
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/stickers/Stickers$GetAutoSuggestDictionaryRequest;

    invoke-direct {v1}, Lcom/vkcoffee/android/stickers/Stickers$GetAutoSuggestDictionaryRequest;-><init>()V

    new-instance v2, Lcom/vkcoffee/android/stickers/Stickers$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/stickers/Stickers$2;-><init>(Lcom/vkcoffee/android/stickers/Stickers;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/Stickers$GetAutoSuggestDictionaryRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 227
    :cond_1
    return-void

    .line 200
    .end local v0    # "exprired":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActive(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "activate"    # Z

    .prologue
    .line 358
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iput-boolean p2, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    .line 361
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v1, v1, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickers:Ljava/util/Map;

    iget v3, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v1, v1, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 364
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v1, v1, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    iget v3, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v1

    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v1

    iget v3, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/orm/Query;->isEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "active"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "user_order"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/orm/Query;->update([Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/EntityManager;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastUpdate(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 380
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->resetLastLoadedTimestampForDeferredReload()V

    .line 381
    return-void

    .line 366
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    iput v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 367
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v1, v1, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/EntityManager;->rollback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setDownloaded(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V
    .locals 9
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "downloaded"    # Z

    .prologue
    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, "updateRecents":Z
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 301
    :try_start_0
    iput-boolean p2, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->downloaded:Z

    .line 302
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->compatMode:Z

    .line 303
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v4, v4, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickers:Ljava/util/Map;

    iget v6, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v4, v4, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 305
    .local v0, "activatedIndex":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v4, v4, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v4, v4, Lcom/vkcoffee/android/stickers/Stickers$Data;->recentStickers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    .line 309
    .local v2, "sticker":Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;
    iget-object v6, v2, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v6, v6, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    iget v7, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    if-ne v6, v7, :cond_1

    .line 310
    iput-object p1, v2, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 311
    const/4 v3, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "sticker":Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v4}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v6, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v4

    const-string/jumbo v6, "id"

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v4

    iget v6, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/orm/Query;->isEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "downloaded"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "compat"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/orm/Query;->update([Ljava/lang/Object;)V

    .line 318
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v4}, Lcom/vkcoffee/android/orm/EntityManager;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastUpdate(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 324
    if-eqz v3, :cond_3

    .line 325
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastRecent()V

    .line 327
    :cond_3
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v4}, Lcom/vkcoffee/android/orm/EntityManager;->rollback()V

    goto :goto_1

    .line 322
    .end local v0    # "activatedIndex":I
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public setNumNewItems(I)V
    .locals 4
    .param p1, "numNewItems"    # I

    .prologue
    .line 481
    iget v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    if-eq p1, v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iput p1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    .line 484
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "num_new"

    iget v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumNew:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastNumNewItems()V

    .line 486
    monitor-exit v1

    .line 488
    :cond_0
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNumUpdates(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 491
    iget v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    if-eq p1, v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iput p1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    .line 494
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "num_updates"

    iget v3, p0, Lcom/vkcoffee/android/stickers/Stickers;->mNumUpdates:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastNumUpdates()V

    .line 496
    monitor-exit v1

    .line 498
    :cond_0
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSuggestsEnabled(Z)V
    .locals 2
    .param p1, "suggestsEnabled"    # Z

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mSuggestsEnabled:Z

    if-eq p1, v0, :cond_0

    .line 632
    iput-boolean p1, p0, Lcom/vkcoffee/android/stickers/Stickers;->mSuggestsEnabled:Z

    .line 634
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suggests_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 636
    if-eqz p1, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/Stickers;->resetLastLoadedTimestampForDeferredReload()V

    .line 640
    :cond_0
    return-void
.end method

.method public swap(II)V
    .locals 16
    .param p1, "newPosition"    # I
    .param p2, "oldPosition"    # I

    .prologue
    .line 384
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    const/4 v9, 0x1

    .line 387
    .local v9, "movedToTop":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 388
    add-int/lit8 v10, p1, 0x1

    .line 389
    .local v10, "start":I
    add-int/lit8 v3, p2, 0x1

    .line 395
    .local v3, "end":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/stickers/Stickers;->mWriteLock:Ljava/lang/Object;

    monitor-enter v12

    .line 396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v11, v11, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 397
    .local v7, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v11, v11, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    move/from16 v0, p1

    iput v0, v7, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 400
    sub-int v11, v3, v10

    new-array v6, v11, [I

    .line 402
    .local v6, "idsToUpdate":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v11, v6

    if-ge v5, v11, :cond_2

    .line 403
    add-int v8, v5, v10

    .line 404
    .local v8, "location":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mData:Lcom/vkcoffee/android/stickers/Stickers$Data;

    iget-object v11, v11, Lcom/vkcoffee/android/stickers/Stickers$Data;->activatedStickers:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 405
    .local v4, "entry":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    iput v8, v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    .line 406
    iget v11, v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    aput v11, v6, v5

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 384
    .end local v3    # "end":I
    .end local v4    # "entry":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .end local v5    # "i":I
    .end local v6    # "idsToUpdate":[I
    .end local v7    # "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .end local v8    # "location":I
    .end local v9    # "movedToTop":Z
    .end local v10    # "start":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 391
    .restart local v9    # "movedToTop":Z
    :cond_1
    move/from16 v10, p2

    .line 392
    .restart local v10    # "start":I
    move/from16 v3, p1

    .restart local v3    # "end":I
    goto :goto_1

    .line 409
    .restart local v5    # "i":I
    .restart local v6    # "idsToUpdate":[I
    .restart local v7    # "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v11}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v13, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v11

    const-string/jumbo v13, "id"

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v11

    iget v13, v7, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/Query;->isEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "user_order"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget v15, v7, Lcom/vkcoffee/android/data/orm/StickerStockItem;->order:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/Query;->update([Ljava/lang/Object;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    const-class v13, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/EntityManager;->createQuery(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v11

    const-string/jumbo v13, "id"

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v13}, Lcom/vkcoffee/android/orm/Query;->in([Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v13

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v15, "user_order"

    aput-object v15, v14, v11

    const/4 v15, 0x1

    if-eqz v9, :cond_3

    const-string/jumbo v11, "`user_order` + 1"

    :goto_3
    aput-object v11, v14, v15

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/orm/Query;->rawUpdate([Ljava/lang/Object;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v11}, Lcom/vkcoffee/android/orm/EntityManager;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastReloaded()V

    .line 419
    :goto_4
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/stickers/Stickers;->resetLastLoadedTimestampForDeferredReload()V

    .line 422
    return-void

    .line 412
    :cond_3
    :try_start_3
    const-string/jumbo v11, "`user_order` - 1"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 414
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/stickers/Stickers;->mManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v11}, Lcom/vkcoffee/android/orm/EntityManager;->rollback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastReloaded()V

    goto :goto_4

    .line 419
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v5    # "i":I
    .end local v6    # "idsToUpdate":[I
    .end local v7    # "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    .line 417
    .restart local v5    # "i":I
    .restart local v6    # "idsToUpdate":[I
    .restart local v7    # "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :catchall_1
    move-exception v11

    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/stickers/Stickers;->broadcastReloaded()V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
