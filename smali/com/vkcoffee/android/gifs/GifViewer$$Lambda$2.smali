.class final synthetic Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$2;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$2;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$$Lambda$2;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->lambda$MR$finish$finish$c53375c$1()V

    return-void
.end method