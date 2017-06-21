.class Lcom/vkcoffee/android/fragments/GamesFragment$3;
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
    .line 75
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string/jumbo v1, "com.vkcoffee.android.games.HIDE_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    invoke-static {p2}, Lcom/vkcoffee/android/data/Games;->getRequestFromIntent(Landroid/content/Intent;)Lcom/vkcoffee/android/data/GameRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/GamesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "visitSource"

    const-string/jumbo v6, "direct"

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->removeInvites(Lcom/vkcoffee/android/data/GameRequest;Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->build()V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GamesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/GamesFragment;->access$200(Lcom/vkcoffee/android/fragments/GamesFragment;)Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;

    move-result-object v1

    invoke-static {p2}, Lcom/vkcoffee/android/data/Games;->getRequestFromIntent(Landroid/content/Intent;)Lcom/vkcoffee/android/data/GameRequest;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/GamesFragment$Adapter;->clearNotificationOnApp(I)V

    .line 86
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method
