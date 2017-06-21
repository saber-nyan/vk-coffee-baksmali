.class public Lcom/vkcoffee/android/data/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;,
        Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;,
        Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;,
        Lcom/vkcoffee/android/data/Messages$SearchCallback;,
        Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;
    }
.end annotation


# static fields
.field public static final ACTION_MESSAGE_ID_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.MESSAGE_ID_CHANGED"

.field public static final ACTION_SEND_FAILED:Ljava/lang/String; = "com.vkcoffee.android.MESSAGE_SEND_FAILED"

.field private static final DEBUG:Z = true

.field public static counterLock:Ljava/util/concurrent/Semaphore;

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

.field private static histories:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private static lastUpdated:J

.field private static loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private static pendingUploads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static sendLock:Lcom/vkcoffee/android/background/CountingLock;

.field public static updateLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    .line 57
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    .line 59
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    .line 60
    new-instance v0, Lcom/vkcoffee/android/background/CountingLock;

    invoke-direct {v0}, Lcom/vkcoffee/android/background/CountingLock;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->sendLock:Lcom/vkcoffee/android/background/CountingLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1529
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/vkcoffee/android/data/Messages;->removeFromSending(Lcom/vkcoffee/android/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/vkcoffee/android/data/Messages;->broadcastNewMessage(Lcom/vkcoffee/android/Message;)V

    return-void
.end method

.method static synthetic access$300()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 48
    sput-wide p0, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    return-wide p0
.end method

.method public static add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
    .locals 18
    .param p0, "msg"    # Lcom/vkcoffee/android/Message;
    .param p1, "peerProfile"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "senderPhoto"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 64
    const-string/jumbo v13, "vk"

    const-string/jumbo v14, "sender photo is null!"

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Add message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " START"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v13, :cond_1

    .line 71
    :try_start_0
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 76
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    .line 77
    sget-object v13, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v14, "msg"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string/jumbo v14, "updated"

    sget-wide v16, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 80
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v14, v15}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 84
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    const/4 v3, 0x1

    .line 85
    .local v3, "appended":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_5

    .line 86
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v13, :cond_3

    .line 105
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    .line 109
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/data/Messages$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/Message;)Ljava/lang/Runnable;

    move-result-object v11

    .line 120
    .local v11, "rr":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    if-ne v13, v14, :cond_9

    .line 121
    invoke-static {v11}, Lcom/vkcoffee/android/api/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 125
    :goto_2
    if-nez v3, :cond_c

    .line 126
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v13, :cond_b

    .line 128
    :try_start_1
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 132
    :goto_3
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/DialogEntry;

    .line 133
    .local v4, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v14, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v14, v14, Lcom/vkcoffee/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v14, v15, :cond_4

    .line 134
    iget v14, v4, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v4, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    goto :goto_4

    .line 88
    .end local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v11    # "rr":Ljava/lang/Runnable;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->time:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->time:I

    if-ge v13, v14, :cond_6

    .line 89
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v8, v13, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 91
    :cond_6
    const v9, 0x7fffffff

    .line 92
    .local v9, "prevTime":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_7

    .line 93
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/Message;->time:I

    if-lt v13, v9, :cond_8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->time:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->time:I

    if-gt v13, v14, :cond_8

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 97
    :cond_8
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/Message;

    iget v9, v13, Lcom/vkcoffee/android/Message;->time:I

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 123
    .end local v6    # "i":I
    .end local v9    # "prevTime":I
    .restart local v11    # "rr":Ljava/lang/Runnable;
    :cond_9
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 137
    :cond_a
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    .line 297
    :cond_b
    :goto_6
    return-void

    .line 143
    :cond_c
    :try_start_2
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :goto_7
    const/4 v5, 0x0

    .line 148
    .local v5, "found":Z
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/DialogEntry;

    .line 149
    .restart local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v14, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v14, v14, Lcom/vkcoffee/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v14, v15, :cond_d

    .line 150
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 151
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v13, :cond_e

    .line 153
    iget v13, v4, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v4, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 155
    :cond_e
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    const v9, 0x7fffffff

    .line 157
    .restart local v9    # "prevTime":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_f

    .line 158
    iget-object v13, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->time:I

    if-lt v13, v9, :cond_13

    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/DialogEntry;

    iget-object v13, v13, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v13, v13, Lcom/vkcoffee/android/Message;->time:I

    iget-object v14, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v14, v14, Lcom/vkcoffee/android/Message;->time:I

    if-gt v13, v14, :cond_13

    .line 159
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13, v14, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    :cond_f
    const/4 v5, 0x1

    .line 168
    .end local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v6    # "i":I
    .end local v9    # "prevTime":I
    :cond_10
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    .line 170
    if-nez v5, :cond_12

    .line 171
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "didn\'t find dialog for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "_unreadCount":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v13, :cond_11

    .line 174
    const-string/jumbo v13, "vk"

    const-string/jumbo v14, "getting unread count from cache"

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v13}, Lcom/vkcoffee/android/cache/Cache;->getNumUnreadMessages(I)I

    move-result v2

    .line 176
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "result="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v13, -0x1

    if-ne v2, v13, :cond_11

    .line 178
    const/4 v13, 0x1

    new-array v10, v13, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v10, v13

    .line 179
    .local v10, "res":[I
    new-instance v13, Lcom/vkcoffee/android/api/messages/MessagesGetUnreadCount;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-direct {v13, v14}, Lcom/vkcoffee/android/api/messages/MessagesGetUnreadCount;-><init>(I)V

    new-instance v14, Lcom/vkcoffee/android/data/Messages$1;

    invoke-direct {v14, v10}, Lcom/vkcoffee/android/data/Messages$1;-><init>([I)V

    .line 180
    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/api/messages/MessagesGetUnreadCount;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v13

    .line 191
    invoke-virtual {v13}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 192
    const/4 v13, 0x0

    aget v2, v10, v13

    .line 198
    .end local v10    # "res":[I
    :cond_11
    move v12, v2

    .line 199
    .local v12, "unreadCount":I
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Final unread count value "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_14

    .line 201
    new-instance v4, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v4}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 202
    .restart local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 203
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 205
    iput v12, v4, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 207
    :try_start_3
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 211
    :goto_9
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 212
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    .line 295
    .end local v2    # "_unreadCount":I
    .end local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v12    # "unreadCount":I
    :cond_12
    :goto_a
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Add message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " END"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 162
    .restart local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    .restart local v6    # "i":I
    .restart local v9    # "prevTime":I
    :cond_13
    sget-object v13, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/DialogEntry;

    iget-object v13, v13, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v9, v13, Lcom/vkcoffee/android/Message;->time:I

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 214
    .end local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v6    # "i":I
    .end local v9    # "prevTime":I
    .restart local v2    # "_unreadCount":I
    .restart local v12    # "unreadCount":I
    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/Message;->peer:I

    const v14, 0x77359400

    if-ge v13, v14, :cond_15

    .line 217
    new-instance v13, Lcom/vkcoffee/android/data/Messages$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v12}, Lcom/vkcoffee/android/data/Messages$2;-><init>(Lcom/vkcoffee/android/Message;Ljava/lang/String;I)V

    invoke-static {v7, v13}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto :goto_a

    .line 249
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/Message;->peer:I

    const v14, 0x77359400

    sub-int/2addr v13, v14

    new-instance v14, Lcom/vkcoffee/android/data/Messages$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v12}, Lcom/vkcoffee/android/data/Messages$3;-><init>(Lcom/vkcoffee/android/Message;Ljava/lang/String;I)V

    invoke-static {v13, v14}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_a

    .line 208
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    :catch_0
    move-exception v13

    goto :goto_9

    .line 144
    .end local v2    # "_unreadCount":I
    .end local v4    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v5    # "found":Z
    .end local v12    # "unreadCount":I
    :catch_1
    move-exception v13

    goto/16 :goto_7

    .line 129
    :catch_2
    move-exception v13

    goto/16 :goto_3

    .line 72
    .end local v3    # "appended":Z
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    .end local v11    # "rr":Ljava/lang/Runnable;
    :catch_3
    move-exception v13

    goto/16 :goto_0
.end method

.method public static applyActions(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/cache/MessagesAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/cache/MessagesAction;>;"
    const v5, 0x77359400

    .line 1260
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->applyMessagesActions(Ljava/util/ArrayList;)I

    .line 1261
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 1263
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1268
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/vkcoffee/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 1271
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-le v3, v5, :cond_1

    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v3, :cond_1

    .line 1272
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1273
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    :cond_1
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ge v3, v5, :cond_0

    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1277
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1278
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1282
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1283
    invoke-static {}, Lcom/vkcoffee/android/data/Messages$$Lambda$9;->lambdaFactory$()Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 1319
    return-void

    .line 1264
    .end local v1    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private static broadcastNewMessage(Lcom/vkcoffee/android/Message;)V
    .locals 3
    .param p0, "m"    # Lcom/vkcoffee/android/Message;

    .prologue
    const v2, 0x77359400

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    iget v1, p0, Lcom/vkcoffee/android/Message;->peer:I

    if-ge v1, v2, :cond_0

    .line 1064
    invoke-static {p0}, Lcom/vkcoffee/android/data/Messages$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/Message;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 1090
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/Message;->peer:I

    sub-int/2addr v1, v2

    invoke-static {p0}, Lcom/vkcoffee/android/data/Messages$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/Message;)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method public static createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1479
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1480
    .local v0, "bldr":Landroid/net/Uri$Builder;
    const-string/jumbo v5, "vkchatphoto"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "c"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    .local v4, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1483
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ChatUser;

    .line 1484
    .local v1, "cu":Lcom/vkcoffee/android/ChatUser;
    iget-object v5, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v5, v6, :cond_1

    .line 1482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    iget-object v5, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1490
    iget-object v5, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 1495
    .end local v1    # "cu":Lcom/vkcoffee/android/ChatUser;
    :cond_2
    const/4 v2, 0x0

    .line 1496
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1497
    .local v3, "photo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1498
    add-int/lit8 v2, v2, 0x1

    .line 1499
    goto :goto_1

    .line 1500
    .end local v3    # "photo":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    .line 1451
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1452
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 1453
    .local v3, "iconSize":I
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v6

    invoke-virtual {v6, p0}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1454
    .local v5, "photo":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1455
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1456
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1457
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1458
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1459
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1460
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1461
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1462
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1463
    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1464
    return-object v2
.end method

.method public static delete(Ljava/util/List;Z)V
    .locals 12
    .param p1, "onlyLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p0, "_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v9, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    sget-object v9, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-virtual {v9}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    .line 1219
    .local v2, "histories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1220
    .local v0, "cachedChats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1221
    .local v8, "peer":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1222
    .local v3, "history":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/Message;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1223
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/Message;

    .line 1224
    .local v7, "msg":Lcom/vkcoffee/android/Message;
    iget v9, v7, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1225
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1229
    .end local v3    # "history":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/Message;>;"
    .end local v7    # "msg":Lcom/vkcoffee/android/Message;
    .end local v8    # "peer":I
    :cond_2
    sget-object v9, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    .local v1, "failed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v5, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1233
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1234
    .local v4, "id":I
    if-gez v4, :cond_3

    .line 1235
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1238
    .end local v4    # "id":I
    :cond_4
    invoke-static {v1}, Lcom/vkcoffee/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1239
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1240
    .restart local v4    # "id":I
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "com.vkcoffee.android.MESSAGE_DELETED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "msg_id"

    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1242
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v11, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v6, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    .line 1244
    .end local v4    # "id":I
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1245
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    if-nez p1, :cond_6

    .line 1246
    new-instance v10, Lcom/vkcoffee/android/api/messages/MessagesDelete;

    invoke-direct {v10, v5}, Lcom/vkcoffee/android/api/messages/MessagesDelete;-><init>(Ljava/util/List;)V

    new-instance v11, Lcom/vkcoffee/android/data/Messages$14;

    const/4 v9, 0x0

    check-cast v9, Landroid/content/Context;

    invoke-direct {v11, v9, v5}, Lcom/vkcoffee/android/data/Messages$14;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/api/messages/MessagesDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v9

    .line 1251
    invoke-virtual {v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1253
    :cond_6
    return-void

    .line 1215
    .end local v0    # "cachedChats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "failed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "histories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;>;"
    .end local v5    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public static deleteMessageLocally(I)V
    .locals 6
    .param p0, "mid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1169
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1171
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :goto_0
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 1176
    .local v0, "d":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->id:I

    if-ne v3, p0, :cond_0

    .line 1177
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1178
    move-object v1, v0

    .line 1179
    .local v1, "dlg":Lcom/vkcoffee/android/DialogEntry;
    iget-object v2, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v3, 0x1

    new-instance v4, Lcom/vkcoffee/android/data/Messages$13;

    invoke-direct {v4, v1}, Lcom/vkcoffee/android/data/Messages$13;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-static {v2, v5, v3, v5, v4}, Lcom/vkcoffee/android/data/Messages;->getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    .line 1209
    .end local v0    # "d":Lcom/vkcoffee/android/DialogEntry;
    .end local v1    # "dlg":Lcom/vkcoffee/android/DialogEntry;
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1210
    return-void

    .line 1172
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAllLoadedDialogs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    return-void
.end method

.method public static getById(I)Lcom/vkcoffee/android/Message;
    .locals 5
    .param p0, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 304
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getMessageByID(I)Lcom/vkcoffee/android/Message;

    move-result-object v0

    .line 305
    .local v0, "m":Lcom/vkcoffee/android/Message;
    if-eqz v0, :cond_0

    .line 325
    .end local v0    # "m":Lcom/vkcoffee/android/Message;
    :goto_0
    return-object v0

    .line 308
    .restart local v0    # "m":Lcom/vkcoffee/android/Message;
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/vkcoffee/android/Message;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    .line 309
    .local v1, "res":[Lcom/vkcoffee/android/Message;
    new-instance v2, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v3, "messages.getById"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "message_ids"

    .line 310
    invoke-virtual {v2, v3, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/data/Messages$4;

    invoke-direct {v3, v1}, Lcom/vkcoffee/android/data/Messages$4;-><init>([Lcom/vkcoffee/android/Message;)V

    .line 311
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 325
    aget-object v0, v1, v4

    goto :goto_0
.end method

.method public static getChatAdmin(I)I
    .locals 1
    .param p0, "chatID"    # I

    .prologue
    .line 1256
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getChatAdmin(I)I

    move-result v0

    return v0
.end method

.method public static getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V
    .locals 3
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 1093
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->needUpdateChat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "need update chat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-static {p0, p1}, Lcom/vkcoffee/android/data/Messages;->getChatUsersFromApi(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    .line 1109
    :goto_0
    return-void

    .line 1097
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/data/Messages$$Lambda$8;->lambdaFactory$(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static getChatUsersFromApi(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V
    .locals 2
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 1112
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetChat;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/messages/MessagesGetChat;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/data/Messages$10;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/data/Messages$10;-><init>(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetChat;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1140
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1141
    return-void
.end method

.method public static getDialogs(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 7
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "callback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 330
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDialogs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v4, p0, p1

    if-lt v3, v4, :cond_2

    .line 333
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int v4, p0, p1

    invoke-virtual {v3, p0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 336
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v1

    .line 338
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v1, :cond_0

    .line 339
    iput-object v1, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 341
    :cond_0
    new-instance v4, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/DialogEntry;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 345
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returned dialogs from ram "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-interface {p2, v2}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 488
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :goto_1
    return-void

    .line 351
    :cond_2
    new-instance v3, Ljava/lang/Thread;

    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/data/Messages$$Lambda$2;->lambdaFactory$(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 487
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public static getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
    .locals 2
    .param p0, "peer"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "startMsgID"    # I
    .param p4, "callback"    # Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 656
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->lambdaFactory$(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 763
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 764
    return-void
.end method

.method public static getLastUpdated()J
    .locals 4

    .prologue
    .line 1362
    sget-wide v0, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1363
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "msg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "updated"

    sget-wide v2, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    .line 1365
    :cond_0
    sget-wide v0, Lcom/vkcoffee/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method public static getShortcutIntent(Lcom/vkcoffee/android/UserProfile;)Landroid/content/Intent;
    .locals 6
    .param p0, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 1468
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkcoffee/android/data/Messages;->createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1469
    .local v0, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vkontakte://vk.com/write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1470
    .local v2, "sIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1471
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1473
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    const-string/jumbo v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1475
    return-object v1
.end method

.method public static getUnreadCount(I)I
    .locals 7
    .param p0, "peer"    # I

    .prologue
    .line 580
    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    :goto_0
    :try_start_1
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    :goto_1
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get unread count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " START"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :try_start_2
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/DialogEntry;

    .line 594
    .local v1, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v4, v1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v4, p0, :cond_0

    .line 595
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 596
    iget v0, v1, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get unread count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .end local v1    # "e":Lcom/vkcoffee/android/DialogEntry;
    :goto_2
    return v0

    .line 599
    :cond_1
    :try_start_3
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 601
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getNumUnreadMessages(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 602
    .local v0, "cache":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 618
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get unread count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 606
    :cond_2
    const/4 v3, 0x1

    :try_start_4
    new-array v2, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 607
    .local v2, "res":[I
    new-instance v3, Lcom/vkcoffee/android/api/messages/MessagesGetUnreadCount;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/api/messages/MessagesGetUnreadCount;-><init>(I)V

    new-instance v4, Lcom/vkcoffee/android/data/Messages$6;

    invoke-direct {v4, v2}, Lcom/vkcoffee/android/data/Messages$6;-><init>([I)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/messages/MessagesGetUnreadCount;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 612
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 614
    new-instance v3, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 615
    const/4 v3, 0x0

    aget v0, v2, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 618
    .end local v0    # "cache":I
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get unread count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_2

    .line 617
    .end local v2    # "res":[I
    :catchall_0
    move-exception v3

    .line 618
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Get unread count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " END"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3

    .line 586
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 581
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public static getUnreadCount(ILcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;)V
    .locals 1
    .param p0, "peer"    # I
    .param p1, "callback"    # Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;

    .prologue
    .line 625
    invoke-static {p1, p0}, Lcom/vkcoffee/android/data/Messages$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/api/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public static getUnreadCountFast(I)I
    .locals 4
    .param p0, "peer"    # I

    .prologue
    const/4 v2, -0x1

    .line 561
    const/4 v1, -0x1

    .line 562
    .local v1, "result":I
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v2

    .line 565
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 569
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v3, p0, :cond_2

    .line 570
    iget v1, v0, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    goto :goto_1

    .line 573
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_3
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 574
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    move v2, v1

    .line 575
    goto :goto_0
.end method

.method static synthetic lambda$add$261(Lcom/vkcoffee/android/Message;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {v0}, Lcom/vkcoffee/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 118
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 119
    return-void

    .line 112
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic lambda$applyActions$271(Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "users"    # Ljava/util/ArrayList;

    .prologue
    const v7, 0x77359400

    .line 1285
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "On users loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1288
    .local v2, "u":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 1289
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1292
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "U="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :goto_1
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 1301
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-le v3, v7, :cond_2

    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v3, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v3, :cond_2

    .line 1302
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1303
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 1309
    :cond_2
    :goto_3
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ge v3, v7, :cond_1

    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1310
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1311
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iput-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    goto :goto_2

    .line 1296
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 1306
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_3
    const-string/jumbo v3, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find photo for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1313
    :cond_4
    const-string/jumbo v3, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find profile for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1317
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_5
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1318
    return-void
.end method

.method static synthetic lambda$broadcastNewMessage$268(Lcom/vkcoffee/android/Message;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "users"    # Ljava/util/ArrayList;

    .prologue
    const/4 v4, 0x0

    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1067
    const-string/jumbo v1, "peer_id"

    iget v2, p0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    const-string/jumbo v2, "peer_profile"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1069
    const-string/jumbo v1, "sender_photo"

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "userphoto"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method static synthetic lambda$broadcastNewMessage$269(Lcom/vkcoffee/android/Message;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "users"    # Ljava/util/ArrayList;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;

    .prologue
    .line 1074
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 1075
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iput-object p2, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1076
    iget v2, p0, Lcom/vkcoffee/android/Message;->peer:I

    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1077
    if-eqz p3, :cond_0

    .line 1078
    iput-object p3, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 1082
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1084
    const-string/jumbo v2, "peer_id"

    iget v3, p0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const-string/jumbo v2, "peer_profile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1086
    const-string/jumbo v2, "sender_photo"

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "userphoto"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1088
    return-void

    .line 1080
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic lambda$getChatUsers$270(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V
    .locals 5

    .prologue
    .line 1098
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getChatUsers(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1099
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get users from cache, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "cache returned empty list, fallback to api"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {p0, p1}, Lcom/vkcoffee/android/data/Messages;->getChatUsersFromApi(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    .line 1107
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getChatInfo(I)[Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "info":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {p1, v1, v2, v3}, Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$getDialogs$264(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 8

    .prologue
    const v7, 0x77359400

    .line 352
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getDialogsCount()I

    move-result v0

    .line 353
    .local v0, "cacheCount":I
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cache count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v0, :cond_3

    add-int v4, p0, p1

    if-lt v0, v4, :cond_3

    .line 357
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v5, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 362
    .local v1, "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/DialogEntry;

    .line 365
    .local v2, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-le v5, v7, :cond_1

    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v5, v5, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v5, :cond_1

    .line 366
    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ge v5, v7, :cond_0

    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v5, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 371
    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v5, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    .end local v2    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_2
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 377
    invoke-static {v1, p0, p1, p2}, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->lambdaFactory$(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 487
    .end local v1    # "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 425
    :cond_3
    new-instance v4, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;

    mul-int/lit8 v5, p1, 0x2

    invoke-direct {v4, p0, v5}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;-><init>(II)V

    new-instance v5, Lcom/vkcoffee/android/data/Messages$5;

    invoke-direct {v5, p2, p1}, Lcom/vkcoffee/android/data/Messages$5;-><init>(Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/data/Messages;->loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 485
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 486
    const/4 v4, 0x0

    sput-object v4, Lcom/vkcoffee/android/data/Messages;->loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_2

    .line 358
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method static synthetic lambda$getHistory$267(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
    .locals 13

    .prologue
    .line 657
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetHistory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 659
    const-string/jumbo v1, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Messages.getHistory("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v10, 0x0

    .line 662
    .local v10, "numUnread1":I
    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 663
    invoke-static {p0}, Lcom/vkcoffee/android/data/Messages;->getUnreadCount(I)I

    move-result v10

    .line 666
    :cond_0
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->getMessagesHistoryCount(I)I

    move-result v7

    .line 695
    .local v7, "ccnt":I
    if-eqz p3, :cond_1

    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_8

    .line 697
    :cond_1
    const-string/jumbo v1, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get history "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p1, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cached="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    add-int v1, p1, v10

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz p1, :cond_6

    move v1, p2

    :goto_1
    add-int/2addr v1, v3

    if-lt v7, v1, :cond_8

    .line 700
    add-int v1, p1, v10

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v1, p2}, Lcom/vkcoffee/android/cache/Cache;->getMessagesHistory(III)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 701
    if-eqz p3, :cond_2

    add-int v1, p1, v10

    if-gtz v1, :cond_7

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p4

    invoke-interface {v0, v2, v1}, Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 702
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 703
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_3
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 706
    .local v11, "ramCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v3, p1, v10

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v1, v3, :cond_4

    .line 707
    add-int v1, p1, v10

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v11, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 709
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v3, p1, v10

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 710
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 711
    .local v9, "len":I
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 712
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v11, v9, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 715
    .end local v9    # "len":I
    :cond_5
    const-string/jumbo v1, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Returinig peer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " history from cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 763
    .end local v11    # "ramCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :goto_3
    return-void

    .line 699
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 701
    :cond_7
    add-int v1, p1, v10

    goto/16 :goto_2

    .line 722
    :cond_8
    move v6, v10

    .line 724
    .local v6, "_numUnread":I
    new-instance v12, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;

    if-lez p3, :cond_9

    move v1, p1

    :goto_4
    move/from16 v0, p3

    invoke-direct {v12, p0, v1, p2, v0}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;-><init>(IIII)V

    new-instance v1, Lcom/vkcoffee/android/data/Messages$7;

    move-object/from16 v3, p4

    move/from16 v4, p3

    move v5, p1

    move v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/vkcoffee/android/data/Messages$7;-><init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;IIIII)V

    .line 725
    invoke-virtual {v12, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 761
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 762
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    .line 724
    :cond_9
    const/4 v1, 0x0

    add-int v3, p1, v10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    .line 667
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    .end local v6    # "_numUnread":I
    .end local v7    # "ccnt":I
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic lambda$getUnreadCount$266(Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;I)V
    .locals 1

    .prologue
    .line 625
    invoke-static {p1}, Lcom/vkcoffee/android/data/Messages;->getUnreadCount(I)I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/vkcoffee/android/data/Messages$GetUnreadCountCallback;->onUnreadCountLoaded(II)V

    return-void
.end method

.method static synthetic lambda$null$262(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;Ljava/util/ArrayList;)V
    .locals 9
    .param p4, "users"    # Ljava/util/ArrayList;

    .prologue
    const v8, 0x77359400

    .line 379
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "On users loaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 382
    .local v3, "u":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 383
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v5, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 386
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "U="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 390
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-le v4, v8, :cond_2

    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v4, v4, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v4, :cond_2

    .line 391
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v3, v4}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 398
    :cond_2
    :goto_2
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ge v4, v8, :cond_1

    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 399
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3, v4}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v4, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    iput-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    goto :goto_1

    .line 395
    :cond_3
    const-string/jumbo v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find photo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v7, v7, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 402
    :cond_4
    const-string/jumbo v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find profile for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_5
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v5, p1, p2

    if-lt v4, v5, :cond_8

    .line 408
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int v5, p1, p2

    invoke-virtual {v4, p1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 414
    .restart local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    new-instance v5, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/DialogEntry;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 416
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_6
    if-eqz p3, :cond_7

    .line 417
    invoke-interface {p3, v2}, Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 419
    :cond_7
    sget-object v4, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 421
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_8
    return-void

    .line 409
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method static synthetic lambda$setReadState$265(IZ)V
    .locals 8

    .prologue
    .line 493
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    invoke-static {p0, p1}, Lcom/vkcoffee/android/cache/Cache;->setMessageReadState(IZ)V

    .line 498
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 499
    .restart local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v6, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->id:I

    if-ne v6, p0, :cond_0

    .line 500
    iget-object v5, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iput-boolean p1, v5, Lcom/vkcoffee/android/Message;->readState:Z

    .line 506
    :cond_1
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 507
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 508
    .local v1, "k":I
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 509
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    if-eqz v4, :cond_2

    .line 512
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    .line 513
    .local v3, "msg":Lcom/vkcoffee/android/Message;
    iget v7, v3, Lcom/vkcoffee/android/Message;->id:I

    if-ne v7, p0, :cond_3

    .line 514
    iput-boolean p1, v3, Lcom/vkcoffee/android/Message;->readState:Z

    .line 515
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 521
    .end local v1    # "k":I
    .end local v3    # "msg":Lcom/vkcoffee/android/Message;
    .end local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :goto_1
    return-void

    .line 520
    :cond_4
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 494
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static markAsRead(II)V
    .locals 2
    .param p0, "peer"    # I
    .param p1, "id"    # I

    .prologue
    .line 1160
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/data/Messages$12;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/data/Messages$12;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1166
    return-void
.end method

.method public static markAsRead(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/vkcoffee/android/data/Messages$11;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/data/Messages$11;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1156
    return-void
.end method

.method public static removeDialog(I)V
    .locals 4
    .param p0, "peer"    # I

    .prologue
    .line 1335
    invoke-static {p0}, Lcom/vkcoffee/android/cache/Cache;->deleteDialog(I)V

    .line 1336
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    :goto_0
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1343
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/DialogEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 1345
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v2, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 1346
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1350
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1351
    return-void

    .line 1339
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/DialogEntry;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static removeFromSending(Lcom/vkcoffee/android/Message;)V
    .locals 5
    .param p0, "m"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 1034
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove from sending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1036
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1037
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Message;

    .line 1038
    .local v0, "msg":Lcom/vkcoffee/android/Message;
    iget v3, v0, Lcom/vkcoffee/android/Message;->id:I

    iget v4, p0, Lcom/vkcoffee/android/Message;->id:I

    if-ne v3, v4, :cond_0

    .line 1039
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1043
    .end local v0    # "msg":Lcom/vkcoffee/android/Message;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Message;

    .line 1045
    .restart local v0    # "msg":Lcom/vkcoffee/android/Message;
    iget v3, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v3}, Lcom/vkcoffee/android/cache/Cache;->containsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1046
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1049
    .end local v0    # "msg":Lcom/vkcoffee/android/Message;
    :cond_3
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1050
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1058
    .end local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :cond_4
    return-void

    .line 1053
    .restart local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :cond_5
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 1054
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Message;

    .line 1055
    .restart local v0    # "msg":Lcom/vkcoffee/android/Message;
    invoke-static {v0}, Lcom/vkcoffee/android/data/Messages;->broadcastNewMessage(Lcom/vkcoffee/android/Message;)V

    goto :goto_1
.end method

.method public static reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1322
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "longpoll"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1324
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_0
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1329
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1330
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1331
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1332
    return-void

    .line 1325
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->deleteAllMessages()V

    .line 1355
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 1356
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 1357
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/data/Messages;->loadDlgsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1359
    :cond_0
    return-void
.end method

.method public static search(Ljava/lang/String;IILcom/vkcoffee/android/data/Messages$SearchCallback;)V
    .locals 2
    .param p0, "q"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "callback"    # Lcom/vkcoffee/android/data/Messages$SearchCallback;

    .prologue
    .line 1369
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesSearch;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/api/messages/MessagesSearch;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/vkcoffee/android/data/Messages$15;

    invoke-direct {v1, p3}, Lcom/vkcoffee/android/data/Messages$15;-><init>(Lcom/vkcoffee/android/data/Messages$SearchCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSearch;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1448
    return-void
.end method

.method public static send(ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vkcoffee/android/Message;
    .locals 23
    .param p0, "peer"    # I
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;",
            "Ljava/util/List",
            "<*>;I)",
            "Lcom/vkcoffee/android/Message;"
        }
    .end annotation

    .prologue
    .line 767
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .local p3, "fwd":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v4, Lcom/vkcoffee/android/Message;

    invoke-direct {v4}, Lcom/vkcoffee/android/Message;-><init>()V

    .line 768
    .local v4, "m":Lcom/vkcoffee/android/Message;
    if-nez p4, :cond_3

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "longpoll"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "tmp_msg_id"

    const/4 v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 769
    .local v20, "id":I
    :goto_0
    if-nez p4, :cond_0

    .line 770
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "longpoll"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "tmp_msg_id"

    add-int/lit8 v5, v20, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 772
    :cond_0
    move/from16 v0, v20

    iput v0, v4, Lcom/vkcoffee/android/Message;->id:I

    .line 773
    move/from16 v0, p0

    iput v0, v4, Lcom/vkcoffee/android/Message;->peer:I

    .line 774
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, p0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v4, Lcom/vkcoffee/android/Message;->out:Z

    .line 775
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v4, Lcom/vkcoffee/android/Message;->sender:I

    .line 776
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    iput v2, v4, Lcom/vkcoffee/android/Message;->time:I

    .line 777
    invoke-virtual {v4}, Lcom/vkcoffee/android/Message;->generateRandomId()V

    .line 779
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/Message;->addAttachments(Ljava/util/Collection;)V

    .line 781
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v6, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_5

    .line 783
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    .line 784
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 785
    .local v18, "fm":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/vkcoffee/android/Message;

    if-eqz v2, :cond_1

    move-object/from16 v2, v18

    .line 786
    check-cast v2, Lcom/vkcoffee/android/Message;

    iget v2, v2, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    .line 787
    check-cast v2, Lcom/vkcoffee/android/Message;

    invoke-virtual {v2}, Lcom/vkcoffee/android/Message;->forward()Lcom/vkcoffee/android/Message$FwdMessage;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/vkcoffee/android/Message;->addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V

    .line 789
    :cond_1
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/vkcoffee/android/Message$FwdMessage;

    if-eqz v2, :cond_2

    move-object/from16 v2, v18

    .line 790
    check-cast v2, Lcom/vkcoffee/android/Message$FwdMessage;

    iget v2, v2, Lcom/vkcoffee/android/Message$FwdMessage;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    check-cast v18, Lcom/vkcoffee/android/Message$FwdMessage;

    .end local v18    # "fm":Ljava/lang/Object;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v2}, Lcom/vkcoffee/android/Message;->addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V

    .line 783
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .end local v6    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "i":I
    .end local v20    # "id":I
    :cond_3
    move/from16 v20, p4

    .line 768
    goto/16 :goto_0

    .line 774
    .restart local v20    # "id":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 795
    .restart local v6    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const/4 v7, 0x0

    .line 796
    .local v7, "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/attachments/Attachment;

    .line 797
    .local v17, "att":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v3, :cond_6

    .line 798
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v7, v17

    .line 799
    check-cast v7, Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 804
    .end local v17    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_7
    const/16 v22, -0x1

    .line 805
    .local v22, "uploadId":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/attachments/Attachment;

    .line 806
    .restart local v17    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/vkcoffee/android/attachments/PendingAttachment;

    if-eqz v3, :cond_8

    .line 807
    check-cast v17, Lcom/vkcoffee/android/attachments/PendingAttachment;

    .end local v17    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface/range {v17 .. v17}, Lcom/vkcoffee/android/attachments/PendingAttachment;->getUploadId()I

    move-result v22

    goto :goto_3

    .line 811
    :cond_9
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_a

    .line 813
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->sendLock:Lcom/vkcoffee/android/background/CountingLock;

    invoke-virtual {v2}, Lcom/vkcoffee/android/background/CountingLock;->increment()V

    .line 815
    new-instance v2, Lcom/vkcoffee/android/api/messages/MessagesSend;

    move/from16 v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/vkcoffee/android/api/messages/MessagesSend;-><init>(ILcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/List;Lcom/vkcoffee/android/attachments/GeoAttachment;)V

    new-instance v3, Lcom/vkcoffee/android/data/Messages$8;

    move/from16 v0, v20

    invoke-direct {v3, v4, v0}, Lcom/vkcoffee/android/data/Messages$8;-><init>(Lcom/vkcoffee/android/Message;I)V

    .line 816
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/messages/MessagesSend;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 850
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 898
    :goto_4
    const/4 v2, 0x0

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v5, "userphoto"

    const-string/jumbo v9, ""

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 899
    return-object v4

    .line 852
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    iget-object v2, v4, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_13

    .line 853
    iget-object v2, v4, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/attachments/Attachment;

    .line 854
    .restart local v17    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v2, :cond_b

    move-object/from16 v21, v17

    .line 855
    check-cast v21, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .line 856
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->hasTaskWithID(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 857
    new-instance v8, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-direct {v8, v2, v3, v5}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 858
    .local v8, "task":Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-virtual {v8, v2}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->setID(I)V

    .line 859
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 864
    .end local v8    # "task":Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;
    .end local v21    # "pa":Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;
    :cond_b
    :goto_6
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v2, :cond_c

    move-object/from16 v21, v17

    .line 865
    check-cast v21, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    .line 866
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->hasTaskWithID(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 867
    new-instance v8, Lcom/vkcoffee/android/upload/DocumentUploadTask;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->url:Ljava/lang/String;

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v9, 0x1

    invoke-direct {v8, v2, v3, v5, v9}, Lcom/vkcoffee/android/upload/DocumentUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 868
    .local v8, "task":Lcom/vkcoffee/android/upload/DocumentUploadTask;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    invoke-virtual {v8, v2}, Lcom/vkcoffee/android/upload/DocumentUploadTask;->setID(I)V

    .line 869
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 874
    .end local v8    # "task":Lcom/vkcoffee/android/upload/DocumentUploadTask;
    .end local v21    # "pa":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    :cond_c
    :goto_7
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v2, :cond_d

    move-object/from16 v21, v17

    .line 875
    check-cast v21, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .line 876
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->hasTaskWithID(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 877
    new-instance v8, Lcom/vkontakte/android/upload/VideoUploadTask;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v10, v2, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v11, v2, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    const-string/jumbo v12, ""

    sget-object v13, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->p480:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    const/4 v14, 0x1

    sget v15, Lcom/vkcoffee/android/Global;->uid:I

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/vkontakte/android/upload/VideoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/media/video/VideoEncoderSettings;ZIZ)V

    .line 879
    .local v8, "task":Lcom/vkontakte/android/upload/VideoUploadTask;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    invoke-virtual {v8, v2}, Lcom/vkontakte/android/upload/VideoUploadTask;->setID(I)V

    .line 880
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 885
    .end local v8    # "task":Lcom/vkontakte/android/upload/VideoUploadTask;
    .end local v21    # "pa":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    :cond_d
    :goto_8
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    if-eqz v2, :cond_e

    move-object/from16 v21, v17

    .line 886
    check-cast v21, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    .line 887
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->hasTaskWithID(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 888
    new-instance v8, Lcom/vkcoffee/android/upload/GraffitiUploadTask;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->url:Ljava/lang/String;

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v8, v2, v3, v5}, Lcom/vkcoffee/android/upload/GraffitiUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 889
    .local v8, "task":Lcom/vkcoffee/android/upload/GraffitiUploadTask;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    invoke-virtual {v8, v2}, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->setID(I)V

    .line 890
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 852
    .end local v8    # "task":Lcom/vkcoffee/android/upload/GraffitiUploadTask;
    .end local v21    # "pa":Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
    :cond_e
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 860
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;
    :cond_f
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->isTaskFailed(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 861
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/upload/Upload;->retry(Landroid/content/Context;I)V

    goto/16 :goto_6

    .line 870
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    :cond_10
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->isTaskFailed(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 871
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/upload/Upload;->retry(Landroid/content/Context;I)V

    goto/16 :goto_7

    .line 881
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    :cond_11
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->isTaskFailed(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 882
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/upload/Upload;->retry(Landroid/content/Context;I)V

    goto :goto_8

    .line 891
    .local v21, "pa":Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
    :cond_12
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    invoke-static {v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->isTaskFailed(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 892
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/upload/Upload;->retry(Landroid/content/Context;I)V

    goto :goto_9

    .line 896
    .end local v17    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v21    # "pa":Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
    :cond_13
    sget-object v2, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkcoffee/android/Message;

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/Message;-><init>(Lcom/vkcoffee/android/Message;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public static setDnd(IIZ)V
    .locals 0
    .param p0, "peer"    # I
    .param p1, "time"    # I
    .param p2, "mute"    # Z

    .prologue
    .line 1505
    return-void
.end method

.method public static setReadState(IZ)V
    .locals 1
    .param p0, "mid"    # I
    .param p1, "state"    # Z

    .prologue
    .line 491
    invoke-static {p0, p1}, Lcom/vkcoffee/android/data/Messages$$Lambda$3;->lambdaFactory$(IZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/api/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method public static setReadStateBefore(II)V
    .locals 3
    .param p0, "peer"    # I
    .param p1, "mid"    # I

    .prologue
    const/4 v1, 0x1

    .line 525
    invoke-static {p0, p1, v1}, Lcom/vkcoffee/android/data/Messages;->setReadStateUpto(IIZ)V

    .line 526
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {p0, p1, v1}, Lcom/vkcoffee/android/LongPollService;->createActionMessageRSteteChangedIntent(IIZ)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public static setReadStateUpto(IIZ)V
    .locals 6
    .param p0, "peer"    # I
    .param p1, "mid"    # I
    .param p2, "in"    # Z

    .prologue
    const/4 v5, 0x1

    .line 531
    if-nez p2, :cond_0

    .line 532
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->sendLock:Lcom/vkcoffee/android/background/CountingLock;

    invoke-virtual {v3}, Lcom/vkcoffee/android/background/CountingLock;->await()V

    .line 535
    :cond_0
    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    invoke-static {p1, p0, v5, p2}, Lcom/vkcoffee/android/cache/Cache;->setMessageReadStateUpto(IIZZ)V

    .line 540
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 541
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->peer:I

    if-ne v4, p0, :cond_1

    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->id:I

    if-gt v4, p1, :cond_1

    iget-object v4, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget-boolean v4, v4, Lcom/vkcoffee/android/Message;->out:Z

    if-eq v4, p2, :cond_1

    .line 542
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iput-boolean v5, v3, Lcom/vkcoffee/android/Message;->readState:Z

    .line 543
    const/4 v3, 0x0

    iput v3, v0, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 549
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_2
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->histories:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 550
    .local v2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    if-eqz v2, :cond_4

    .line 551
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Message;

    .line 552
    .local v1, "msg":Lcom/vkcoffee/android/Message;
    iget v4, v1, Lcom/vkcoffee/android/Message;->id:I

    if-gt v4, p1, :cond_3

    iget-boolean v4, v1, Lcom/vkcoffee/android/Message;->out:Z

    if-eq v4, p2, :cond_3

    .line 553
    iput-boolean v5, v1, Lcom/vkcoffee/android/Message;->readState:Z

    goto :goto_1

    .line 557
    .end local v1    # "msg":Lcom/vkcoffee/android/Message;
    :cond_4
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 558
    return-void

    .line 536
    .end local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static uploadDone(ILcom/vkcoffee/android/attachments/Attachment;)V
    .locals 14
    .param p0, "id"    # I
    .param p1, "result"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 903
    const/4 v2, 0x0

    .line 904
    .local v2, "msg":Lcom/vkcoffee/android/Message;
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/Message;

    .line 905
    .local v9, "m":Lcom/vkcoffee/android/Message;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 906
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 907
    .local v6, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v0, :cond_4

    move-object v0, v6

    .line 908
    check-cast v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    if-ne v0, p0, :cond_4

    .line 909
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v10, "userphoto"

    const-string/jumbo v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v12, v0}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 911
    move-object v2, v9

    .line 940
    .end local v6    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    .line 944
    .end local v8    # "i":I
    .end local v9    # "m":Lcom/vkcoffee/android/Message;
    :cond_2
    if-nez v2, :cond_8

    .line 1002
    :cond_3
    :goto_2
    return-void

    .line 915
    .restart local v6    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v8    # "i":I
    .restart local v9    # "m":Lcom/vkcoffee/android/Message;
    :cond_4
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v0, :cond_5

    move-object v0, v6

    .line 916
    check-cast v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    if-ne v0, p0, :cond_5

    .line 917
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v10, "userphoto"

    const-string/jumbo v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v12, v0}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 919
    move-object v2, v9

    .line 920
    goto :goto_1

    .line 923
    :cond_5
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v0, :cond_6

    move-object v0, v6

    .line 924
    check-cast v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget v0, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    if-ne v0, p0, :cond_6

    .line 925
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v10, "userphoto"

    const-string/jumbo v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v12, v0}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 927
    move-object v2, v9

    .line 928
    goto :goto_1

    .line 931
    :cond_6
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    if-eqz v0, :cond_7

    .line 932
    check-cast v6, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    .end local v6    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    iget v0, v6, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    if-ne v0, p0, :cond_7

    .line 933
    iget-object v0, v9, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v10, "userphoto"

    const-string/jumbo v11, ""

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v12, v0}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 935
    move-object v2, v9

    .line 936
    goto :goto_1

    .line 905
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 947
    .end local v8    # "i":I
    .end local v9    # "m":Lcom/vkcoffee/android/Message;
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    iget-object v0, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_9

    .line 948
    iget-object v0, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/Attachment;

    .line 949
    .local v7, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v7, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-nez v0, :cond_3

    instance-of v0, v7, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-nez v0, :cond_3

    instance-of v0, v7, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-nez v0, :cond_3

    instance-of v0, v7, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    if-nez v0, :cond_3

    .line 947
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 953
    .end local v7    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_9
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 954
    const/4 v5, 0x0

    .line 955
    .local v5, "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .local v3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    iget-object v0, v2, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 957
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/Attachment;

    .line 958
    .restart local v7    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v1, v7, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v1, :cond_a

    .line 959
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v5, v7

    .line 960
    check-cast v5, Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 964
    .end local v7    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v4, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    :goto_4
    iget-object v0, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    .line 966
    iget-object v0, v2, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Message$FwdMessage;

    iget v0, v0, Lcom/vkcoffee/android/Message$FwdMessage;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 968
    :cond_c
    move-object v9, v2

    .line 970
    .restart local v9    # "m":Lcom/vkcoffee/android/Message;
    sget-object v0, Lcom/vkcoffee/android/data/Messages;->sendLock:Lcom/vkcoffee/android/background/CountingLock;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/CountingLock;->increment()V

    .line 971
    sget-object v0, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesSend;

    iget v1, v2, Lcom/vkcoffee/android/Message;->peer:I

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/messages/MessagesSend;-><init>(ILcom/vkcoffee/android/Message;Ljava/util/List;Ljava/util/List;Lcom/vkcoffee/android/attachments/GeoAttachment;)V

    new-instance v1, Lcom/vkcoffee/android/data/Messages$9;

    invoke-direct {v1, v9}, Lcom/vkcoffee/android/data/Messages$9;-><init>(Lcom/vkcoffee/android/Message;)V

    .line 973
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSend;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_2
.end method

.method public static uploadFailed(I)V
    .locals 9
    .param p0, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 1005
    const/4 v4, 0x0

    .line 1006
    .local v4, "msg":Lcom/vkcoffee/android/Message;
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    .line 1007
    .local v3, "m":Lcom/vkcoffee/android/Message;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, v3, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1008
    iget-object v6, v3, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1010
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v0, Lcom/vkcoffee/android/attachments/PendingAttachment;

    if-eqz v6, :cond_3

    .line 1011
    check-cast v0, Lcom/vkcoffee/android/attachments/PendingAttachment;

    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/PendingAttachment;->getUploadId()I

    move-result v6

    if-ne v6, p0, :cond_3

    .line 1012
    move-object v4, v3

    .line 1017
    :cond_1
    if-eqz v4, :cond_0

    .line 1021
    .end local v1    # "i":I
    .end local v3    # "m":Lcom/vkcoffee/android/Message;
    :cond_2
    if-nez v4, :cond_4

    .line 1031
    :goto_1
    return-void

    .line 1007
    .restart local v1    # "i":I
    .restart local v3    # "m":Lcom/vkcoffee/android/Message;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1024
    .end local v1    # "i":I
    .end local v3    # "m":Lcom/vkcoffee/android/Message;
    :cond_4
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1025
    invoke-static {v4}, Lcom/vkcoffee/android/data/Messages;->removeFromSending(Lcom/vkcoffee/android/Message;)V

    .line 1026
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 1027
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "userphoto"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 1028
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.vkcoffee.android.MESSAGE_SEND_FAILED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "id"

    iget v6, v4, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method
