.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "TwoWayAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V
    .locals 0

    .prologue
    .line 849
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$1;

    .prologue
    .line 849
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 851
    .local p0, "this":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;, "Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 859
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$SelectionNotifier;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;->access$200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V

    goto :goto_0
.end method
