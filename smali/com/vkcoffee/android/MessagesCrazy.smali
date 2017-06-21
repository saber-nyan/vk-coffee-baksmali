.class public Lcom/vkcoffee/android/MessagesCrazy;
.super Ljava/lang/Object;
.source "MessagesCrazy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;,
        Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;,
        Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;
    }
.end annotation


# static fields
.field private static dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static lastUpdated:J

.field public static updateLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(J)V
    .locals 0

    .prologue
    .line 28
    sput-wide p0, Lcom/vkcoffee/android/MessagesCrazy;->lastUpdated:J

    return-void
.end method

.method public static getCrazyDialogs(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 7
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "callback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 32
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDialogs "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v3, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, p0, p1

    if-lt v3, v4, :cond_0

    sget-object v3, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->lambdaFactory$(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 51
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v3, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    add-int v4, p0, p1

    invoke-virtual {v3, p0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 48
    sget-object v3, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 49
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Returned dialogs from ram "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p2, v2}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 38
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 39
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "added "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "crazyTyping"

    const-string v6, ","

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v1

    .line 42
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v1, :cond_4

    .line 43
    iput-object v1, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 45
    :cond_4
    new-instance v4, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/DialogEntry;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static lambda$getDialogs$264(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 10
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    const v9, 0x77359400

    .line 54
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getDialogsCount()I

    move-result v0

    .line 55
    .local v0, "cacheCount":I
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cache count "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v6, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v0, :cond_0

    add-int v6, p0, p1

    if-ge v0, v6, :cond_1

    .line 57
    :cond_0
    new-instance v6, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;

    mul-int/lit8 v7, p1, 0x2

    invoke-direct {v6, p0, v7}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;-><init>(II)V

    new-instance v7, Lcom/vkcoffee/android/MessagesCrazy$1;

    invoke-direct {v7, p2, p1}, Lcom/vkcoffee/android/MessagesCrazy$1;-><init>(Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)V

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 98
    .local v4, "loadDlgsReq":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/DialogEntry;>;>;"
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 99
    const/4 v4, 0x0

    .line 125
    .end local v4    # "loadDlgsReq":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/DialogEntry;>;>;"
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    sget-object v6, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    sget-object v6, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v0, v7

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    .local v1, "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v6, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 123
    sget-object v6, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 124
    invoke-static {v1, p0, p1, p2}, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->lambdaFactory$(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 113
    .local v2, "e2":Lcom/vkcoffee/android/DialogEntry;
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "crazyTyping"

    const-string v8, ","

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-le v6, v9, :cond_4

    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v6, v6, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v6, :cond_4

    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 115
    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_4
    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ge v6, v9, :cond_2

    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    .end local v1    # "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    .end local v2    # "e2":Lcom/vkcoffee/android/DialogEntry;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method static lambda$null$262(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "arrayList"    # Ljava/util/ArrayList;
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;
    .param p4, "users"    # Ljava/util/ArrayList;

    .prologue
    const v10, 0x77359400

    .line 156
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "On users loaded "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 158
    .local v6, "u":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 163
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "U="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, "it2":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 184
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int v8, p1, p2

    if-lt v7, v8, :cond_3

    .line 186
    :try_start_0
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    add-int v8, p1, p2

    invoke-virtual {v7, p1, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 195
    if-eqz p3, :cond_2

    .line 196
    invoke-interface {p3, v5}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 198
    :cond_2
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 200
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_3
    return-void

    .line 160
    .end local v3    # "it2":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 161
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    iget v7, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 166
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v3    # "it2":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 167
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "crazyTyping"

    const-string v9, ","

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v8, v8, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-le v7, v10, :cond_6

    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v7, v7, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v7, :cond_6

    .line 169
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v6, v7}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 170
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 175
    :cond_6
    :goto_4
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ge v7, v10, :cond_0

    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 176
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v6, v7}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 177
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    iput-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    goto/16 :goto_1

    .line 172
    :cond_7
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t find photo for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v9, v9, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 179
    :cond_8
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t find profile for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v9, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 190
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    .line 191
    .local v1, "e3":Lcom/vkcoffee/android/DialogEntry;
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "crazyTyping"

    const-string v10, ","

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v9, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 192
    new-instance v8, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v8, v1}, Lcom/vkcoffee/android/DialogEntry;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 187
    .end local v1    # "e3":Lcom/vkcoffee/android/DialogEntry;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :catch_0
    move-exception v7

    goto/16 :goto_2
.end method

.method static lambda$success$263(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;ILjava/util/ArrayList;)V
    .locals 9
    .param p1, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;
    .param p2, "i"    # I
    .param p3, "users"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;",
            "Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;",
            "I",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "vKList":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/DialogEntry;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 128
    .local v6, "u":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 134
    .local v3, "it2":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 141
    :try_start_0
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_2
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    sget-object v7, Lcom/vkcoffee/android/MessagesCrazy;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 147
    if-eqz p1, :cond_1

    .line 148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v8

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/data/VKList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 152
    invoke-interface {p1, v5}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 154
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_1
    return-void

    .line 130
    .end local v3    # "it2":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 131
    .local v4, "p":Lcom/vkcoffee/android/UserProfile;
    iget v7, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v4    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v3    # "it2":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 136
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v8, 0x77359400

    if-le v7, v8, :cond_0

    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v7, v7, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v6, v7}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 137
    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    goto :goto_1

    .line 149
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    .line 150
    .local v1, "e2":Lcom/vkcoffee/android/DialogEntry;
    new-instance v8, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v8, v1}, Lcom/vkcoffee/android/DialogEntry;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 142
    .end local v1    # "e2":Lcom/vkcoffee/android/DialogEntry;
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :catch_0
    move-exception v7

    goto :goto_2
.end method
