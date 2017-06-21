.class Lcom/vkcoffee/android/LinkRedirActivity$3;
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

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 607
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 608
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 579
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$3;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 582
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 583
    .local v1, "r":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 584
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 585
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 603
    .end local v1    # "r":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 588
    .restart local v1    # "r":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "group"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 590
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 591
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "q"

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v4, "domain"

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$domain:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-class v4, Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-static {v4, v0, v5}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 594
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 595
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 601
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 597
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 598
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$3;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
