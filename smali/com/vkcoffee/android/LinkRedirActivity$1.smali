.class Lcom/vkcoffee/android/LinkRedirActivity$1;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 296
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$1;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 273
    :try_start_0
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    .local v0, "r":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->val$uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 276
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v3}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 291
    .end local v0    # "r":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 279
    .restart local v0    # "r":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const-string/jumbo v4, "object_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/LinkRedirActivity;->access$100(Lcom/vkcoffee/android/LinkRedirActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v0    # "r":Lorg/json/JSONObject;
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 282
    .end local v2    # "x":Ljava/lang/Exception;
    .restart local v0    # "r":Lorg/json/JSONObject;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "group"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const-string/jumbo v4, "object_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/LinkRedirActivity;->access$100(Lcom/vkcoffee/android/LinkRedirActivity;I)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->val$uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 286
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$1;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v3}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
