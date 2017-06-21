.class Lcom/vk/attachpicker/crop/CropImageView$1$2;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropImageView$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/crop/CropImageView$1;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropImageView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/crop/CropImageView$1;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropChange()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$600(Lcom/vk/attachpicker/crop/CropImageView;)V

    .line 169
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropController;->springback(Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableCrop()V

    .line 173
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->onImageGeometryChange()V

    .line 174
    return-void
.end method

.method public onCropEnd()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 179
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$2;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$500(Lcom/vk/attachpicker/crop/CropImageView;)V

    .line 180
    return-void
.end method
