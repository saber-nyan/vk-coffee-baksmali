.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

.field final synthetic val$content:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;->val$content:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 312
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;->val$content:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "item":Landroid/view/View;
    const/4 v1, 0x1

    .line 314
    .local v1, "needUpdateLayoutParams":Z
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 316
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int v4, p4, p2

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 317
    const/4 v1, 0x0

    .line 320
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz v1, :cond_1

    .line 321
    new-instance v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5$1;

    invoke-direct {v3, p0, v0, p4, p2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5$1;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;Landroid/view/View;II)V

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/ViewUtils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 328
    :cond_1
    return-void
.end method
