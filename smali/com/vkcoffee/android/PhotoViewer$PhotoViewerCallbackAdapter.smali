.class public Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoViewerCallbackAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    .line 1184
    return-void
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .locals 0

    .prologue
    .line 1191
    return-void
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 1196
    return-void
.end method
