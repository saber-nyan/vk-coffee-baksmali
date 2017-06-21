.class Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;
.super Ljava/util/ArrayList;
.source "ChatAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;
    .param p2, "x0"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->access$000(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatPhotoAttachmentHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->access$100(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatVideoAttachmentHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->access$200(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->access$300(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatDocAttachmentHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;->access$400(Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;)Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$1;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method
