.class abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;
.super Ljava/lang/Object;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V

    return-void
.end method


# virtual methods
.method protected abstract arrowScroll(I)Z
.end method

.method protected abstract fillGap(Z)V
.end method

.method protected abstract isCandidateSelection(II)Z
.end method

.method protected abstract layoutChildren()V
.end method

.method protected abstract makeAndAddView(IIZIZI)Landroid/view/View;
.end method

.method protected abstract onMeasure(II)V
.end method

.method protected abstract setSelectionInt(I)V
.end method
