.class Lcom/vkcoffee/android/fragments/AudioListFragment$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->animateStateTransition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->val$v:Landroid/view/View;

    .line 1166
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

    .line 1168
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$38(Lcom/vkcoffee/android/fragments/AudioListFragment;Z)V

    .line 1169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1170
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1171
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->val$v:Landroid/view/View;

    const v1, 0x7f100173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1172
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$14;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    return-void
.end method
