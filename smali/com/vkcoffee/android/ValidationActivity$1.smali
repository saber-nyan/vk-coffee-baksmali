.class Lcom/vkcoffee/android/ValidationActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ValidationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ValidationActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ValidationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ValidationActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 108
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, "m.vk.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/restore"

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rh"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/ValidationActivity;->access$000(Lcom/vkcoffee/android/ValidationActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:document.getElementsByTagName(\'input\')[0].value=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\';void(0);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ValidationActivity;->access$102(Lcom/vkcoffee/android/ValidationActivity;Z)Z

    .line 117
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 41
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 42
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "oauth.vk.com"

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "/blank.html"

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 43
    const/16 v7, 0x23

    const/16 v8, 0x3f

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 46
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "return_result"

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 47
    const-string/jumbo v7, "success"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "access_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 50
    const-string/jumbo v7, "access_token"

    const-string/jumbo v8, "access_token"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v7, "secret"

    const-string/jumbo v8, "secret"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v7, "user_id"

    const-string/jumbo v8, "user_id"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    :cond_0
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v1}, Lcom/vkcoffee/android/ValidationActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->finish()V

    .line 102
    :cond_1
    :goto_1
    return v10

    .line 58
    :cond_2
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7, v11}, Lcom/vkcoffee/android/ValidationActivity;->setResult(I)V

    goto :goto_0

    .line 63
    :cond_3
    const-string/jumbo v7, "fail"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 64
    invoke-static {v10, v11}, Lcom/vkcoffee/android/LongPollService;->logOut(ZZ)V

    .line 65
    sput v10, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 66
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->finish()V

    goto :goto_1

    .line 67
    :cond_4
    const-string/jumbo v7, "cancel"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 68
    sput v10, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 69
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->finish()V

    goto :goto_1

    .line 70
    :cond_5
    const-string/jumbo v7, "success"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 71
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "device_token"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 72
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "device_token"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "devToken":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7, v12, v11}, Lcom/vkcoffee/android/ValidationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "device_token"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    .end local v0    # "devToken":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "access_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 76
    const-string/jumbo v7, "access_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v7, "secret"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "secret":Ljava/lang/String;
    const-string/jumbo v7, "user_id"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 79
    .local v5, "uid":I
    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v5, v7, :cond_7

    .line 80
    invoke-static {v10, v11}, Lcom/vkcoffee/android/LongPollService;->logOut(ZZ)V

    .line 82
    :cond_7
    sput v5, Lcom/vkcoffee/android/Global;->uid:I

    .line 86
    sput-object v4, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 87
    sput-object v3, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 88
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v12, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 89
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "uid"

    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    .line 90
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "sid"

    sget-object v9, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 91
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "secret"

    sget-object v9, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 92
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "new_auth"

    .line 93
    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 94
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "secret":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_8
    const/4 v7, 0x2

    sput v7, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 97
    iget-object v7, p0, Lcom/vkcoffee/android/ValidationActivity$1;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ValidationActivity;->finish()V

    goto/16 :goto_1

    .line 100
    :cond_9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
