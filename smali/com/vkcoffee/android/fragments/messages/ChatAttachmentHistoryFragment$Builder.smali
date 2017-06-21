.class public Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "ChatAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "peer"    # I

    .prologue
    .line 23
    const-class v0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    return-void
.end method
