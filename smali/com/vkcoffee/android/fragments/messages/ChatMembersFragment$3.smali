.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->loadOnlines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "onlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ChatUser;

    .line 289
    .local v0, "user":Lcom/vkcoffee/android/ChatUser;
    iget-object v3, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/vkcoffee/android/UserProfile;->online:I

    goto :goto_0

    .line 291
    .end local v0    # "user":Lcom/vkcoffee/android/ChatUser;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateList()V

    .line 292
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$3;->success(Landroid/util/SparseArray;)V

    return-void
.end method
