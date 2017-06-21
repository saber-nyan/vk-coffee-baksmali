.class Lcom/vkcoffee/android/fragments/GameCardFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const-string/jumbo v0, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$4;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->onRefresh()V

    .line 143
    :cond_0
    return-void
.end method
