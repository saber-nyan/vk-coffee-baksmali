.class Lcom/vkcoffee/android/StatusSNL$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusSNL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/StatusSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/StatusSNL;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/StatusSNL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/StatusSNL$1;->this$0:Lcom/vkcoffee/android/StatusSNL;

    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "actionPhantom":Ljava/lang/String;
    const-string v1, "ACTION_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$1;->this$0:Lcom/vkcoffee/android/StatusSNL;

    invoke-virtual {v1}, Lcom/vkcoffee/android/StatusSNL;->onDestroy()V

    .line 92
    :cond_0
    return-void
.end method
