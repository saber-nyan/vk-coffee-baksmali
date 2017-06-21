.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .line 61
    .local v0, "ad":Lcom/vkcoffee/android/attachments/ShitAttachment;
    sget-object v7, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "click"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v9, v9, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v9, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "click"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/data/Analytics;->trackAdView(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-boolean v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->installed:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->deepLink:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    :cond_1
    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    .line 72
    :cond_3
    const-string/jumbo v7, "play.google.com"

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.vending"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    const-string/jumbo v7, "ads/click_open_link_url"

    invoke-static {v7}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ad_data"

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ads_device_id"

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 166
    :goto_2
    return-void

    .line 76
    :cond_4
    iget v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 77
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 78
    .local v4, "progress":Landroid/app/ProgressDialog;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080293

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 80
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 81
    new-instance v6, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v6, "wv":Landroid/webkit/WebView;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 83
    new-instance v7, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$1;

    invoke-direct {v7, p0, p1, v4}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$1;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;Landroid/view/View;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    new-instance v7, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;

    invoke-direct {v7, p0, p1, v6, v4}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;Landroid/view/View;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 125
    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 126
    .end local v4    # "progress":Landroid/app/ProgressDialog;
    .end local v6    # "wv":Landroid/webkit/WebView;
    :cond_5
    iget v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 127
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v7, "url"

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v7, "open_internally"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-class v7, Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v2, v8}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 132
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    const-string/jumbo v8, "//vk.com"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 134
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 136
    :cond_7
    invoke-static {v3}, Lcom/vkcoffee/android/LinkRedirActivity;->addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_3

    .line 142
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    iget-boolean v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->installed:Z

    if-eqz v7, :cond_b

    .line 144
    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->deepLink:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 145
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->deepLink:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 146
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v7, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 147
    .restart local v5    # "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V

    goto :goto_4

    .line 150
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 152
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    const-string/jumbo v7, "ads/click_open_app"

    invoke-static {v7}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ad_data"

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ads_device_id"

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    goto/16 :goto_2

    .line 156
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "pending_installs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/32 v12, 0x15180

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    const-string/jumbo v7, "ads/click_install_app"

    invoke-static {v7}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ad_data"

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ads_device_id"

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/vkcoffee/android/PackageAddedReceiver;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    iget-object v10, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    const-string/jumbo v7, "ads/click_open_link_url"

    invoke-static {v7}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ad_data"

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "ads_device_id"

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string/jumbo v8, "no_google_play"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    goto/16 :goto_2
.end method
