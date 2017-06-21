.class Lcom/vkcoffee/android/fragments/GameCardFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;->fadeDrawables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

.field final synthetic val$drawables:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$7;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$7;->val$drawables:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$7;->val$drawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .line 364
    .local v0, "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->setCanceled()V

    goto :goto_0

    .line 366
    .end local v0    # "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$7;->val$drawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;

    .line 357
    .local v0, "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->setCanceled()V

    goto :goto_0

    .line 359
    .end local v0    # "drawable":Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
    :cond_0
    return-void
.end method
