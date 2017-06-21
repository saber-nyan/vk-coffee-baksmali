.class Lcom/vkcoffee/android/fragments/PostViewFragment$10;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->updateLikePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$lpwrap:Lcom/vkcoffee/android/ui/PhotoStripView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/ui/PhotoStripView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->val$lpwrap:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 1134
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->val$lpwrap:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/PhotoStripView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1135
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->val$lpwrap:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/PhotoStripView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->val$lpwrap:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/PhotoStripView;->getHeight()I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    div-int v0, v4, v5

    .line 1136
    .local v0, "count":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->val$lpwrap:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 1137
    .local v1, "photoStripView":Lcom/vkcoffee/android/ui/PhotoStripView;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$10;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    if-ge v0, v4, :cond_0

    move v2, v3

    .line 1138
    .local v2, "z":Z
    :goto_0
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setShowMoreIcon(Z)V

    .line 1139
    return v3

    .line 1137
    .end local v2    # "z":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
