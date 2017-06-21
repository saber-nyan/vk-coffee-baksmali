.class Lcom/vkcoffee/android/ui/ErrorView$1;
.super Landroid/content/BroadcastReceiver;
.source "ErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ErrorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ErrorView;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ErrorView$1;->this$0:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView$1;->isInitialStickyBroadcast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string/jumbo v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 29
    .local v0, "isConnected":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ErrorView$1;->this$0:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/ErrorView;->access$000(Lcom/vkcoffee/android/ui/ErrorView;)V

    goto :goto_0
.end method
