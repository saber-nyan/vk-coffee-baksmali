.class Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;
.super Ljava/lang/Object;
.source "PollEditorFragment.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 146
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mSkipFrame:Z

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAnonymousWrap:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;->this$0:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method
