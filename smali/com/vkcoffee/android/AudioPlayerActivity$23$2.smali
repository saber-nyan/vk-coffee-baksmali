.class Lcom/vkcoffee/android/AudioPlayerActivity$23$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$23;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

.field private final synthetic val$bg:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$23;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->val$bg:Landroid/graphics/drawable/Drawable;

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 968
    invoke-static {}, Lcom/vkcoffee/android/Global;->isTouchwiz()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$19(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$23(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 979
    :goto_0
    return-void

    .line 972
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 973
    .local v0, "drawableArr":[Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->val$bg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->val$bg:Landroid/graphics/drawable/Drawable;

    :goto_1
    aput-object v2, v0, v5

    .line 974
    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v4}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$23(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v0, v2

    .line 975
    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$NoPaddingTransitionDrawable;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/AudioPlayerActivity$NoPaddingTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 976
    .local v1, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 977
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$19(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 978
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 973
    .end local v1    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$23(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1
.end method
