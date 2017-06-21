.class public Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/gifs/GifViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifViewer$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0
    .param p1, "gifViewer"    # Lcom/vkcoffee/android/gifs/GifViewer;

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    .line 684
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "gifViewer"    # Lcom/vkcoffee/android/gifs/GifViewer;

    .prologue
    .line 687
    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;-><init>(Lcom/vkcoffee/android/gifs/GifViewer;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$$Lambda$1;->arg$1:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/gifs/GifViewer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
