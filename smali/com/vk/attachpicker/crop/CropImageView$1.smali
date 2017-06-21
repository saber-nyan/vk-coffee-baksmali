.class Lcom/vk/attachpicker/crop/CropImageView$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropImageView;->setBitmap(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/GeometryState;Lcom/vk/attachpicker/crop/CropAspectRatio;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/crop/CropImageView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field final synthetic val$enableTouch:Z

.field final synthetic val$geometryState:Lcom/vk/attachpicker/crop/GeometryState;

.field final synthetic val$isCrop:Z


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropImageView;Lcom/vk/attachpicker/crop/GeometryState;ZLcom/vk/attachpicker/crop/CropAspectRatio;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    iput-object p2, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iput-boolean p3, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$isCrop:Z

    iput-object p4, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$cropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object p5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p6, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$enableTouch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 138
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$000(Lcom/vk/attachpicker/crop/CropImageView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 140
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    new-instance v6, Lcom/vk/attachpicker/crop/CropController;

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v7}, Lcom/vk/attachpicker/crop/CropImageView;->access$000(Lcom/vk/attachpicker/crop/CropImageView;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v8

    iget-object v9, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v9}, Lcom/vk/attachpicker/crop/CropImageView;->getBitmapWidth()F

    move-result v9

    iget-object v10, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v10}, Lcom/vk/attachpicker/crop/CropImageView;->getBitmapHeight()F

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vk/attachpicker/crop/CropController;-><init>(Landroid/widget/ImageView;Lcom/vk/attachpicker/crop/CropAreaProvider;FF)V

    invoke-static {v5, v6}, Lcom/vk/attachpicker/crop/CropImageView;->access$102(Lcom/vk/attachpicker/crop/CropImageView;Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/CropController;

    .line 142
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    new-instance v6, Lcom/vk/attachpicker/crop/CropImageView$1$1;

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/vk/attachpicker/crop/CropImageView$1$1;-><init>(Lcom/vk/attachpicker/crop/CropImageView$1;Landroid/content/Context;Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;)V

    invoke-static {v5, v6}, Lcom/vk/attachpicker/crop/CropImageView;->access$302(Lcom/vk/attachpicker/crop/CropImageView;Lcom/vk/attachpicker/crop/CropTouchListener;)Lcom/vk/attachpicker/crop/CropTouchListener;

    .line 163
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$000(Lcom/vk/attachpicker/crop/CropImageView;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v6}, Lcom/vk/attachpicker/crop/CropImageView;->access$300(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v5

    new-instance v6, Lcom/vk/attachpicker/crop/CropImageView$1$2;

    invoke-direct {v6, p0}, Lcom/vk/attachpicker/crop/CropImageView$1$2;-><init>(Lcom/vk/attachpicker/crop/CropImageView$1;)V

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/crop/CropOverlayView;->setOnCropChangeListener(Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;)V

    .line 183
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/crop/GeometryState;->set(Lcom/vk/attachpicker/crop/GeometryState;)V

    .line 185
    iget-boolean v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$isCrop:Z

    if-eqz v5, :cond_1

    .line 186
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v6}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vk/attachpicker/crop/GeometryState;->getCropAspectRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/crop/CropOverlayView;->initWithAspectRatio(F)V

    .line 187
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$cropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$cropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    sget-object v6, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    if-eq v5, v6, :cond_0

    .line 188
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$cropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v6, v6, Lcom/vk/attachpicker/crop/CropAspectRatio;->ar:F

    invoke-virtual {v5, v6, v13}, Lcom/vk/attachpicker/crop/CropImageView;->setForcedAspectRatio(FZ)V

    .line 190
    :cond_0
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v6}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v6

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v7}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropOverlayView;->getX0()F

    move-result v7

    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v8}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vk/attachpicker/crop/CropOverlayView;->getY0()F

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/vk/attachpicker/crop/CropUtils;->convertGeometryStateForCrop(Lcom/vk/attachpicker/crop/GeometryState;FFF)V

    .line 200
    :goto_0
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 202
    iget-boolean v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$enableTouch:Z

    if-eqz v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 208
    :goto_1
    return v13

    .line 192
    :cond_1
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v5

    sget v6, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    div-float v0, v5, v6

    .line 193
    .local v0, "scale":F
    sget v5, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    mul-float v2, v5, v0

    .line 194
    .local v2, "scaledWidth":F
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v5

    div-float v1, v2, v5

    .line 195
    .local v1, "scaledHeight":F
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCenterX()F

    move-result v5

    div-float v6, v2, v12

    sub-float v3, v5, v6

    .line 196
    .local v3, "xDelta":F
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$200(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCenterY()F

    move-result v5

    div-float v6, v1, v12

    sub-float v4, v5, v6

    .line 197
    .local v4, "yDelta":F
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    invoke-virtual {v5, v0, v11, v11}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 198
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v5}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    goto :goto_0

    .line 205
    .end local v0    # "scale":F
    .end local v1    # "scaledHeight":F
    .end local v2    # "scaledWidth":F
    .end local v3    # "xDelta":F
    .end local v4    # "yDelta":F
    :cond_2
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropImageView;->disableAll()V

    goto :goto_1
.end method
