.class public Lcom/vkcoffee/android/NotificationButtonsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationButtonsReceiver.java"


# static fields
.field public static final ACTION_ACCEPT_FRIEND:Ljava/lang/String; = "com.vkcoffee.android.ACCEPT_FRIEND"

.field public static final ACTION_ACCEPT_GROUP:Ljava/lang/String; = "com.vkcoffee.android.ACCEPT_GROUP"

.field public static final ACTION_DECLINE_FRIEND:Ljava/lang/String; = "com.vkcoffee.android.DECLINE_FRIEND"

.field public static final ACTION_DECLINE_GROUP:Ljava/lang/String; = "com.vkcoffee.android.DECLINE_GROUP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x1fe

    const/16 v7, 0x1f5

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 27
    const-string/jumbo v2, "com.vkcoffee.android.ACCEPT_FRIEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 29
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v2, "notifyId"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 30
    const-string/jumbo v2, "uid"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, "uid":I
    const-string/jumbo v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->verifyToken(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "uid":I
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "nm":Landroid/app/NotificationManager;
    .restart local v1    # "uid":I
    :cond_1
    new-instance v4, Lcom/vkcoffee/android/api/friends/FriendsAdd;

    const-string/jumbo v2, ""

    invoke-direct {v4, v1, v2}, Lcom/vkcoffee/android/api/friends/FriendsAdd;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/vkcoffee/android/NotificationButtonsReceiver$1;

    move-object v2, v3

    check-cast v2, Landroid/content/Context;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/NotificationButtonsReceiver$1;-><init>(Lcom/vkcoffee/android/NotificationButtonsReceiver;Landroid/content/Context;)V

    .line 35
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/friends/FriendsAdd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 44
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "uid":I
    :cond_2
    const-string/jumbo v2, "com.vkcoffee.android.DECLINE_FRIEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 46
    .restart local v0    # "nm":Landroid/app/NotificationManager;
    const-string/jumbo v2, "notifyId"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 47
    const-string/jumbo v2, "uid"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .restart local v1    # "uid":I
    const-string/jumbo v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->verifyToken(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v4, Lcom/vkcoffee/android/api/friends/FriendsDelete;

    invoke-direct {v4, v1}, Lcom/vkcoffee/android/api/friends/FriendsDelete;-><init>(I)V

    new-instance v5, Lcom/vkcoffee/android/NotificationButtonsReceiver$2;

    move-object v2, v3

    check-cast v2, Landroid/content/Context;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/NotificationButtonsReceiver$2;-><init>(Lcom/vkcoffee/android/NotificationButtonsReceiver;Landroid/content/Context;)V

    .line 52
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/friends/FriendsDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "uid":I
    :cond_3
    const-string/jumbo v2, "com.vkcoffee.android.ACCEPT_GROUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 62
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    .restart local v0    # "nm":Landroid/app/NotificationManager;
    const-string/jumbo v2, "notifyId"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 64
    const-string/jumbo v2, "gid"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .restart local v1    # "uid":I
    const-string/jumbo v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->verifyToken(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v4, Lcom/vkcoffee/android/api/groups/GroupsJoin;

    invoke-direct {v4, v1, v6}, Lcom/vkcoffee/android/api/groups/GroupsJoin;-><init>(IZ)V

    new-instance v5, Lcom/vkcoffee/android/NotificationButtonsReceiver$3;

    move-object v2, v3

    check-cast v2, Landroid/content/Context;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/NotificationButtonsReceiver$3;-><init>(Lcom/vkcoffee/android/NotificationButtonsReceiver;Landroid/content/Context;)V

    .line 69
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/groups/GroupsJoin;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 78
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "uid":I
    :cond_4
    const-string/jumbo v2, "com.vkcoffee.android.DECLINE_GROUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 80
    .restart local v0    # "nm":Landroid/app/NotificationManager;
    const-string/jumbo v2, "notifyId"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    const-string/jumbo v2, "gid"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .restart local v1    # "uid":I
    const-string/jumbo v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->verifyToken(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v4, Lcom/vkcoffee/android/api/groups/GroupsLeave;

    invoke-direct {v4, v1}, Lcom/vkcoffee/android/api/groups/GroupsLeave;-><init>(I)V

    new-instance v5, Lcom/vkcoffee/android/NotificationButtonsReceiver$4;

    move-object v2, v3

    check-cast v2, Landroid/content/Context;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/NotificationButtonsReceiver$4;-><init>(Lcom/vkcoffee/android/NotificationButtonsReceiver;Landroid/content/Context;)V

    .line 86
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/groups/GroupsLeave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0
.end method
