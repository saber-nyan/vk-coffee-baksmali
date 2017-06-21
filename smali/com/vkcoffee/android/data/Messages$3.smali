.class final Lcom/vkcoffee/android/data/Messages$3;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Lcom/vkcoffee/android/Message;

.field final synthetic val$senderPhoto:Ljava/lang/String;

.field final synthetic val$unreadCount:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/Message;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$3;->val$msg:Lcom/vkcoffee/android/Message;

    iput-object p2, p0, Lcom/vkcoffee/android/data/Messages$3;->val$senderPhoto:Ljava/lang/String;

    iput p3, p0, Lcom/vkcoffee/android/data/Messages$3;->val$unreadCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    const v7, 0x77359400

    const/4 v6, 0x0

    .line 253
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 254
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iput-object p2, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 255
    if-nez p2, :cond_0

    .line 256
    iget-object v5, p0, Lcom/vkcoffee/android/data/Messages$3;->val$msg:Lcom/vkcoffee/android/Message;

    iget-object v5, v5, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    iput-object v5, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/data/Messages$3;->val$msg:Lcom/vkcoffee/android/Message;

    iget v5, v5, Lcom/vkcoffee/android/Message;->peer:I

    iput v5, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 259
    if-eqz p3, :cond_3

    .line 260
    iput-object p3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 264
    :cond_1
    :goto_0
    new-instance v2, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v2}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 265
    .local v2, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v5, p0, Lcom/vkcoffee/android/data/Messages$3;->val$msg:Lcom/vkcoffee/android/Message;

    iput-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 266
    iget-object v5, p0, Lcom/vkcoffee/android/data/Messages$3;->val$senderPhoto:Ljava/lang/String;

    iput-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 267
    iput-object v3, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 268
    iget v5, p0, Lcom/vkcoffee/android/data/Messages$3;->val$unreadCount:I

    iput v5, v2, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 270
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :goto_1
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 276
    if-nez p2, :cond_2

    .line 278
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v5, "chat_id"

    iget-object v6, p0, Lcom/vkcoffee/android/data/Messages$3;->val$msg:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->peer:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 280
    const-string/jumbo v5, "fields"

    const-string/jumbo v6, "photo_rec,photo_medium_rec,sex"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 282
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v5, "id"

    iget-object v6, p0, Lcom/vkcoffee/android/data/Messages$3;->val$msg:Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->peer:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    const-string/jumbo v5, "messages.getChat"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "getChatUsersResult"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v5, v0, v6, v1}, Lcom/vkcoffee/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    return-void

    .line 261
    .end local v2    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 262
    invoke-static {p1}, Lcom/vkcoffee/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 284
    .restart local v2    # "e":Lcom/vkcoffee/android/DialogEntry;
    :catch_0
    move-exception v4

    .line 285
    .local v4, "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_2

    .line 271
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
