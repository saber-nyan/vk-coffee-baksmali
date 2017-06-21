.class Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;
.super Landroid/os/Handler;
.source "SearchSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/util/SearchSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Handler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .line 280
    .local v0, "segmenter":Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    const/4 v1, 0x0

    iput v1, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mOffset:I

    iget v2, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCount:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->runSearchRequest(II)V

    .line 281
    return-void
.end method
