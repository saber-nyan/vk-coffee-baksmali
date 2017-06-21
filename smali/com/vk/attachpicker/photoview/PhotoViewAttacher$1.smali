.class Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->access$100(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    sget v2, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    if-gt v1, v2, :cond_0

    .line 201
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    sget v2, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    if-gt v1, v2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->access$100(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->access$000(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->access$000(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;->this$0:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 190
    :cond_0
    return-void
.end method
