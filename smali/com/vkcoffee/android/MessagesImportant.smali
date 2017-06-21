.class public Lcom/vkcoffee/android/MessagesImportant;
.super Ljava/lang/Object;
.source "MessagesImportant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;
    }
.end annotation


# static fields
.field private static histories:Lcom/vkcoffee/android/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/cache/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/vkcoffee/android/cache/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/MessagesImportant;->histories:Lcom/vkcoffee/android/cache/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/vkcoffee/android/cache/LruCache;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkcoffee/android/MessagesImportant;->histories:Lcom/vkcoffee/android/cache/LruCache;

    return-object v0
.end method

.method public static getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
    .locals 2
    .param p0, "peer"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "startMsgID"    # I
    .param p4, "callback"    # Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->lambdaFactory$(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    return-void
.end method

.method static lambda$getHistory$267(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
    .locals 15
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I
    .param p4, "getMessagesCallback"    # Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "GetHistory "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 32
    const-string v1, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Messages.getHistory("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v11, 0x0

    .line 34
    .local v11, "numUnread1":I
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 35
    const/4 v11, 0x0

    .line 38
    :cond_0
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getMessagesHistoryCount(I)I

    move-result v7

    .line 43
    .local v7, "ccnt":I
    if-eqz p3, :cond_1

    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_8

    .line 44
    :cond_1
    const-string v1, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "get history "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", offset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, p1, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", count="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", cached="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz p1, :cond_6

    move/from16 v1, p2

    :goto_1
    add-int/lit8 v13, p1, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v1, v13

    if-lt v7, v1, :cond_8

    .line 46
    add-int/lit8 v1, p1, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v0, p2

    invoke-static {p0, v1, v0}, Lcom/vkcoffee/android/cache/Cache;->getMessagesHistory(III)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    if-eqz p3, :cond_2

    add-int/lit8 v1, p1, 0x0

    if-gtz v1, :cond_7

    :cond_2
    const/4 v9, 0x0

    .line 48
    .local v9, "i5":I
    :goto_2
    move-object/from16 v0, p4

    invoke-interface {v0, v2, v9}, Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 50
    sget-object v1, Lcom/vkcoffee/android/MessagesImportant;->histories:Lcom/vkcoffee/android/cache/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 51
    sget-object v1, Lcom/vkcoffee/android/MessagesImportant;->histories:Lcom/vkcoffee/android/cache/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v13, v14}, Lcom/vkcoffee/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    sget-object v1, Lcom/vkcoffee/android/MessagesImportant;->histories:Lcom/vkcoffee/android/cache/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 54
    .local v12, "ramCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v13, p1, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-le v1, v13, :cond_4

    .line 55
    add-int/lit8 v1, p1, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v1, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 57
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v13, p1, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-ne v1, v13, :cond_5

    .line 58
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 59
    .local v10, "len":I
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v12, v10, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 62
    .end local v10    # "len":I
    :cond_5
    const-string v1, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Returinig peer "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " history from cache"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 111
    .end local v12    # "ramCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :goto_3
    return-void

    .line 45
    .end local v9    # "i5":I
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 47
    :cond_7
    add-int/lit8 v9, p1, 0x0

    goto/16 :goto_2

    .line 67
    :cond_8
    move v6, v11

    .line 68
    .local v6, "_numUnread":I
    if-lez p3, :cond_9

    .line 69
    move/from16 v9, p1

    .line 73
    .restart local v9    # "i5":I
    :goto_4
    move-object/from16 v3, p4

    .line 74
    .local v3, "getMessagesCallback2":Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;
    move/from16 v4, p3

    .line 75
    .local v4, "i6":I
    move/from16 v5, p1

    .line 76
    .local v5, "i7":I
    move v8, p0

    .line 77
    .local v8, "i8":I
    new-instance v13, Lcom/vkcoffee/android/apicoffee/CoffeGetImp;

    move/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/vkcoffee/android/apicoffee/CoffeGetImp;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/MessagesImportant$1;

    invoke-direct/range {v1 .. v8}, Lcom/vkcoffee/android/MessagesImportant$1;-><init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;IIIII)V

    invoke-virtual {v13, v1}, Lcom/vkcoffee/android/apicoffee/CoffeGetImp;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 110
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    .line 71
    .end local v3    # "getMessagesCallback2":Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;
    .end local v4    # "i6":I
    .end local v5    # "i7":I
    .end local v8    # "i8":I
    .end local v9    # "i5":I
    :cond_9
    const/4 v1, 0x0

    add-int/lit8 v13, p1, 0x0

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .restart local v9    # "i5":I
    goto :goto_4

    .line 39
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    .end local v6    # "_numUnread":I
    .end local v7    # "ccnt":I
    .end local v9    # "i5":I
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
