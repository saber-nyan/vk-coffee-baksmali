.class Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatLinkAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->doLoadData(II)V
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
        "Lcom/vkcoffee/android/Link;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/Link;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Link;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-static {p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->nextFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->access$102(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->access$100(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;->access$200(Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;Ljava/util/List;Z)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
