.class Lcom/vkcoffee/android/PhotoViewer$20$2;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer$20;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/PhotoViewer$20;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/PhotoViewer$20;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$20$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$20;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$20$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$20;

    iget-object v1, v1, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget v1, v1, Lcom/vkcoffee/android/PhotoViewer;->curPos:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->onPositionChanged(I)V

    .line 1002
    return-void
.end method
