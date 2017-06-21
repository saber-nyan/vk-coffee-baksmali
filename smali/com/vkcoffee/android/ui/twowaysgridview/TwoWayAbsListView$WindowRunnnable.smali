.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 0

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;

    .prologue
    .line 1874
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 1879
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
