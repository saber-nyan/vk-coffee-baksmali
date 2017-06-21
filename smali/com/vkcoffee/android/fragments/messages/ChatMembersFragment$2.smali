.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->lambda$updateChatUsers$438(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1302(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Z)Z

    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$700(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    move-result-object v0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->setEnable(Z)V

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->replaceChatUsers(Ljava/util/ArrayList;)V

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->build()V

    .line 243
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1400(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Ljava/util/List;Z)V

    .line 244
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$2;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1500(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V

    .line 245
    return-void

    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    :cond_1
    move v1, v2

    .line 240
    goto :goto_1
.end method
