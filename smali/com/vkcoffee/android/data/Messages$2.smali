.class final Lcom/vkcoffee/android/data/Messages$2;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


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
    .line 217
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$2;->val$msg:Lcom/vkcoffee/android/Message;

    iput-object p2, p0, Lcom/vkcoffee/android/data/Messages$2;->val$senderPhoto:Ljava/lang/String;

    iput p3, p0, Lcom/vkcoffee/android/data/Messages$2;->val$unreadCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 9
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
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v8, 0x0

    .line 220
    new-instance v2, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v2}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 221
    .local v2, "e":Lcom/vkcoffee/android/DialogEntry;
    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$2;->val$msg:Lcom/vkcoffee/android/Message;

    iput-object v3, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 222
    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$2;->val$senderPhoto:Ljava/lang/String;

    iput-object v3, v2, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 223
    iget v3, p0, Lcom/vkcoffee/android/data/Messages$2;->val$unreadCount:I

    iput v3, v2, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 225
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    iput-object v3, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 226
    iget-object v3, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v5, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    const-string/jumbo v7, ""

    iput-object v7, v6, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v7, v5, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v7, v4, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 228
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v3, "user_ids"

    iget-object v4, p0, Lcom/vkcoffee/android/data/Messages$2;->val$msg:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, "photo_50,photo_100,is_friend,sex"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v3, "users.get"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "getProfileResult"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v0, v4, v1}, Lcom/vkcoffee/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :goto_1
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    sget-object v3, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 246
    return-void

    .line 237
    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iput-object v3, v2, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    goto :goto_0

    .line 241
    :catch_0
    move-exception v3

    goto :goto_1

    .line 233
    :catch_1
    move-exception v3

    goto :goto_0
.end method
