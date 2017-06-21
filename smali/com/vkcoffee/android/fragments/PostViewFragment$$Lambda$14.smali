.class final synthetic Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/graphics/drawable/TransitionDrawable;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;->arg$1:Landroid/graphics/drawable/TransitionDrawable;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;->arg$2:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;-><init>(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;->arg$1:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$14;->arg$2:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$doHighlightComment$528(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V

    return-void
.end method
