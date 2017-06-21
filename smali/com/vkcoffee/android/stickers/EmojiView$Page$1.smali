.class Lcom/vkcoffee/android/stickers/EmojiView$Page$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/EmojiView$Page;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView$Page;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/stickers/EmojiView$Page;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;->this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 165
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;->this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-static {v4}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->access$300(Lcom/vkcoffee/android/stickers/EmojiView$Page;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;->this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-static {v4}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->access$300(Lcom/vkcoffee/android/stickers/EmojiView$Page;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;->this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-static {v5}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->access$300(Lcom/vkcoffee/android/stickers/EmojiView$Page;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;->this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-static {v5}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->access$300(Lcom/vkcoffee/android/stickers/EmojiView$Page;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 167
    .local v3, "viewWidth":I
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v0, v4

    .line 168
    .local v0, "cardViewWidth":F
    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 170
    .local v2, "newSpanCount":I
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/EmojiView$Page$1;->this$1:Lcom/vkcoffee/android/stickers/EmojiView$Page;

    invoke-static {v4}, Lcom/vkcoffee/android/stickers/EmojiView$Page;->access$300(Lcom/vkcoffee/android/stickers/EmojiView$Page;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 171
    .local v1, "layout":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 172
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    .line 173
    return-void
.end method
