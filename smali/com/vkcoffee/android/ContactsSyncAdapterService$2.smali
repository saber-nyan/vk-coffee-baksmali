.class final Lcom/vkcoffee/android/ContactsSyncAdapterService$2;
.super Ljava/lang/Object;
.source "ContactsSyncAdapterService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$contacts:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkcoffee/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 287
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$410()I

    .line 290
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 259
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ContactsSyncAdapterService$2;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 263
    :try_start_0
    const-string/jumbo v7, "response"

    invoke-static {p1, v7}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v7

    iget-object v0, v7, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 264
    .local v0, "a":Lorg/json/JSONArray;
    const-string/jumbo v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "COUNT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 266
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 267
    .local v5, "user":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 268
    .local v1, "contains":Z
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 269
    .local v4, "uid":I
    iget-object v7, p0, Lcom/vkcoffee/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ContactsSyncAdapterService$ExtendedUserProfile;

    .line 270
    .local v3, "p":Lcom/vkcoffee/android/ContactsSyncAdapterService$ExtendedUserProfile;
    iget v8, v3, Lcom/vkcoffee/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    if-ne v8, v4, :cond_0

    .line 271
    const/4 v1, 0x1

    .line 275
    .end local v3    # "p":Lcom/vkcoffee/android/ContactsSyncAdapterService$ExtendedUserProfile;
    :cond_1
    if-nez v1, :cond_2

    .line 276
    iget-object v7, p0, Lcom/vkcoffee/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-static {v5}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$200(Lorg/json/JSONObject;)Lcom/vkcoffee/android/ContactsSyncAdapterService$ExtendedUserProfile;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "contains":Z
    .end local v4    # "uid":I
    .end local v5    # "user":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Res COUNT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :goto_1
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/vkcoffee/android/ContactsSyncAdapterService;->access$302(Z)Z

    .line 284
    return-void

    .line 280
    :catch_0
    move-exception v6

    .line 281
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    invoke-static {v7, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
