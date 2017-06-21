.class Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatDocAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/api/Document;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 60
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "res":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/Document;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    invoke-static {p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->nextFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->access$002(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 54
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->access$000(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;->access$100(Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;Ljava/util/List;Z)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
