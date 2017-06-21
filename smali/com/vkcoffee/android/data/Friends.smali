.class public Lcom/vkcoffee/android/data/Friends;
.super Ljava/lang/Object;
.source "Friends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/Friends$GetOnlinesCallback;,
        Lcom/vkcoffee/android/data/Friends$GetImportedContactsCallback;,
        Lcom/vkcoffee/android/data/Friends$GetUsersCallback;,
        Lcom/vkcoffee/android/data/Friends$Section;,
        Lcom/vkcoffee/android/data/Friends$Folder;
    }
.end annotation


# static fields
.field public static final ACTION_FRIEND_LIST_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.FRIEND_LIST_CHANGED"

.field public static final ACTION_FRIEND_REQUESTS_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

.field public static final ACTION_FRIEND_STATUS_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.ACTION_FRIEND_STATUS_CHANGED"

.field public static final CASE_ABL:I = 0x5

.field public static final CASE_ACC:I = 0x3

.field public static final CASE_DAT:I = 0x2

.field public static final CASE_GEN:I = 0x1

.field public static final CASE_INS:I = 0x4

.field public static final CASE_NOM:I = 0x0

.field private static final DEBUG:Z = false

.field public static final IMPORT_SERVICE_CONTACTS:I = 0x0

.field public static final IMPORT_SERVICE_FACEBOOK:I = 0x2

.field public static final IMPORT_SERVICE_GOOGLE:I = 0x1

.field public static final IMPORT_SERVICE_MAIL:I = 0x3

.field private static final SORT_FIRST:I = 0x1

.field private static final SORT_HINTS:I = 0x0

.field private static final SORT_LAST:I = 0x2

.field private static friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static index:Lcom/vkcoffee/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/SearchIndexer",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static loadedOnlines:Z

.field private static loading:Z

.field private static sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Section;",
            ">;"
        }
    .end annotation
.end field

.field private static semaphore:Ljava/util/concurrent/Semaphore;

.field private static sorting:Z

.field private static users:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getFriends()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->hints:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->lists:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    .line 88
    new-instance v0, Lcom/vkcoffee/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkcoffee/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->index:Lcom/vkcoffee/android/SearchIndexer;

    .line 89
    sput-boolean v2, Lcom/vkcoffee/android/data/Friends;->loadedOnlines:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 91
    sput-boolean v2, Lcom/vkcoffee/android/data/Friends;->loading:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Friends;->sections:Ljava/util/ArrayList;

    .line 93
    sput-boolean v2, Lcom/vkcoffee/android/data/Friends;->sorting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    sput-object p0, Lcom/vkcoffee/android/data/Friends;->lists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/vkcoffee/android/data/Friends;->loading:Z

    return p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    sput-object p0, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->hints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Lcom/vkcoffee/android/SearchIndexer;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->index:Lcom/vkcoffee/android/SearchIndexer;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->updateIndex()V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/vkcoffee/android/data/Friends;->loadedOnlines:Z

    return p0
.end method

.method static synthetic access$800()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    return-object v0
.end method

.method public static addLocally(Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p0, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 281
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->hints:Ljava/util/ArrayList;

    sget-object v2, Lcom/vkcoffee/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 289
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/cache/Cache;->updateFriends(Ljava/util/List;Z)V

    .line 290
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/SearchIndexer;->add(Lcom/vkcoffee/android/Indexable;)V

    .line 291
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 292
    return-void

    .line 282
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createSections(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string/jumbo v13, "friendsOrderNew"

    const-string/jumbo v14, "firstname"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, "pref":Ljava/lang/String;
    const/4 v9, 0x0

    .line 587
    .local v9, "sortPref":I
    const-string/jumbo v12, "hints"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 588
    const/4 v9, 0x0

    .line 594
    :cond_0
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Section;>;"
    if-eqz v9, :cond_c

    .line 596
    const-string/jumbo v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " Create sections thread start, users size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v12, 0x1

    if-ne v9, v12, :cond_3

    const/4 v3, 0x1

    .line 598
    .local v3, "firstName":Z
    :goto_1
    const/4 v0, 0x0

    .line 607
    .local v0, "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 608
    .local v5, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v3, :cond_4

    .line 609
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_2

    .line 589
    .end local v0    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .end local v3    # "firstName":Z
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Section;>;"
    :cond_1
    const-string/jumbo v12, "firstname"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 590
    const/4 v9, 0x1

    goto :goto_0

    .line 591
    :cond_2
    const-string/jumbo v12, "lastname"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 592
    const/4 v9, 0x2

    goto :goto_0

    .line 597
    .restart local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Section;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 611
    .restart local v0    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .restart local v3    # "firstName":Z
    .restart local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_2

    .line 614
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_5
    new-instance v12, Lcom/vkcoffee/android/data/Friends$5;

    invoke-direct {v12}, Lcom/vkcoffee/android/data/Friends$5;-><init>()V

    invoke-static {p0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 624
    .restart local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    const/4 v13, 0x0

    iput-object v13, v5, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_3

    .line 626
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    const/4 v2, 0x0

    .line 627
    .local v2, "fc":C
    const/4 v4, 0x0

    .line 628
    .local v4, "offset":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/UserProfile;

    .line 630
    .local v10, "user":Lcom/vkcoffee/android/UserProfile;
    if-eqz v3, :cond_8

    :try_start_0
    iget-object v12, v10, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_5
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v2, :cond_7

    .line 631
    if-eqz v3, :cond_9

    iget-object v12, v10, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_6
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 632
    if-eqz v0, :cond_a

    iget-object v12, v0, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    :goto_7
    add-int/2addr v4, v12

    .line 633
    new-instance v1, Lcom/vkcoffee/android/data/Friends$Section;

    invoke-direct {v1}, Lcom/vkcoffee/android/data/Friends$Section;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v0    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .local v1, "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/vkcoffee/android/data/Friends$Section;->title:Ljava/lang/String;

    .line 635
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    .line 637
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 639
    .end local v1    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .restart local v0    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    :cond_7
    :try_start_2
    iget-object v12, v0, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 640
    :catch_0
    move-exception v11

    .line 641
    .local v11, "x":Ljava/lang/Exception;
    :goto_8
    const-string/jumbo v12, "vk"

    invoke-static {v12, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 630
    .end local v11    # "x":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v12, v10, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    goto :goto_5

    .line 631
    :cond_9
    iget-object v12, v10, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 632
    :cond_a
    const/4 v12, 0x0

    goto :goto_7

    .line 644
    .end local v10    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_b
    const-string/jumbo v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " Create sections done, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v0    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .end local v2    # "fc":C
    .end local v3    # "firstName":Z
    .end local v4    # "offset":I
    :goto_9
    return-object v7

    .line 646
    :cond_c
    new-instance v8, Lcom/vkcoffee/android/data/Friends$Section;

    invoke-direct {v8}, Lcom/vkcoffee/android/data/Friends$Section;-><init>()V

    .line 647
    .local v8, "s":Lcom/vkcoffee/android/data/Friends$Section;
    iput-object p0, v8, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    .line 648
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 640
    .end local v8    # "s":Lcom/vkcoffee/android/data/Friends$Section;
    .restart local v1    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .restart local v2    # "fc":C
    .restart local v3    # "firstName":Z
    .restart local v4    # "offset":I
    .restart local v10    # "user":Lcom/vkcoffee/android/UserProfile;
    :catch_1
    move-exception v11

    move-object v0, v1

    .end local v1    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    .restart local v0    # "curSection":Lcom/vkcoffee/android/data/Friends$Section;
    goto :goto_8
.end method

.method public static decreaseRequests()V
    .locals 3

    .prologue
    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/vkcoffee/android/LongPollService;->setNumFriendRequests(I)V

    .line 711
    const-string/jumbo v1, "value"

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public static get(I)Lcom/vkcoffee/android/UserProfile;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 235
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 239
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 240
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 245
    .end local v0    # "user":Lcom/vkcoffee/android/UserProfile;
    :goto_1
    return-object v0

    .line 244
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 245
    const/4 v0, 0x0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFriends(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    sget-boolean v0, Lcom/vkcoffee/android/data/Friends;->loadedOnlines:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 205
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    return-void
.end method

.method public static getFriends(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    sget-boolean v1, Lcom/vkcoffee/android/data/Friends;->loadedOnlines:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 212
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 214
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method

.method public static getFromAll(I)Lcom/vkcoffee/android/UserProfile;
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 250
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 254
    .local v3, "user":Lcom/vkcoffee/android/UserProfile;
    iget v5, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v5, p0, :cond_0

    .line 255
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v1, v3

    .line 276
    .end local v3    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    :goto_1
    return-object v1

    .line 259
    :cond_2
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 260
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 261
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    if-nez v1, :cond_1

    .line 264
    new-array v4, v7, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkcoffee/android/cache/Cache;->getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    .local v0, "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 266
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 267
    .restart local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    iget v5, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 270
    :cond_3
    new-array v4, v7, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/vkcoffee/android/cache/Cache;->getUsers(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 271
    .local v2, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 272
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 273
    .restart local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    iget v5, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 276
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 251
    .end local v0    # "fromCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private static getGroup(I)Lcom/vkcoffee/android/UserProfile;
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 358
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getById(I)Lcom/vkcoffee/android/api/Group;

    move-result-object v0

    .line 359
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    if-nez v0, :cond_0

    .line 360
    const/4 v1, 0x0

    .line 366
    :goto_0
    return-object v1

    .line 362
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 363
    .local v1, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 364
    iget-object v2, v0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 365
    iget-object v2, v0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getImportedContacts(ILcom/vkcoffee/android/data/Friends$GetImportedContactsCallback;)V
    .locals 2
    .param p0, "service"    # I
    .param p1, "callback"    # Lcom/vkcoffee/android/data/Friends$GetImportedContactsCallback;

    .prologue
    .line 497
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/data/Friends$4;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/data/Friends$4;-><init>(ILcom/vkcoffee/android/data/Friends$GetImportedContactsCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 524
    return-void
.end method

.method public static getListById(I)Lcom/vkcoffee/android/data/Friends$Folder;
    .locals 3
    .param p0, "lid"    # I

    .prologue
    .line 553
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/Friends$Folder;

    .line 554
    .local v0, "f":Lcom/vkcoffee/android/data/Friends$Folder;
    iget v2, v0, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    if-ne v2, p0, :cond_0

    .line 558
    .end local v0    # "f":Lcom/vkcoffee/android/data/Friends$Folder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLists(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->lists:Ljava/util/ArrayList;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    return-void
.end method

.method public static getNonFriendOnlines(Ljava/util/List;Lcom/vkcoffee/android/data/Friends$GetOnlinesCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkcoffee/android/data/Friends$GetOnlinesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkcoffee/android/data/Friends$GetOnlinesCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public static getOnlineStatus(I)I
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 220
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 224
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 225
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 226
    iget v1, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 230
    .end local v0    # "user":Lcom/vkcoffee/android/UserProfile;
    :goto_1
    return v1

    .line 229
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 230
    const/4 v1, 0x0

    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSortedFriends(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/Friends$Section;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/Friends$Section;>;"
    sget-object v2, Lcom/vkcoffee/android/data/Friends;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/Friends$Section;

    .line 655
    .local v1, "section":Lcom/vkcoffee/android/data/Friends$Section;
    new-instance v0, Lcom/vkcoffee/android/data/Friends$Section;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/Friends$Section;-><init>()V

    .line 656
    .local v0, "s":Lcom/vkcoffee/android/data/Friends$Section;
    iget-object v3, v1, Lcom/vkcoffee/android/data/Friends$Section;->title:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkcoffee/android/data/Friends$Section;->title:Ljava/lang/String;

    .line 657
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    .line 658
    iget-object v3, v0, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    iget-object v4, v1, Lcom/vkcoffee/android/data/Friends$Section;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 659
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    .end local v0    # "s":Lcom/vkcoffee/android/data/Friends$Section;
    .end local v1    # "section":Lcom/vkcoffee/android/data/Friends$Section;
    :cond_0
    return-void
.end method

.method public static getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkcoffee/android/data/Friends$GetUsersCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;I)V

    .line 371
    return-void
.end method

.method public static getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;I)V
    .locals 7
    .param p1, "callback"    # Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .param p2, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vkcoffee/android/data/Friends$GetUsersCallback;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 376
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 382
    .local v3, "uid":I
    if-gtz v3, :cond_1

    const v4, -0x77359400

    if-ge v3, v4, :cond_2

    :cond_1
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    shl-int/lit8 v6, p2, 0x18

    or-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    move-object v1, v4

    .line 383
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    :goto_1
    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->getGroup(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v1

    goto :goto_1

    .line 391
    .end local v3    # "uid":I
    :cond_3
    if-nez p2, :cond_6

    .line 392
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 393
    .restart local v3    # "uid":I
    if-ltz v3, :cond_4

    .line 396
    sget-object v4, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 397
    .restart local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v1, :cond_5

    iget v6, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v6, v3, :cond_5

    .line 398
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 408
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "uid":I
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 412
    invoke-interface {p1, v2}, Lcom/vkcoffee/android/data/Friends$GetUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;)V

    .line 462
    :goto_3
    return-void

    .line 415
    :cond_7
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkcoffee/android/data/Friends$2;

    invoke-direct {v5, v0, p2, v2, p1}, Lcom/vkcoffee/android/data/Friends$2;-><init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 461
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_3
.end method

.method public static getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "nameCase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 493
    :goto_0
    return-object v2

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 474
    .local v1, "lock":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v0, v3, [Z

    aput-boolean v4, v0, v4

    .line 475
    .local v0, "done":[Z
    new-instance v3, Lcom/vkcoffee/android/data/Friends$3;

    invoke-direct {v3, v2, v0, v1}, Lcom/vkcoffee/android/data/Friends$3;-><init>(Ljava/util/ArrayList;[ZLjava/lang/Object;)V

    invoke-static {p0, v3, p1}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;I)V

    .line 485
    monitor-enter v1

    .line 486
    const/4 v3, 0x0

    :try_start_0
    aget-boolean v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 488
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 489
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static intersect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 346
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 350
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 351
    .restart local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    return-void

    .line 342
    .end local v1    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isFriend(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 191
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 192
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 198
    .end local v0    # "user":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notifyFriendStatusChanged(II)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "status"    # I

    .prologue
    .line 716
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.ACTION_FRIEND_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public static notifyRequestsChanged(I)V
    .locals 3
    .param p0, "requests"    # I

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public static reload(Z)V
    .locals 3
    .param p0, "forceNetwork"    # Z

    .prologue
    .line 97
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RELOAD FRIENDS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Lcom/vkcoffee/android/data/Friends;->loading:Z

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/data/Friends$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/data/Friends$1;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static removeLocally(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 295
    invoke-static {p0}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    .line 297
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 303
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->removeFriend(I)V

    .line 304
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->updateIndex()V

    .line 305
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 306
    return-void

    .line 298
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 534
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 538
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 539
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->users:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 541
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 542
    return-void

    .line 535
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resultFromApi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "resp"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 668
    return-void
.end method

.method public static saveImportedContacts(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "service"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    .local p2, "notOnVk":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v1, 0x0

    .line 527
    invoke-static {p1, v1}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 528
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/vkcoffee/android/cache/Cache;->saveImportedContacts(Ljava/util/List;IZ)V

    .line 529
    invoke-static {p2, p0, v1}, Lcom/vkcoffee/android/cache/Cache;->saveImportedContacts(Ljava/util/List;IZ)V

    .line 530
    return-void
.end method

.method public static search(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "q"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    sget-object v0, Lcom/vkcoffee/android/data/Friends;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setOnlineStatus(II)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "status"    # I

    .prologue
    .line 327
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 331
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 332
    iput p1, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 336
    .end local v0    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 337
    return-void

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setOnlines(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 314
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x1

    iput v2, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    goto :goto_1

    .line 316
    :cond_0
    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const/4 v2, 0x3

    iput v2, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    goto :goto_1

    .line 319
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    goto :goto_1

    .line 322
    .end local v0    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    sget-object v1, Lcom/vkcoffee/android/data/Friends;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 323
    return-void

    .line 311
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateIndex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 178
    sget-object v2, Lcom/vkcoffee/android/data/Friends;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/SearchIndexer;->build()V

    .line 179
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 180
    .local v0, "me":Lcom/vkcoffee/android/UserProfile;
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 181
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "username"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "sp":[Ljava/lang/String;
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 183
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 185
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "userphoto"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 186
    sget-object v2, Lcom/vkcoffee/android/data/Friends;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/SearchIndexer;->add(Lcom/vkcoffee/android/Indexable;)V

    .line 187
    return-void
.end method

.method public static updateSorting()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method
