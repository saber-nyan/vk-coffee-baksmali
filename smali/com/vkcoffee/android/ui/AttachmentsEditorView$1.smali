.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f10014a

    const/16 v8, 0x8

    const v7, 0x7f100149

    const/4 v6, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 76
    .local v1, "aview":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "t":Ljava/lang/Object;
    instance-of v3, v2, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .line 79
    .local v0, "a":Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RETRY CLICK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 81
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 82
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 83
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v3

    iput v3, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    .line 84
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v3, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$000(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V

    .line 86
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;
    :cond_0
    instance-of v3, v2, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    .line 88
    .local v0, "a":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RETRY CLICK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 90
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 91
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v3

    iput v3, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    .line 93
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v3, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$100(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V

    .line 95
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    :cond_1
    instance-of v3, v2, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .line 97
    .local v0, "a":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RETRY CLICK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 99
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 100
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v3, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$200(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V

    .line 102
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    :cond_2
    return-void
.end method
