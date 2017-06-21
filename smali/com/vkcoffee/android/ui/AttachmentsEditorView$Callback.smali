.class public interface abstract Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAllUploadsDone()V
.end method

.method public abstract onAttachmentRemoved(Lcom/vkcoffee/android/attachments/Attachment;)V
.end method

.method public abstract onUploadFailed()V
.end method
