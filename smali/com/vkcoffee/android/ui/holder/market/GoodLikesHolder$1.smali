.class Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;
.super Ljava/lang/Object;
.source "GoodLikesHolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->bind(Lcom/vkcoffee/android/data/Good;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

.field final synthetic val$likeCount:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iput p2, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->val$likeCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 53
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 54
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoStripView;->getHeight()I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    div-int v0, v1, v3

    .line 55
    .local v0, "count":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    iget-object v3, v1, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->val$likeCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;->val$likeCount:I

    if-ge v0, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setShowMoreIcon(Z)V

    .line 56
    return v2

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
