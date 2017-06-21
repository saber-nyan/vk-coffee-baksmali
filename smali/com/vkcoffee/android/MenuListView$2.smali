.class Lcom/vkcoffee/android/MenuListView$2;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$2;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "buffered"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$2;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$3(Lcom/vkcoffee/android/MenuListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 148
    return-void
.end method

.method public onPlayProgressChanged(IIII)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "played"    # I
    .param p4, "pos"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$2;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$3(Lcom/vkcoffee/android/MenuListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    return-void
.end method
