.class Lcom/vk/attachpicker/widget/TextureVideoView$5;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 403
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1300(Lcom/vk/attachpicker/widget/TextureVideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2, v5}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$202(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 405
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2, v5}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1002(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 406
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1400(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1400(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$700(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    :cond_1
    :goto_0
    return v6

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 426
    .local v1, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_3

    .line 427
    const v0, 0x1040015

    .line 432
    .local v0, "messageId":I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040010

    new-instance v4, Lcom/vk/attachpicker/widget/TextureVideoView$5$1;

    invoke-direct {v4, p0}, Lcom/vk/attachpicker/widget/TextureVideoView$5$1;-><init>(Lcom/vk/attachpicker/widget/TextureVideoView$5;)V

    .line 434
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 445
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 446
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 429
    .end local v0    # "messageId":I
    :cond_3
    const v0, 0x1040011

    .restart local v0    # "messageId":I
    goto :goto_1
.end method
