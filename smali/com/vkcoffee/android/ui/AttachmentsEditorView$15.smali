.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 868
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iget-boolean v1, v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isWallPhoto:Z

    if-eqz v1, :cond_0

    .line 869
    new-instance v0, Lcom/vkcoffee/android/upload/WallPhotoUploadTask;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iget v3, v3, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/upload/WallPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 873
    .local v0, "task":Lcom/vkcoffee/android/upload/UploadTask;, "Lcom/vkcoffee/android/upload/UploadTask<*>;"
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/upload/UploadTask;->getID()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    .line 874
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 875
    return-void

    .line 871
    .end local v0    # "task":Lcom/vkcoffee/android/upload/UploadTask;, "Lcom/vkcoffee/android/upload/UploadTask<*>;"
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;->val$att:Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .restart local v0    # "task":Lcom/vkcoffee/android/upload/UploadTask;, "Lcom/vkcoffee/android/upload/UploadTask<*>;"
    goto :goto_0
.end method
