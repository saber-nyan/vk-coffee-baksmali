.class Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatAudioAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string/jumbo v0, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->updateList()V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string/jumbo v0, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$1;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->updateList()V

    goto :goto_0
.end method
