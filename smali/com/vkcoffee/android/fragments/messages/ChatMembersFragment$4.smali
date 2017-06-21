.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->createChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

.field final synthetic val$originTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->val$originTitle:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 336
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "chatID"    # Ljava/lang/Integer;

    .prologue
    .line 320
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 321
    .local v1, "profile":Lcom/vkcoffee/android/UserProfile;
    const v2, 0x77359400

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 322
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->val$originTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 323
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 324
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkcoffee/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 328
    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v4, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 329
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 330
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 331
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$4;->success(Ljava/lang/Integer;)V

    return-void
.end method
