.class final Lcom/vkcoffee/android/data/Messages$13;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->deleteMessageLocally(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1204
    return-void
.end method

.method public onMessagesLoaded(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "offsetFromEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    const/4 v5, 0x0

    .line 1182
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1183
    iget-object v4, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    iput-object v3, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 1184
    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v4, 0x77359400

    if-le v3, v4, :cond_0

    .line 1185
    iget-object v4, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v3, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 1187
    :cond_0
    const v2, 0x7fffffff

    .line 1188
    .local v2, "prevTime":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1189
    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->time:I

    if-lt v3, v2, :cond_2

    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v3, v3, Lcom/vkcoffee/android/Message;->time:I

    iget-object v4, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->time:I

    if-gt v3, v4, :cond_2

    .line 1190
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/data/Messages$13;->val$dlg:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1196
    .end local v0    # "i":I
    .end local v2    # "prevTime":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.REFRESH_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "no_refresh_chat"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1198
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1199
    return-void

    .line 1193
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "i":I
    .restart local v2    # "prevTime":I
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/DialogEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v2, v3, Lcom/vkcoffee/android/Message;->time:I

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
