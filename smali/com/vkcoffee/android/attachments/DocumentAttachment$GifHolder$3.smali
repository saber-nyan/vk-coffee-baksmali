.class Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;
.super Ljava/lang/Object;
.source "DocumentAttachment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

.field final synthetic val$list:Landroid/view/View;

.field final synthetic val$location:[I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Landroid/view/View;[ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$list:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    iput-object p4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 348
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$list:Landroid/view/View;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 349
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    aget v5, v7, v9

    .line 350
    .local v5, "parentTop":I
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$list:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v4, v5, v7

    .line 352
    .local v4, "parentBottom":I
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$view:Landroid/view/View;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 353
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    aget v2, v7, v9

    .line 354
    .local v2, "childTop":I
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 355
    .local v1, "childHeight":I
    add-int v0, v2, v1

    .line 360
    .local v0, "childBottom":I
    if-ge v2, v5, :cond_2

    .line 361
    sub-int v7, v5, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v3, v7

    .line 366
    .local v3, "diff":F
    :goto_0
    int-to-float v7, v1

    div-float v6, v3, v7

    .line 367
    .local v6, "percent":F
    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v7, v6, v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->val$location:[I

    aget v7, v7, v9

    if-nez v7, :cond_3

    .line 368
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v7, v7, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v7, :cond_1

    .line 369
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-virtual {v7}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->stop()V

    .line 376
    :cond_1
    :goto_1
    return v9

    .line 363
    .end local v3    # "diff":F
    .end local v6    # "percent":F
    :cond_2
    sub-int v7, v2, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v3, v7

    .restart local v3    # "diff":F
    goto :goto_0

    .line 371
    .restart local v6    # "percent":F
    :cond_3
    const v7, 0x3ecccccd    # 0.4f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    .line 372
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-boolean v7, v7, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAutoPlay:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v7, v7, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-boolean v7, v7, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->failed:Z

    if-nez v7, :cond_1

    .line 373
    iget-object v7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$3;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-virtual {v7, v9}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->start(Z)V

    goto :goto_1
.end method
