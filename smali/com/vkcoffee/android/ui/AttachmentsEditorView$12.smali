.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkcoffee/android/attachments/PhotoAttachment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/PhotoAttachment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PhotoAttachment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->val$att:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 786
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->val$att:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    .line 791
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 799
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 801
    .end local v2    # "x":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 793
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v4, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;

    invoke-direct {v4, p0, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
