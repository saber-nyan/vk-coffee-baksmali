.class Lcom/vkcoffee/android/SDKAuthActivity$WebClient;
.super Landroid/webkit/WebViewClient;
.source "SDKAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/SDKAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/SDKAuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SDKAuthActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/SDKAuthActivity;Lcom/vkcoffee/android/SDKAuthActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/SDKAuthActivity;
    .param p2, "x1"    # Lcom/vkcoffee/android/SDKAuthActivity$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;-><init>(Lcom/vkcoffee/android/SDKAuthActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errCode"    # I
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/SDKAuthActivity;->access$300(Lcom/vkcoffee/android/SDKAuthActivity;)Lcom/vkcoffee/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/vkcoffee/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/SDKAuthActivity;->access$300(Lcom/vkcoffee/android/SDKAuthActivity;)Lcom/vkcoffee/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ErrorView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/SDKAuthActivity;->access$400(Lcom/vkcoffee/android/SDKAuthActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 200
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "oauth.vk.com"

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "/blank.html"

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 201
    const/16 v7, 0x23

    const/16 v8, 0x3f

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 204
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 206
    const-string/jumbo v7, "vk_sdk_auth"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Auth not successful [fail]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v7, "error"

    const-string/jumbo v8, "error"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v7, "error_reason"

    const-string/jumbo v8, "error_reason"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v7, "error_description"

    const-string/jumbo v8, "error_description"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v7, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-virtual {v7, v10, v2}, Lcom/vkcoffee/android/SDKAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 213
    iget-object v7, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/SDKAuthActivity;->finish()V

    .line 247
    .end local v2    # "result":Landroid/content/Intent;
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 214
    :cond_0
    const-string/jumbo v7, "access_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 215
    const-string/jumbo v7, "access_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v7, "secret"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "secret":Ljava/lang/String;
    const-string/jumbo v7, "expires_in"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "expiresIn":Ljava/lang/String;
    const-string/jumbo v7, "email"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "email":Ljava/lang/String;
    const-string/jumbo v7, "user_id"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 220
    .local v5, "uid":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 221
    .restart local v2    # "result":Landroid/content/Intent;
    const-string/jumbo v7, "access_token"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    if-eqz v3, :cond_1

    .line 223
    const-string/jumbo v7, "secret"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_1
    if-eqz v0, :cond_2

    .line 226
    const-string/jumbo v7, "email"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_2
    const-string/jumbo v7, "user_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string/jumbo v8, "https_required"

    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v9, "forceHTTPS"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "1"

    :goto_1
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    if-eqz v1, :cond_3

    .line 232
    :try_start_0
    const-string/jumbo v7, "expires_in"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_3
    :goto_2
    const-string/jumbo v7, "vk_sdk_auth"

    const-string/jumbo v8, "Auth ok"

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v7, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v2}, Lcom/vkcoffee/android/SDKAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 238
    iget-object v7, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/SDKAuthActivity;->finish()V

    goto/16 :goto_0

    .line 229
    :cond_4
    const-string/jumbo v7, "0"

    goto :goto_1

    .line 240
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "expiresIn":Ljava/lang/String;
    .end local v2    # "result":Landroid/content/Intent;
    .end local v3    # "secret":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_5
    const-string/jumbo v7, "vk_sdk_auth"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Auth not successful [unknown]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-virtual {v7, v10}, Lcom/vkcoffee/android/SDKAuthActivity;->setResult(I)V

    .line 242
    iget-object v7, p0, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;->this$0:Lcom/vkcoffee/android/SDKAuthActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/SDKAuthActivity;->finish()V

    goto/16 :goto_0

    .line 245
    :cond_6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    .restart local v0    # "email":Ljava/lang/String;
    .restart local v1    # "expiresIn":Ljava/lang/String;
    .restart local v2    # "result":Landroid/content/Intent;
    .restart local v3    # "secret":Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    .restart local v5    # "uid":I
    :catch_0
    move-exception v7

    goto :goto_2
.end method
