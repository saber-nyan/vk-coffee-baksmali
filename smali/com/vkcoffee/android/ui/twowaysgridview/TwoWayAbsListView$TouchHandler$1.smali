.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    .prologue
    .line 3674
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3676
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 3677
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iput-boolean v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mCachingStarted:Z

    .line 3678
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V

    .line 3679
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3680
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$2600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Z)V

    .line 3682
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3683
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$TouchHandler;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->invalidate()V

    .line 3686
    :cond_1
    return-void
.end method
