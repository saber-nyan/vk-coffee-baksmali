.class Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultHeaderTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideAnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;


# direct methods
.method constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    .prologue
    .line 433
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 436
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    invoke-virtual {v1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->getHeaderView()Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "headerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 438
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_0
    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer$HideAnimationCallback;->this$0:Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;

    invoke-virtual {v1}, Luk/co/senab/actionbarpulltorefresh/library/DefaultHeaderTransformer;->onReset()V

    .line 441
    return-void
.end method
