.class final Lcom/vkcoffee/android/data/Messages$4;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->getById(I)Lcom/vkcoffee/android/Message;
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
.field final synthetic val$res:[Lcom/vkcoffee/android/Message;


# direct methods
.method constructor <init>([Lcom/vkcoffee/android/Message;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$4;->val$res:[Lcom/vkcoffee/android/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 323
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$4;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$4;->val$res:[Lcom/vkcoffee/android/Message;

    const/4 v2, 0x0

    new-instance v3, Lcom/vkcoffee/android/Message;

    const-string/jumbo v4, "response"

    invoke-static {p1, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
