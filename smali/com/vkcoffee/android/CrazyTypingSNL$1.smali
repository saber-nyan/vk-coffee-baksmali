.class Lcom/vkcoffee/android/CrazyTypingSNL$1;
.super Landroid/content/BroadcastReceiver;
.source "CrazyTypingSNL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/CrazyTypingSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/CrazyTypingSNL;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/CrazyTypingSNL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/CrazyTypingSNL$1;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "actionPhantom":Ljava/lang/String;
    const-string v1, "ACTION_CRAZY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/CrazyTypingSNL$1;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    invoke-virtual {v1}, Lcom/vkcoffee/android/CrazyTypingSNL;->onDestroy()V

    .line 76
    :cond_0
    return-void
.end method
