.class Lcom/vkcoffee/android/fragments/AudioListFragment$4;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 675
    sub-int v0, p4, p2

    sub-int v1, p8, p6

    if-eq v0, v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 713
    :cond_0
    return-void
.end method
