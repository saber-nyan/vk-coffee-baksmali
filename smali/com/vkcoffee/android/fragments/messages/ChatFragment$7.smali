.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataUp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final synthetic val$var1:Z

.field private final synthetic val$var6:J


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZJ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->val$var1:Z

    iput-wide p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->val$var6:J

    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 1470
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error isLoading history "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->val$var1:Z

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1479
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$34(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1480
    return-void

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessagesLoaded(Ljava/util/ArrayList;I)V
    .locals 10
    .param p1, "var1x"    # Ljava/util/ArrayList;
    .param p2, "var2"    # I

    .prologue
    const/4 v6, 0x0

    .line 1482
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1483
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$34(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->val$var1:Z

    if-nez v5, :cond_2

    .line 1486
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1487
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$26(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1488
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1489
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$33(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V

    .line 1492
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1493
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$33(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V

    .line 1496
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1497
    .local v0, "var3":Ljava/util/HashSet;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1499
    .local v1, "var4":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1506
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1507
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    .local v4, "var7":Ljava/util/ArrayList;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1509
    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1511
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1517
    .end local v4    # "var7":Ljava/util/ArrayList;
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1518
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->val$var1:Z

    iget-wide v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->val$var6:J

    invoke-static {v6, v7, p1, v8, v9}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZLjava/util/ArrayList;J)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1500
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Message;

    .line 1501
    .local v2, "var5":Lcom/vkcoffee/android/Message;
    iget-boolean v5, v2, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v6, "action_mid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$13(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, v2, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1502
    iget-object v5, v2, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v6, "action_mid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1512
    .end local v2    # "var5":Lcom/vkcoffee/android/Message;
    .restart local v4    # "var7":Ljava/util/ArrayList;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 1513
    .local v3, "var6x":Lcom/vkcoffee/android/UserProfile;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$13(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method
