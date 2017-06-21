.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadVideo(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;->val$att:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 892
    new-instance v0, Lcom/vkontakte/android/upload/VideoUploadTask;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;->val$att:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;->val$att:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    const-string/jumbo v4, ""

    sget-object v5, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->p480:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    const/4 v6, 0x1

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/upload/VideoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/media/video/VideoEncoderSettings;ZIZ)V

    .line 894
    .local v0, "task":Lcom/vkontakte/android/upload/VideoUploadTask;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;->val$att:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->setID(I)V

    .line 895
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 896
    return-void
.end method
