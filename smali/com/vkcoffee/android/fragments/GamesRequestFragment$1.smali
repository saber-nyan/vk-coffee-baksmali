.class Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GamesRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/GamesRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string/jumbo v0, "com.vkcoffee.android.games.HIDE_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$000(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$100(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Lcom/vkcoffee/android/data/Games;->getRequestFromIntent(Landroid/content/Intent;)Lcom/vkcoffee/android/data/GameRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GamesRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/GamesRequestFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GamesRequestFragment;->access$000(Lcom/vkcoffee/android/fragments/GamesRequestFragment;)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 46
    :cond_0
    return-void
.end method
