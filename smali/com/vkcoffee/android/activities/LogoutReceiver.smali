.class public Lcom/vkcoffee/android/activities/LogoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogoutReceiver.java"


# static fields
.field private static final ACTION_LOGOUT:Ljava/lang/String; = "com.vkcoffee.android.LOGOUT"


# instance fields
.field final activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/activities/LogoutReceiver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method

.method public static register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    new-instance v1, Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;-><init>(Landroid/app/Activity;)V

    .line 49
    .local v1, "receiver":Lcom/vkcoffee/android/activities/LogoutReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.vkcoffee.android.LOGOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-object v1
.end method

.method public static sendLogout()V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.LOGOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/vkcoffee/android/activities/LogoutReceiver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 30
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string/jumbo v1, "com.vkcoffee.android.LOGOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
