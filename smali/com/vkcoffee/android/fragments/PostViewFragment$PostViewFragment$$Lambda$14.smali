.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostViewFragment$$Lambda$14"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14$PostViewFragment$$Lambda$15;
    }
.end annotation


# instance fields
.field private final arg$1:Landroid/graphics/drawable/TransitionDrawable;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V
    .locals 0
    .param p1, "transitionDrawable"    # Landroid/graphics/drawable/TransitionDrawable;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2234
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;->arg$1:Landroid/graphics/drawable/TransitionDrawable;

    .line 2235
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;->arg$2:Landroid/view/View;

    .line 2236
    return-void
.end method

.method public static lambdaFactory$(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "transitionDrawable"    # Landroid/graphics/drawable/TransitionDrawable;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2239
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;-><init>(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;->arg$1:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;->arg$2:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$doHighlightComment$528(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V

    .line 2244
    return-void
.end method
