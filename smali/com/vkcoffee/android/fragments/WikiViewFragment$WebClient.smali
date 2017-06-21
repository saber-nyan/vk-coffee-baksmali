.class Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;
.super Landroid/webkit/WebViewClient;
.source "WikiViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "wv"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$3(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V

    .line 165
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 141
    const-string v4, "file://"

    const-string v5, "http://vkontakte.ru"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 143
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 144
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "vkontakte.ru"

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "vk.com"

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "m.vk.com"

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    :cond_0
    const-string v4, "/pages"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const-string v4, "oid"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 147
    .local v1, "oid":I
    const-string v4, "p"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "title":Ljava/lang/String;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "page \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    const/4 v5, 0x1

    invoke-static {v4, v1, v2, v5}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$5(Lcom/vkcoffee/android/fragments/WikiViewFragment;ILjava/lang/String;Z)V

    .line 160
    .end local v1    # "oid":I
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v9

    .line 150
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/page[-0-9]+_[0-9]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    const-string v4, "/page([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 152
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 153
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$0(Lcom/vkcoffee/android/fragments/WikiViewFragment;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 159
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vklink://view/?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
