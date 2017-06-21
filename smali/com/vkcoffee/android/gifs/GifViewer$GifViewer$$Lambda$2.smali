.class public Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/gifs/GifViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifViewer$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0
    .param p1, "gifViewer"    # Lcom/vkcoffee/android/gifs/GifViewer;

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    .line 700
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "gifViewer"    # Lcom/vkcoffee/android/gifs/GifViewer;

    .prologue
    .line 703
    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$2;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->lambda$MR$finish$finish$c53375c$1()V

    .line 708
    return-void
.end method
