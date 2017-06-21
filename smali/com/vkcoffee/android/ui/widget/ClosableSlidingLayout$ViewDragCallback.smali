.class Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "ClosableSlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout$ViewDragCallback;-><init>(Lcom/vkcoffee/android/ui/widget/ClosableSlidingLayout;)V

    return-void
.end method


# virtual methods
.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
