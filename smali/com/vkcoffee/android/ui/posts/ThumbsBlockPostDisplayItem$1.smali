.class final Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$1;
.super Landroid/widget/FrameLayout;
.source "ThumbsBlockPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$1;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$1;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method
