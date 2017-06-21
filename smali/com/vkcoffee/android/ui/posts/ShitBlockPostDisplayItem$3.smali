.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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
    .line 256
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->val$content:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const v4, 0x7f100125

    .line 259
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "maxH":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    .end local v1    # "item":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 270
    .restart local v1    # "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    .end local v1    # "item":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 266
    .restart local v1    # "item":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
