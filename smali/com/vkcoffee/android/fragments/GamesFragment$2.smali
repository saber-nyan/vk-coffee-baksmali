.class Lcom/vkcoffee/android/fragments/GamesFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GamesFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string/jumbo v0, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesFragment$2;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$100(Lcom/vkcoffee/android/fragments/GamesFragment;)V

    .line 72
    :cond_0
    return-void
.end method
