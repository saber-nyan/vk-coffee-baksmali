.class Lcom/vkcoffee/android/LinkRedirActivity$8;
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
    .line 905
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 944
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 945
    return-void
.end method

.method synthetic lambda$success$641()V
    .locals 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 905
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$8;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 908
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 909
    .local v0, "jp":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 910
    new-instance v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 912
    .local v1, "photo":Lcom/vkcoffee/android/Photo;
    new-instance v2, Lcom/vkcoffee/android/PhotoViewer;

    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/vkcoffee/android/LinkRedirActivity$8$1;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/LinkRedirActivity$8$1;-><init>(Lcom/vkcoffee/android/LinkRedirActivity$8;)V

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    .line 934
    .local v2, "viewer":Lcom/vkcoffee/android/PhotoViewer;
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const v5, 0x7f080344

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vkcoffee/android/PhotoViewer;->setTitle(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v2}, Lcom/vkcoffee/android/PhotoViewer;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v0    # "jp":Lorg/json/JSONObject;
    .end local v1    # "photo":Lcom/vkcoffee/android/Photo;
    .end local v2    # "viewer":Lcom/vkcoffee/android/PhotoViewer;
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v3

    .line 938
    .local v3, "x":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-static {p0}, Lcom/vkcoffee/android/LinkRedirActivity$8$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity$8;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
