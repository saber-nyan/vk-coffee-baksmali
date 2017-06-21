.class final synthetic Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$1;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/gifs/GifViewer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
