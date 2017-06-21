.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->resetTransitionAnims()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$4;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 284
    check-cast p1, Landroid/animation/AnimatorSet;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 285
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 286
    return-void
.end method
