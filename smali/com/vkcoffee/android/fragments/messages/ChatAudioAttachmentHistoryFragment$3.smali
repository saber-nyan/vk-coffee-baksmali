.class Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;
.super Ljava/lang/Object;
.source "ChatAudioAttachmentHistoryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->showContextMenuFor(Lcom/vkcoffee/android/AudioFile;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

.field final synthetic val$file:Lcom/vkcoffee/android/AudioFile;

.field final synthetic val$values:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Ljava/util/List;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;->val$values:Ljava/util/List;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 219
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;->val$values:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "enqueue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$3;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->access$800(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Lcom/vkcoffee/android/AudioFile;)Z

    .line 223
    :cond_0
    return-void
.end method
