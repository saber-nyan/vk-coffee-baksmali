.class Lcom/vkcoffee/android/fragments/AudioListFragment$15;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->showBottomBar(Lcom/vkcoffee/android/AudioFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$15;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    .line 1215
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$15;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1216
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$15;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v1

    const-string v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$15;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x0

    aput v6, v5, v10

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1217
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    const-wide v6, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v4, v2

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1218
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1219
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$15;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1220
    return v10
.end method
