.class Lcom/vkcoffee/android/VideoPlayerActivity$22;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->setQualityByNetwork(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

.field final synthetic val$q:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$22;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iput p2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$22;->val$q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$22;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$22;->val$q:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 681
    return-void
.end method
