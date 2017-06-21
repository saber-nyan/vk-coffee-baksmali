.class Lcom/vkcoffee/android/LinkRedirActivity$8$1;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity$8;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/LinkRedirActivity$8;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/LinkRedirActivity$8;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$8$1;->this$1:Lcom/vkcoffee/android/LinkRedirActivity$8;

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
    .line 916
    return-void
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public loadMore()V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method public onDismissed()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$8$1;->this$1:Lcom/vkcoffee/android/LinkRedirActivity$8;

    iget-object v0, v0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 931
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$8$1;->this$1:Lcom/vkcoffee/android/LinkRedirActivity$8;

    iget-object v0, v0, Lcom/vkcoffee/android/LinkRedirActivity$8;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 932
    return-void
.end method
