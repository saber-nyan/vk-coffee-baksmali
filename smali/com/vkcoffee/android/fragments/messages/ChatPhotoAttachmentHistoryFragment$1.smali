.class Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatPhotoAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->doLoadData(II)V
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
        "Lcom/vkcoffee/android/Photo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

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
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Photo;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-static {p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->nextFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$002(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$000(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$100(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;Ljava/util/List;Z)V

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$200(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$300(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$400(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Lcom/vkcoffee/android/api/PhotoAlbum;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;->access$500(Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 40
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
