.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadDocument(Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;->val$att:Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 882
    new-instance v0, Lcom/vkcoffee/android/upload/DocumentUploadTask;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;->val$att:Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->url:Ljava/lang/String;

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/upload/DocumentUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 883
    .local v0, "task":Lcom/vkcoffee/android/upload/DocumentUploadTask;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;->val$att:Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/upload/DocumentUploadTask;->setID(I)V

    .line 884
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 885
    return-void
.end method
