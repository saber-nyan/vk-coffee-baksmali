.class Lcom/vkcoffee/android/NetworkStateReceiver$2;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/NetworkStateReceiver;->lambda$onReceive$652()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/NetworkStateReceiver;

.field private final synthetic val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

.field private final synthetic val$req:Lcom/vkcoffee/android/api/VKAPIRequest;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/NetworkStateReceiver;Lcom/vkcoffee/android/api/VKAPIRequest;Lcom/vkcoffee/android/data/PersistentAPIRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->this$0:Lcom/vkcoffee/android/NetworkStateReceiver;

    iput-object p2, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$req:Lcom/vkcoffee/android/api/VKAPIRequest;

    iput-object p3, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 167
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 168
    .local v0, "errorCode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

    iget v1, v1, Lcom/vkcoffee/android/data/PersistentAPIRequest;->id:I

    invoke-static {v1}, Lcom/vkcoffee/android/cache/Cache;->deleteApiRequest(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/NetworkStateReceiver$2;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 150
    const-string v4, "friends.add"

    iget-object v3, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$req:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string v5, "method"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$req:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string v4, "user_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "uid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "uids":Ljava/util/ArrayList;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v1}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->addLocally(Lcom/vkcoffee/android/UserProfile;)V

    .line 156
    .end local v0    # "uid":I
    .end local v1    # "uids":Ljava/util/ArrayList;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

    iget v3, v3, Lcom/vkcoffee/android/data/PersistentAPIRequest;->id:I

    invoke-static {v3}, Lcom/vkcoffee/android/cache/Cache;->deleteApiRequest(I)V

    .line 157
    iget-object v3, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

    iget-object v3, v3, Lcom/vkcoffee/android/data/PersistentAPIRequest;->callback:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

    iget-object v3, v3, Lcom/vkcoffee/android/data/PersistentAPIRequest;->callback:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/vkcoffee/android/NetworkStateReceiver$2;->val$preq:Lcom/vkcoffee/android/data/PersistentAPIRequest;

    iget-object v7, v7, Lcom/vkcoffee/android/data/PersistentAPIRequest;->userdata:Lorg/json/JSONObject;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "x":Ljava/lang/Throwable;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
