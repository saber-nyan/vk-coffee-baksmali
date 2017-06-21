.class Lcom/vkcoffee/android/LinkRedirActivity$12;
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
    .line 1166
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1206
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1207
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1166
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$12;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 1169
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1170
    .local v1, "r":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1171
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1172
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1202
    .end local v1    # "r":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1178
    .restart local v1    # "r":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1180
    new-instance v4, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    const-string/jumbo v5, "object_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 1181
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1182
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1200
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1183
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "group"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1184
    new-instance v4, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    const-string/jumbo v5, "object_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 1185
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1186
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 1187
    :cond_3
    const-string/jumbo v4, "application"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1189
    const-string/jumbo v4, "object"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Lcom/vkcoffee/android/data/ApiApplication;

    const-string/jumbo v4, "object"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget-boolean v4, v0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z

    if-eqz v4, :cond_4

    .line 1190
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const-string/jumbo v5, "direct"

    const-string/jumbo v6, "activity"

    invoke-static {v4, v5, v6, v0}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/ApiApplication;)V

    .line 1194
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 1192
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    goto :goto_1

    .line 1196
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1197
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$12;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
