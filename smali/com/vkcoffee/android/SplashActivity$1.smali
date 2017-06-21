.class Lcom/vkcoffee/android/SplashActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/SplashActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/SplashActivity$1;->this$0:Lcom/vkcoffee/android/SplashActivity;

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    sget-object v0, Lcom/vkcoffee/android/SplashActivity;->STOP_SPLASH:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/SplashActivity$1;->this$0:Lcom/vkcoffee/android/SplashActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/SplashActivity;->finish()V

    .line 21
    :cond_0
    return-void
.end method
