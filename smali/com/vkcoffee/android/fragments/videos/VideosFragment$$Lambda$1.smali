.class final synthetic Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;


# instance fields
.field private final arg$1:Landroid/view/View;

.field private final arg$2:Landroid/view/View;

.field private final arg$3:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->arg$1:Landroid/view/View;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->arg$2:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->arg$3:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    return-void
.end method

.method public static lambdaFactory$(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;-><init>(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;)V

    return-object v0
.end method


# virtual methods
.method public onViewExpansionStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->arg$1:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->arg$2:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$$Lambda$1;->arg$3:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    invoke-static {v0, v1, v2, p1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->lambda$onViewCreated$615(Landroid/view/View;Landroid/view/View;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;Z)V

    return-void
.end method
