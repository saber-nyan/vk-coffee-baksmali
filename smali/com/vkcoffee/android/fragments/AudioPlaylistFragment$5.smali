.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->animateStateTransition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f100172

    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->val$v:Landroid/view/View;

    const v1, 0x7f100173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$502(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Z)Z

    .line 286
    return-void
.end method
