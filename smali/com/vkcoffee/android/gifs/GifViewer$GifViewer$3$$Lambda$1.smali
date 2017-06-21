.class public Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/gifs/GifViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifViewer$3$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/gifs/GifViewer;

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    .line 734
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/gifs/GifViewer;

    .prologue
    .line 737
    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    check-cast p1, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .end local p1    # "var1":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/gifs/GifViewer;->lambda$onPostExecute$638(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V

    .line 742
    return-void
.end method
