.class Lcom/vkcoffee/android/fragments/ProfileFragment$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$4;

    .line 1439
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$4;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 1442
    return-void
.end method
