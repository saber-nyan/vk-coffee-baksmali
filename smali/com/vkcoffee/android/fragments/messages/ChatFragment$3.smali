.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field private final synthetic val$var2:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;->val$var2:Landroid/view/View;

    .line 992
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "var1"    # Landroid/animation/Animator;

    .prologue
    .line 994
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;->val$var2:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 995
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;->val$var2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 996
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;->val$var2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;->val$var2:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 998
    return-void
.end method
