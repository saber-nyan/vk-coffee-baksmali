.class final synthetic Lcom/vkcoffee/android/gifs/GifViewer$3$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/gifs/GifViewer$3;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer$3;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer$3;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$3$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/gifs/GifViewer$3;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer$3;

    check-cast p1, Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/gifs/GifViewer$3;->lambda$onPostExecute$638(Lcom/vkcoffee/android/ui/animation/MovieDrawable;)V

    return-void
.end method
