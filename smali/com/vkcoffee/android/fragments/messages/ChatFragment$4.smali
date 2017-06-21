.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$15$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$32(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1154
    return-void
.end method

.method public onMessagesLoaded(Ljava/util/ArrayList;I)V
    .locals 9
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # I

    .prologue
    .line 1156
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1157
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$32(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 1185
    :goto_0
    return-void

    .line 1159
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$12(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$33(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V

    .line 1160
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Offset from bottom="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1162
    .local v0, "var3":Ljava/util/HashSet;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1164
    .local v2, "var5":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1171
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v4, "var7":Ljava/util/ArrayList;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1174
    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1176
    .local v5, "var8":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1182
    .end local v4    # "var7":Ljava/util/ArrayList;
    .end local v5    # "var8":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v7, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$15$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1165
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Message;

    .line 1166
    .local v1, "var4":Lcom/vkcoffee/android/Message;
    iget-boolean v6, v1, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$13(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v6

    iget-object v7, v1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_mid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1167
    iget-object v6, v1, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1177
    .end local v1    # "var4":Lcom/vkcoffee/android/Message;
    .restart local v4    # "var7":Ljava/util/ArrayList;
    .restart local v5    # "var8":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 1178
    .local v3, "var6":Lcom/vkcoffee/android/UserProfile;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$13(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method
