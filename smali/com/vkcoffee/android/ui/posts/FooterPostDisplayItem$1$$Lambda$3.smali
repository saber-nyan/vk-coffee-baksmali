.class final synthetic Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;->arg$1:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;->arg$2:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;-><init>(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;->arg$1:Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1$$Lambda$3;->arg$2:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;->lambda$fail$716(Landroid/view/View;)V

    return-void
.end method
