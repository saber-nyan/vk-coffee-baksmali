.class Lcom/vk/attachpicker/screen/EditorScreen$9;
.super Ljava/lang/Object;
.source "EditorScreen.java"

# interfaces
.implements Lcom/vk/attachpicker/screen/CropScreen$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->lambda$onCropClick$114()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawingRect(F)Landroid/graphics/RectF;
    .locals 7
    .param p1, "ar"    # F

    .prologue
    const/4 v3, 0x0

    .line 1018
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3800(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3800(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v0

    move v0, p1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public onCrop(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cropMatrixBefore"    # Landroid/graphics/Matrix;

    .prologue
    .line 999
    invoke-static {p1}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/screen/EditorScreen$9;->getDrawingRect(F)Landroid/graphics/RectF;

    move-result-object v1

    .line 1000
    .local v1, "drawingRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/editor/ImageState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmapMatrix(Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 1001
    .local v0, "croppedBitmapMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3500(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/drawing/DrawingView;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/vk/attachpicker/drawing/DrawingView;->handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 1002
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 1004
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3500(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/drawing/DrawingView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/vk/attachpicker/drawing/DrawingView;->handleSizeChange(II)V

    .line 1005
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->handleSizeChange(II)V

    .line 1007
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$700(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/EditorScreen;->access$900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/editor/ImageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmapAspectRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1008
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3600(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1009
    return-void
.end method

.method public onFixedAspectRatioChanged(Lcom/vk/attachpicker/crop/CropAspectRatio;)V
    .locals 1
    .param p1, "aspectRatio"    # Lcom/vk/attachpicker/crop/CropAspectRatio;

    .prologue
    .line 994
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3402(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/crop/CropAspectRatio;)Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 995
    return-void
.end method

.method public startCropCloseAnimation(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/RectF;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$9;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3700(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/graphics/RectF;)V

    .line 1014
    return-void
.end method
