.class Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1$1;
.super Ljava/lang/Object;
.source "WikiViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1$1;->this$2:Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback$1;

    .line 95
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
    .line 97
    return-void
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
