.class Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 66
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 80
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 98
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 66
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v2, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 70
    goto :goto_0

    .line 66
    :sswitch_1
    const-string v2, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$0(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onSpinnerItemSelected(I)Z

    goto :goto_1

    .line 85
    :pswitch_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$1(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)I

    move-result v2

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 86
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$2(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;I)V

    .line 87
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->getPagerCurrentItem()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$1(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)I

    move-result v2

    if-nez v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setPagerCurrentItem(IZ)V

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$3(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V

    goto :goto_1

    .line 66
    :sswitch_data_0
    .sparse-switch
        -0x5c027f6b -> :sswitch_0
        -0x3d47f45 -> :sswitch_1
    .end sparse-switch

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
