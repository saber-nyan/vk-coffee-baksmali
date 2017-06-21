.class public Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmActionBroadcastReceiver.java"


# static fields
.field public static final ACTION_CONFIRM:Ljava/lang/String; = "com.vkontatke.android.ACTION_CONFIRM_ACTION"

.field public static final ACTION_DECLINE:Ljava/lang/String; = "com.vkontatke.android.ACTION_DECLINE_ACTION"

.field public static final ACTION_OPEN_BOX:Ljava/lang/String; = "com.vkontatke.android.ACTION_CONFIRM_OPEN_BOX"

.field public static final ACTION_OPEN_NOTIFICATION:Ljava/lang/String; = "com.vkontatke.android.ACTION_CONFIRM_OPEN_NOTIFICATION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;ZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;->sendRequest(ZLjava/lang/String;I)V

    return-void
.end method

.method private sendRequest(ZLjava/lang/String;I)V
    .locals 7
    .param p1, "confirm"    # Z
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "retry"    # I

    .prologue
    .line 56
    new-instance v6, Lcom/vkcoffee/android/api/account/AccountValidateAction;

    invoke-direct {v6, p2, p1}, Lcom/vkcoffee/android/api/account/AccountValidateAction;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;

    const/4 v2, 0x0

    check-cast v2, Landroid/content/Context;

    move-object v1, p0

    move v3, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;-><init>(Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;Landroid/content/Context;IZLjava/lang/String;)V

    .line 57
    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/account/AccountValidateAction;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x58800000    # 1.12589991E15f

    const/4 v3, 0x0

    .line 25
    const-string/jumbo v1, "token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hash"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->verifyToken(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string/jumbo v1, "com.vkontatke.android.ACTION_CONFIRM_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    const/4 v1, 0x1

    const-string/jumbo v2, "hash"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;->sendRequest(ZLjava/lang/String;I)V

    .line 30
    const-string/jumbo v1, "notification_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string/jumbo v2, "notification_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "com.vkontatke.android.ACTION_DECLINE_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string/jumbo v1, "hash"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v3}, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;->sendRequest(ZLjava/lang/String;I)V

    .line 35
    const-string/jumbo v1, "notification_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string/jumbo v2, "notification_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 38
    :cond_3
    const-string/jumbo v1, "com.vkontatke.android.ACTION_CONFIRM_OPEN_BOX"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/ConfirmActionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "confirm_text"

    const-string/jumbo v2, "confirm_text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "hash"

    const-string/jumbo v2, "hash"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "notification_id"

    const-string/jumbo v2, "notification_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 45
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v1, "com.vkontatke.android.ACTION_CONFIRM_OPEN_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/NotificationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "button"

    const-string/jumbo v2, "button"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
