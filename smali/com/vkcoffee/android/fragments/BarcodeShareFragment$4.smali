.class Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;
.super Ljava/lang/Object;
.source "BarcodeShareFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->updateCameraRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

.field final synthetic val$horizontal:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;->val$horizontal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 284
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->access$000(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 285
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->access$100(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 286
    .local v0, "previewSize":Landroid/hardware/Camera$Size;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;->this$0:Lcom/vkcoffee/android/fragments/BarcodeShareFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/BarcodeShareFragment;->access$000(Lcom/vkcoffee/android/fragments/BarcodeShareFragment;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1001a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;

    .line 287
    .local v3, "texWrap":Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;
    const/high16 v5, 0x435c0000    # 220.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    .line 288
    .local v1, "realSize":I
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/BarcodeShareFragment$4;->val$horizontal:Z

    if-nez v5, :cond_0

    .line 289
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 290
    .local v4, "tmp":I
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    iput v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 291
    iput v4, v0, Landroid/hardware/Camera$Size;->height:I

    .line 293
    .end local v4    # "tmp":I
    :cond_0
    const-string/jumbo v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "preview size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", view size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-le v5, v6, :cond_1

    .line 295
    int-to-float v5, v1

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 296
    .local v2, "scale":F
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v5, v8}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->setCrop(II)V

    .line 301
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 298
    .end local v2    # "scale":F
    :cond_1
    int-to-float v5, v1

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 299
    .restart local v2    # "scale":F
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v8, v5}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->setCrop(II)V

    goto :goto_0
.end method
