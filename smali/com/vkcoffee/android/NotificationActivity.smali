.class public Lcom/vkcoffee/android/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"


# static fields
.field public static final USER_NOTIFICATION:Ljava/lang/String; = "user_notification"


# instance fields
.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/NotificationActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$654(Lcom/vkcoffee/android/data/UserNotification;Landroid/content/DialogInterface;)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/data/UserNotification;->forceClose(Landroid/content/Context;)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/NotificationActivity;->finish()V

    .line 52
    return-void
.end method

.method synthetic lambda$onCreate$655(Ljava/lang/String;Lcom/vkcoffee/android/data/UserNotification;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Lcom/vkcoffee/android/data/UserNotification;->forceAction(Landroid/content/Context;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/NotificationActivity;->finish()V

    .line 60
    return-void
.end method

.method synthetic lambda$onCreate$656(Lcom/vkcoffee/android/data/UserNotification;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/data/UserNotification;->forceClose(Landroid/content/Context;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/NotificationActivity;->finish()V

    .line 65
    return-void
.end method

.method synthetic lambda$onCreate$657(Lcom/vkcoffee/android/data/UserNotification;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/data/UserNotification;->forceAction(Landroid/content/Context;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/NotificationActivity;->finish()V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const v10, 0x7f0800dd

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/NotificationActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 23
    invoke-virtual {p0}, Lcom/vkcoffee/android/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 25
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "user_notification"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/UserNotification;

    .line 32
    .local v6, "userNotification":Lcom/vkcoffee/android/data/UserNotification;
    if-nez v6, :cond_4

    .line 33
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "title":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "message"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v8, "link"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "link"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "link":Ljava/lang/String;
    :goto_1
    const-string/jumbo v8, "button"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v7, "button"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "button":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v7, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 46
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-static {p0, v6}, Lcom/vkcoffee/android/NotificationActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/NotificationActivity;Lcom/vkcoffee/android/data/UserNotification;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v8

    .line 47
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f08059f

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "button":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v3, v6}, Lcom/vkcoffee/android/NotificationActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/NotificationActivity;Ljava/lang/String;Lcom/vkcoffee/android/data/UserNotification;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-static {p0, v6}, Lcom/vkcoffee/android/NotificationActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/NotificationActivity;Lcom/vkcoffee/android/data/UserNotification;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    .line 60
    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    :goto_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    return-void

    .line 33
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v3    # "link":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/NotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080305

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_2
    move-object v3, v7

    .line 35
    goto :goto_1

    .restart local v3    # "link":Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 36
    goto :goto_2

    .line 38
    .end local v3    # "link":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_4
    iget-object v5, v6, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    .line 39
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v4, v6, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    .line 40
    .restart local v4    # "message":Ljava/lang/String;
    iget-object v3, v6, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    .line 41
    .restart local v3    # "link":Ljava/lang/String;
    iget-object v1, v6, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    .restart local v1    # "button":Ljava/lang/String;
    goto :goto_2

    .line 67
    .restart local v0    # "alert":Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v10}, Lcom/vkcoffee/android/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "button":Ljava/lang/String;
    :cond_6
    invoke-static {p0, v6}, Lcom/vkcoffee/android/NotificationActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/NotificationActivity;Lcom/vkcoffee/android/data/UserNotification;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/NotificationActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    return-void
.end method
