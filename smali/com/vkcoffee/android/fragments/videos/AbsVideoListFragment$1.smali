.class Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AbsVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string/jumbo v0, "com.vkcoffee.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "post_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->removeItem(II)V

    .line 60
    :cond_0
    return-void
.end method
